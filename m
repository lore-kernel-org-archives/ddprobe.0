Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7C11E487
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746156594; cv=none; b=Y9bA95pFZxKdRad6qTAisHLOfKRX9HJzqstKbfYPeqZltgP+UFSPCNF+w6J/wPVw+LdK30Zc97fe4ppHtQNevSB7mKz6T3esJ/vj5zx/9PfobIOcuGNYAe0Dz+cYua+fF+clGD9JhgJxChPEkN5emxQnnVfOgABEWk/u92B7Udk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746156594; c=relaxed/simple;
	bh=HLFCk5N7qcSPkB9Qe7TfsGbjBAODS6+44cE0iLEsHjc=;
	h=To:Subject:From:Message-Id:Date; b=IkE9qaAyHTlP+Yz0rXUilosNBvpLa8ZwSdWKorq8tTzKhDW7OMH9lbxTP6nxaIpu8uvDjD9XHXF8P1oxuM245ihQ19bN6VD8dW+3r+9EtkyCdTc5vDs6csWlfISDOnqM6OxdM8+GX9fIg7n2S0v0nk0ox2BnY5TT+iFsXDlAxzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtdKd72/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtdKd72/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1801C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746156593;
	bh=HLFCk5N7qcSPkB9Qe7TfsGbjBAODS6+44cE0iLEsHjc=;
	h=To:Subject:From:Date:From;
	b=OtdKd72/3RjN/KrGJ5230NcDP0BcsN043i/sBk8mJ9teMZV+oyo5ZWFa5HKzjyMNS
	 R0++p4pFOYFPonED0e8DF8ZZzri8Iw0CJq4I2MHVtt3KEdeH7eQu7RtPQ/O2fAJ0oS
	 KCVT8Arjk2tjrMGENI7+owfKPwk3yf863Asjyogopig9maFjHVwYo6cCZb7BRzKbLc
	 r2QD74v4GRCf+j8lVMjRhC2yeiIfo5f/x/Qxv47uUdHbIKU6NZ7YSTjzahWcv5/F75
	 ONyrzqS3Qc6ji0M1+HliDYR4+YGeBfO7OLqj483Bl/JliKnISMkIFHbtE/C6hwwe62
	 DuyVURC1cd3lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94749C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615659357.20950.9038611893062817011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ae56686d0c70fb4e4ae318e370443d0fbed72e572214b6502045dad8a7c37cd
Date: Fri, 02 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746156593
