Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAAF829AAE3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764697373; cv=none; b=jSziJG9Wo7cJk1ALSqelNWsgNB2V3+sfz/jvwHkza1Mz8Y52G8x2LlBVDt/7imguDTxSEyy0VnGi4G7WThX9+InUl5hR4di6RWA99rQXJV8l0W07ZW2IfvvPK335prIkbII5HiBhsZpK3xI06ZF9q3NhEV06hxzb0IdZsDoZICA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764697373; c=relaxed/simple;
	bh=jzxo7h99LfcPqTpzaZYjr0HxGIpGwbchiGEO3/t5W+M=;
	h=To:Subject:From:Message-Id:Date; b=KCCua8Tw06HxDYoUkwOmQ3KUWWc8IeskpDovMx82TnlUJIZSpqSmrdAj5j8oAaoYhFMHS7QicMTOPMJddUq7ehJVQnVnbbdj3edPPTI/63SlMkgdr2BweNrtMl+aBObgFiUsGhGOpxwHBsYfvpjPylO+15W+oTXkYK5/lhW3FZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6xPs/HP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6xPs/HP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FA0C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764697373;
	bh=jzxo7h99LfcPqTpzaZYjr0HxGIpGwbchiGEO3/t5W+M=;
	h=To:Subject:From:Date:From;
	b=j6xPs/HPiJq6BrJsEeN/V7rVioKfxIi6Ri1T2+QjjMApwyMbKLbwB1VDoUfBDRLAK
	 fv8/w6ElxEvlyiCO1veH/9YCWeRflduVl65XRHquuEPbTPv12OuWgpeiaOS+c4dwIJ
	 Iy/iUK3M1nVoxZsLZwsiGRDVk8BpayAZHW14wkgT25ID1xZsGKAy6NTsASfGEdhP8V
	 /izVPh/OJBWxM3cus+sEe/fqXm426NMriopJEj0jLSS9uhDLvTSKHQgVkwL/bQWPy4
	 xPTnmSWj208PT+WX65tbQGXBoeJXbXBIW/swpZWf5bKhrhW7kp8bfKWQrInEuDY5Y9
	 j6HGSa8IlmO/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9250BD1171B
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469737358.11324.18060361788276727900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201da90c55ec5309ab1d5356adb5da6d4e19b96d6704a814368f9e6b31914c3c
Date: Tue, 02 Dec 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764697373
