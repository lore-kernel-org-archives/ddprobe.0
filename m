Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B39C3A16A8
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791891634; cv=none; b=m5GX9bIykx0fgybY57kaew6PTUAXsQd1j3DbZa/7l5QNcoB4d8INHGBUVJSt8g7FjAHnrPXWXC/HGPBd1uNpvJSf8Ht6vlLdVvSDYwrZD68AjofL5LZ0m9p6f91MPxHXHVFGf46RHVzdeXWLpKs5EAY2Ze0JrBO2MScgz1efbL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791891634; c=relaxed/simple;
	bh=6lbapkwr20ck3S/vpdOYUY1qlOMVOhc0RurLLOx8d30=;
	h=To:Subject:From:Message-Id:Date; b=M28DLm6T/+jaBc8M4Qe06ybmWfGKKOTz3kMQloyXSenxdnCBfemZnUf27E+qScLq0fBNOrC3JF456IIhiLJGbzjaIV8djcD0T2l6XitNB7HWwJfsFaPGCBLwTUJUjz/n6G/KA1QowkJGxdBnz36gqEOyEgVGbBi27a5+rPOoMEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIyIbf56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIyIbf56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2369C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791891633;
	bh=6lbapkwr20ck3S/vpdOYUY1qlOMVOhc0RurLLOx8d30=;
	h=To:Subject:From:Date:From;
	b=XIyIbf56v2o4M4XVT9wZPPyTC7hyXDveexl5hKI59C8sAfTklWz39UyQ7R0GzNMZ5
	 h84NATqMJLTY2BkbZ1LlQVwSWNgXOdITA7WiZwj07cF544hDUOKXyhWgEH9BQxj2R7
	 xhrD/kWMKRlIWFfMjk9F7lsywtMgP8ihVpwlDPWUtbwkgX9NuZp87EAi09IObIzCVM
	 DNlIdUxyurF+CdfOX4AHYP60x9pBJ37Iotqh8tomCLa4SYidgYGxsLAgOCRCd0tcHR
	 QLdSDV0P1yW6RZAexrX6/ZEZLzlpDty/bESz4nQiTPTeFpgKG0BnfT3dNC+sRAQKTF
	 eHM2fyJ/iW9+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF69CA9ED2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179189163369.4561.5284974338417093302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fe7ca4ed39b34ef492e71e88fa92236b42b8b55b694023004a4234e774e2054
Date: Tue, 13 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791891633
