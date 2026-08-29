Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD1733938C
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788024634; cv=none; b=NMafihcGNche57qFIs568THTGmkpMlwUe1txU6Y5Cx1uti6E5PUTNQca/YvNu7+NGmuOrtuNgE9DMtHf7Ygh6IjpytikV3ETFAlQMt7NQIhi/paMeTgszzauzzsIk5i10ZL5xAnRnxGv+EDcQmFhusrqA8KZWVgrPD9nZWTn+OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788024634; c=relaxed/simple;
	bh=RO479icOUKGMQj+bg/Et29AptJ0nxYCvYy2kp17xX94=;
	h=To:Subject:From:Message-Id:Date; b=k4deKZhPdvz5XdPaSGteMwvSe71dvIriwUhsZiedJ0rqomIv7kqJjamj/4r9OT6dgiSl2WxTyi0zzpk+I1fyuVq4Lz0fE2A114FOryEyor9ez3+Qjo7JFGxFd3ahyBE11GjkKwFgldnSFRhPHaoDsASnswSMeGMfqak/P+BDO2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNjaf5Pc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNjaf5Pc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB04CC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788024633;
	bh=RO479icOUKGMQj+bg/Et29AptJ0nxYCvYy2kp17xX94=;
	h=To:Subject:From:Date:From;
	b=iNjaf5PcxMbdgKm2EtLEbX5rXJC/Jp2X1LMwBCXD4RihYRh6lSBOPEk1KOrmPwr1j
	 BLXSuhXrkgltOMpNq8C7tYn2tY2unRde5ZyOlWLobN2vJU7+yCP3xSR20IAWjqwvN2
	 okHKTeWavR2kGaKGCsxUj4PzUFTafg3O/UWoVXumRjT7v5VcZy3jsAzq3AT3uaLpDj
	 dw9q/ba023XAIQJnvQTsLjpQIcRgwM2svFROmgiF9M03NMUPT3x2GcEHyif6L2cUS6
	 j1eCLC8e/f/Q64+LiT4nVGH4F7ybqbUjC8/EcU+yQsDYJmbN29KzYmJsaLsmz1u7ip
	 rtm5tKvSsBCkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA377C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802463368.31649.6792237282347353153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e07c5a2ff4e18a4b9ea344b3397c074f12807ed1a019cba3c5d294c8898573b
Date: Sat, 29 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788024633
