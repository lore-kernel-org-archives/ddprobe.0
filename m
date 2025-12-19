Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236791F4CBB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766136834; cv=none; b=IgEinl1yAPPru8ioqYyLtpPtW43qmc54Z8E06AzzJgdABCUykF/ZOMB6VqAOkmpeXly+0F26eQzeXb7ZXktP0CPRkgOXx8yp/ti1GV+rT9r2JRjncUdBcZ7eXPuPK5E+C1qvBtPdDL7fUIFgW+SoHs62iH7tXBeR8wPChnckSPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766136834; c=relaxed/simple;
	bh=eWaQFiOSZTAMwHVzwuYt8OL6kh0eYekzrZ578Sy1SyQ=;
	h=To:Subject:From:Message-Id:Date; b=VUHxH+iiRGT2oiFJWMpdDVd2WQdhM7gO0KBEHMY2tC3Xg4UW+xanuMSgiKeFV+8oiMMM5t9T3qujHTyrgwDqIFDUMiTryIUm/vM3roM3y+rKROzKPGvJzC0sScSDLRxL7nCYYjbj4nGnp8Sno22qxt0ArStc8jj+fX3G+tBtxI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIfBy5n/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIfBy5n/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A234FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766136833;
	bh=eWaQFiOSZTAMwHVzwuYt8OL6kh0eYekzrZ578Sy1SyQ=;
	h=To:Subject:From:Date:From;
	b=SIfBy5n/b5Hs5x76KDUMg5xPxlon/3Hb12bA0nAEkmhAvPNiKB1puz4XJj8SCM9vo
	 ZUgp1EbxpfmKLE8xKpOuF5JN7HdYX3SEoKbfwv7NZQcAVSIIYHivRxJWchEoU/cSPM
	 BrLj1Eeh4EQ7Qgtl/t5J2P6pQ457gaPk0PSndqBlsbKlOm8OAO/E/szHxroXBTLF1k
	 ZRjyu9Pe71CNxMLchwMw2+QRDvqdolq/SN3R4dFfloKQZEtK3FF/VwXkP41nr8uQRU
	 mZ2MSc5b3nib9vnfFud58MV0bf4qozNUNtAdEALRoIg/SvBuWCN0Q7vDjayvAs//mP
	 B9f7SW48WzRig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C8DD7496F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613683359.30544.10255853301320267184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b6d511267330ec22eaace213d8cd5dca509ff546533cee9b46bd3fd44b15a5
Date: Fri, 19 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766136833
