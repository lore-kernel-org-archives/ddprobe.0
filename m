Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513481885A5
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771215894; cv=none; b=FbHPm93vSzBYpNUxDqgqpeZYM/DR/gbArlwOnfTBI5j+RkDHIMyej0/G/CQ0EXB2v/qs6HRSl35BexBm+OKymzrS5YuK00JrfnMbzViWqPGnbnjGgbFSv0xE+TjKiRxrWTEVP91T1x9qx31hG79Dm8fRhlmUnLl3Gb+1Hggg8bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771215894; c=relaxed/simple;
	bh=5MyAx1vQqLN9guVqciklvi5w63qHLeMAWBVRrSglffs=;
	h=To:Subject:From:Message-Id:Date; b=HVMEyqbqibBPeK1L79NOlDhUHGMULwYCF863nOsl8jILGOxUTyvGBTVKAQg2LV1Gu4FQ6gJD5dbgnU7jk7JQXrtys1MfD6nUQHROaNYLaVKbn9lb3Y2E7/pz7BANSPMqAV+z8gnOQYdR3xduswn6WdR6BzdKAY4l6n0EbeP2314=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nx7oQ3xI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nx7oQ3xI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D873CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771215893;
	bh=5MyAx1vQqLN9guVqciklvi5w63qHLeMAWBVRrSglffs=;
	h=To:Subject:From:Date:From;
	b=nx7oQ3xI4LrewE43lMSc+k3e97FY9+TOv5J2/ydsFejvcBdo1vAc6UGzMZCIHrEas
	 B0lkvYvYsoUq6cFB11fxTNuzAj5H5s2L2psAHhFjSuteWioM3YB63bFSy1JFi0xbGA
	 n1GSQ4+uWfkFqsl22OpSLj5T2Os5Vnd5y5dwgMZZBMvXMWUDf4chvX8gt1oxYHlSoG
	 oi5UJWsgmtfiIHvDNLT6vcX8aAYU7S/P4F4z5g3wXd8A0l4eHQlPEw6nE56n4Ho7d5
	 CqezjvnhCk1mlrCv3lpLsDMvr/6GRBlA+wggY7TniAI/+RHDx65zQQq3/CIlCAKFcI
	 zgAFNXJk+LjaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE58CE63F25
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121589376.13233.3683643977795524384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb86275488d7d2f77e87f6e40eb92ac2fad039088aa8d88eb92ff13381bd632f
Date: Mon, 16 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771215893
