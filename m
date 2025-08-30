Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CD4223DFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756568994; cv=none; b=L158iqWuP6NH4xLAlH5vQOwWhyDdvOWXEOXXPD25ZYzjNB5yGPnEPdktBLXGaUKsmwmn46PiIis4wKGiDSCjfcWx//3vMwlm9CQFn2lSAZXWbYuah1aOHpbyK1DevyuZ5vM8UPToR2cyp877QKl+vrRXZemQsNCH74Q/HLv32Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756568994; c=relaxed/simple;
	bh=5LUYnljzsiWvVr6T6WL5UaQVS/YKN4eGSnBLN7rAI0o=;
	h=To:Subject:From:Message-Id:Date; b=MO+9O46Yuo4E3s0bUKjSn43VL9fvWE0qUE9/foVV0JuKbsGI1IMh6JoLzi+zn/+ALqE67Syq28CL7AXWdTiAAUy1ZdRj8f+1NeZOG9NtfLbWy5UmP2pDQRc1i4Am28elc/+Q0j64Bi1jaoCdmf4suRWH+Yzqwzkdb/vSsBcX+vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZoFx7+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZoFx7+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1643C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756568993;
	bh=5LUYnljzsiWvVr6T6WL5UaQVS/YKN4eGSnBLN7rAI0o=;
	h=To:Subject:From:Date:From;
	b=bZoFx7+YBNsCdFGbtFvb+us79RWTFkIHxPR/RDMiNH+lpAU4YHNDjVfpfG32jAURv
	 p98RtqKf+aEGiAgD/MD1JZjzaBQAI8sueGVRZPP+clRs+6x2fORNZkMffcRQaNBxpD
	 UdmNZPaxc/b5SH3RCliIaSKA0IygZWtjumIB1OVhH/L1L6QnD/IU9tyW6YGyMUSsUR
	 TfDGHKf1oJi9l4v3UnVjb5gRJ/Y44/Ypt6OWm/d1M+7rHrnciWh/+nYn/vQUOWWhw3
	 Zej8SQH51LN1UMM4n7pdZfngMFS/iOkc1u/ycntkFavkUxaJz+KttFzdh9gdo3S5nD
	 gwxX0SHqh3Ijg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9144BCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656899358.3242.14396003889091230549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcff1eaf56e616c15cc6dbeb4c0066d40040dbce54fefd792f4c1bda62a4992a
Date: Sat, 30 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756568993
