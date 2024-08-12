Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25852188CB0
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723485954; cv=none; b=Y0Zd4xpKwsoIpVEzKZ2jiT/S/G36QTaiYBlex8WekdI3hiX4ODQRa2dHqTqKTW+tcy/mdMVFH9NSNPh/lhG6vwoCfKhrP5ztZCJKJ8fiB9GXUd17w4gRlObtd5NnEVBUw7XSf8P/e41YQsobDj4xfS8R5/twKbgRGASk9cj1X/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723485954; c=relaxed/simple;
	bh=+QPVoy0aGBLFKj/YeCLObnhw586MalWFW0YUMRRclrM=;
	h=To:Subject:From:Message-Id:Date; b=BH7+UVzvadnJiZ4YRr2i4jluuWjzcEbdOtKBgSPP5tfyuvLYgo0sUbY6NHEt792M5PliBneWVJuWj54twK6jL/Ir2Xu5jKrGaWGZZ822jygNS1oryel9+AsYJ2UCyrekJjg5/xNKfsYQj4Zmw+vmfMw/jM5Ua1pyEHwYbh60+hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ll14DNzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ll14DNzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0C3C4AF09
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723485953;
	bh=+QPVoy0aGBLFKj/YeCLObnhw586MalWFW0YUMRRclrM=;
	h=To:Subject:From:Date:From;
	b=ll14DNzL3Zaod99tpM4n0oRyWxApVEmfnuXzY3Pi+wNew50dRfbNZ0MGe25zqK4eS
	 2fH09XLr2zBhdEhqfrYl40vRf6YuXRKRTTP3yqncmUc/eMn21zVt+e/QOacvRUIUi7
	 r4ny4t7wi6Atj+dn8p7KJDV/lcj45KnxrfSn0icghVxoxbjDNF/pD1C7U/nd+Ag5W4
	 aZr8mDpRyCZlIhBBvoU5SNzoKBeOWMAzaZ6vCghXsJOWq6YlZjzojCZxC736tVWwbn
	 tywicZx2XMP5lLDTNKL8/MzsMyKr15jUD9lXbwLB/eln0MPewdxt8ZwaZJwaYUeTYS
	 1RaQnfKuo8H+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A860C52D7C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172348595361.28987.12904847937164862376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508fd509779732d108a6e3c9a10a1c2d34778ab492b1721e375c96f12ef768a1
Date: Mon, 12 Aug 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723485953
