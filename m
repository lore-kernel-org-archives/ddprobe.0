Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FB9173
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727008554; cv=none; b=d0af3IVRqmknm5HbzXYkkUXxx9cnBkxCUaCEn21nRsOkOIGMio2DqO3z1dWslbONDLVzRhSeqRTs3eyWJ66Kb7EcwhquYUHnuYbVBnR3ZBu96FDuHVfRrDqbuIVuL4w7XaDID7A+VknRc99BXUbwbtvuDgw81M1GZJu5pwgAs6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727008554; c=relaxed/simple;
	bh=ZIlr76Cjl9vVsYH/qwlyc1Rf4xwS5PsOTpgq9Bkplpw=;
	h=To:Subject:From:Message-Id:Date; b=IKTrMgSDh4MRSeFdcawYKa6AikMWdMwOB6ODxWgW1MZTTGhSthuclGg5Cpw0blKlLCDEF1c+HlR1iX5jtjHoJcfzmyNEGEWNfgqpvCTYTm2y1FmBvCQUgn8Btvrv1/1pQDs4vYEqrzHjKBqwhs3Lbfd807p+2qrpN4zPQcPytjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBC0DT9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBC0DT9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B824CC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727008553;
	bh=ZIlr76Cjl9vVsYH/qwlyc1Rf4xwS5PsOTpgq9Bkplpw=;
	h=To:Subject:From:Date:From;
	b=hBC0DT9mx1AmCgaIgcL6tZu8s8Na2IC+1MzwCcjK9NyBeTBmriOTs+dhW/65lPBRb
	 QsEmGVGgXi0NK9gWzokq7FO+PNkDxULlrjINGzzCZMmLVMfeUH/ZVtrRbZ7iDlaI2a
	 9eHyc4B8LP0cudQl+Y346RduPJ1IMXHhvSYPxUHK59TqrD3X7eHtobTUyWMQK1pRFW
	 VsVZUoVvr2+I7w4MlZpVz/1v2rDVPGGBq+2/DJdcD5Vefxr5xoQT2LtUfDB2sFbb4z
	 e/T1SFG9ne2TuQOSC9YVLJbVxXMKtW09R1nrD/wZo5uHP6Jv61ggwHR/GqVd5IrMg0
	 hxW1FxAe2jNYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A275ECF9C6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172700855358.12086.3185747242904986048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5074c5d4abeefeabc4a5e28ba3842759f52951d1e943f502c9f3090d2380aec
Date: Sun, 22 Sep 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727008553
