Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DEE36215D
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790451634; cv=none; b=PxET/I/QY9bqjBeTMfDEVNYbEKjjMi4OcCIbZA1zKYjiPAeYW70zquGiO9ivQk7OPWIztheZiMBP7D2cjFP7vCrRt21rsjfPWdt0JXP9Hq5XA3xhP05a9EJJDHVPfwI5DT2xKyihIKMMJ9VDtWMYGnuknFYx8+cXVGGcLJIL8VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790451634; c=relaxed/simple;
	bh=8Z6hi1aMAkhemRRSHsSQ/Vcx8k3NMIcaWtgxDSfrVYI=;
	h=To:Subject:From:Message-Id:Date; b=fWF2DyWWtADX3e7p0cKyBnXEK3iNm7c13MOriP4jumBQi94F0S5APZf9HzNi45pU4yMkUwgiDm1U1ceXE+a+GDD1phDTJZv1ayNUk0DOrUD7MREZSKG2Kl7aS5nLzLjS6MIP2gRTZn0gGTIrcv6SM7KsSTK2DPIaIXupCY6GwQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDPrYhex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDPrYhex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D592EC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790451633;
	bh=8Z6hi1aMAkhemRRSHsSQ/Vcx8k3NMIcaWtgxDSfrVYI=;
	h=To:Subject:From:Date:From;
	b=LDPrYhexJUze9x5+Rp4tglp9Dzr5fPiOCODy4eH32kANdsfAWLA3VLLWCVPDtEbRk
	 AZnUfTl2qs+e29PnH41IwlGVCd0mH/X8dpAMAgh1SBOcwBDyDVm4QDA3qp3rp8Giz1
	 TQBsbjHcco6DvDLC34J6CU63EirSZl5+/CMBjXmFEh7O7bwvH25QEMtEKsuqo/cnV4
	 HfV2U4WWFydDi4cULV7PC2XwP+1Jxn0hEKfjqg0KmNsfsqviQZq9rwgiWkHxZT0ARH
	 NHZi+5UwxNFLK3Vl0pL9sdRvIU0tR2mvxizsh/2p+AaZltPQHnJ98hCRVlq6qjDP1G
	 pfK98p22REFWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E43C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045163369.15753.15684170772610682659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a7a98585778efd24d8c02927d8225a23dfe5f24ba654c228d3af2e1e1de27c
Date: Sat, 26 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790451633
