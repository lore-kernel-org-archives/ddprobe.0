Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBFB347529
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788484834; cv=none; b=GWkhLvIWwuMSnns+D0TQtU6wRoTJUEL5MFIt4XLs6amrmUMyC4x2Xm3S7Z3wGOOFCTOzu31KUSyllrdUQuZ8E7JZrqwC+it4dOqRGAMpRReP24hqPPkd0g3Pk5BYc6V1LS4i+W8ltDpmCjpva3UNDEtFmgPtDKleixDWAGqxmNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788484834; c=relaxed/simple;
	bh=Ns1/6hLFtYh/okZ4Enx+yhv9esCvGfphFF54xB+pNDY=;
	h=To:Subject:From:Message-Id:Date; b=MkTP45C/pDeDfz/R/paK/eitC6lKe2w1YYc/esNicHuWD/38d27ZDVnPNWtBMqOLSYOVFs/k72fR6wnelU6pGMvFw64/veg/FJ5JEYyQnP73efugqmLiReGxSCnqPAZyX0hibrR5+U1NqCBcuulyEL8n4cFp8hqMEK/WgS2niP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nii6b0og; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nii6b0og"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC43FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788484833;
	bh=Ns1/6hLFtYh/okZ4Enx+yhv9esCvGfphFF54xB+pNDY=;
	h=To:Subject:From:Date:From;
	b=Nii6b0ognt8glw4fN28oJ4ssqwEmXqIq8gRVYhsiryEk/gSt0N0LcNXGYHJrPo70A
	 BPRQD6KpxJaOnP1ylv+3Q9iYMsBqz0o5sYBrKTeA/Kfxyy/1fFw4bQJF+fm0iM8iD5
	 SOx1DtH1jBFPi+2Ut5jaWiqdAdJR+YNGlbUQMT1dwV/bzZPaOoQPM0Xe89n+0eeZcr
	 d83NHR3b1cSOhQEDuz5JzPI0r1GaCMDJXpsuSxOqi8PFH2jaM+1ZhiZrjPB8USIRDX
	 WAE0Pspd8oU2zlcRMVOyrx0sB8AfuPDG0D3lykZ5mKQKzACtpjbPk2mghWC5KVhnKh
	 VNl7LOFRgHeFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1D4C61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848483369.12605.6728645896317875451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e5b23623795acec054118c157f4f9b3f07c932e8fb17a45ff7611c453ab1c9
Date: Fri, 04 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788484833
