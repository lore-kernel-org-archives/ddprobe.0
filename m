Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C8C190074
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 13:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727703954; cv=none; b=Z/BtESE+x6+x7IkUayFs3Aqd/yBVEDM0zghknh2oVuHUtpoTqu74w66xHYyvGri+93UnVfoYebVX34YSzRdB4sqL4S/L/1XOlMeqF0WWEEXQCqa9kT3Qtl6Ndf1pbYTZBCIT1xpoKCB7k3ZjaIJuUY2UtHbkp3HYKD4nrAm0JeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727703954; c=relaxed/simple;
	bh=C3Dgqs2r7bQ50u7BmnBuryKmCorwD1VFOOBNeEEdQi8=;
	h=To:Subject:From:Message-Id:Date; b=nWVJ16lPz+W/PFz8XtCys6s3QQnLWWRCMttkF1Y2dqoo5Teo0FxYbiQymsuyE/8AynNzv39GGtFWgpIslUvsigDwdryidUHJtJ9zYDjheaNS3b95BTW2vcHP8OyoKvDR3iLt1Iy9RM5fcXchZmEOFHQR5VcHJukCES/R+bUcjkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDQjlPVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDQjlPVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3690C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727703954;
	bh=C3Dgqs2r7bQ50u7BmnBuryKmCorwD1VFOOBNeEEdQi8=;
	h=To:Subject:From:Date:From;
	b=eDQjlPVNA02a7qCHppQ2Tw2kBCmdbrOATjsuw9DEjEFgD1kLqE2phAK6T/GYSLW/X
	 j5R2yQxSbqx2aDr3ralmOlZnTJYlB0u4qNp6FaTzd3gcaT3bv6sDuHkZe4wXE77erG
	 O0RAI9VM/mVG/p/HCi0fzhW+lCTHtMikPAoqb4q4Pi7NqWnj/IEIsh65cXE2L0ppXx
	 V7MGNkTdFHtrAzmJc3mrG2kaKd3nyU1MVoIztyyBK+MOZoz86RvzgtFU5ikM7vl0m5
	 GSwkEtHmj+ySSmncy9qGgYOFi/ACuvtzSeUfHP5EScl5dGP6z5ULKLpgPxoCsdFjS2
	 VbVgFt71VmTsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCE5CE8348
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172770395363.13089.111808576866595262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba913c97f3172799e590f9b2802bb644020ec481c5f502179360284d6891cdf3
Date: Mon, 30 Sep 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727703953
