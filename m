Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3852F15A8
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733098554; cv=none; b=grswJw454UFAaYQoP2t3VxDigt1JZhbsfx096Yf4146AUSJbOgoIiloJsmRaYZoScz//XuZtD9iPTWXK2dpm33SdU8z4dDYAX6rIU0Qlfh5mMfNaSUJnmpoiovA1HvVxlEDxoiG8pIngI6y+PUXsLXJIxMtAc8c8YFSXbmW7L4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733098554; c=relaxed/simple;
	bh=XKLMcpvkZH4+M6Uya2iRFc09yj5VpYvTCQ/MCJR6zAo=;
	h=To:Subject:From:Message-Id:Date; b=eW7viujl214RupGNB2AsUVDN2URxUAU/66Z3ejwNuCS6TD9zBSEE6aICTOZKEtrUCYfcBJ+BRN0C6vDJe1gKb+qxDULt888hi3ivuNNCoFLFoccYjeW0lalZB9y+NpxZd9K4+gE0zL23/4BkSyFj4oNWuO9nqpavQ1p4QG/h49s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnWru5eC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnWru5eC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10B2C4CECF
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733098553;
	bh=XKLMcpvkZH4+M6Uya2iRFc09yj5VpYvTCQ/MCJR6zAo=;
	h=To:Subject:From:Date:From;
	b=VnWru5eCRA0glsR6w0xHtHyHTFxRAQU6U7swCKGxhJMuOrPmmy+eQjpKDPD9QjHp2
	 Tckh04sxeqjYmbVQiWCzbjEetQQgnX6Z9gPfKy4gLnCDVC1usPgwT8NfMpTO41zxRX
	 0A5RnfcxXXAZxTHF3rQoFYRIxPRKB/NC/ldnYryFGcnGdktiQIcr9jlUOfHRx/86lF
	 X3/sCELND4w9Q5hNFWaLkzdy59wD3GIpqMJMv89bUGAyH097seZz2udZIMDAZ2tgqZ
	 k2LSatjuHDUPkf0UyVacUp8MJffX0NfrVXb0AHs3Vui8kDXWFNbkuQ4+DUTmgl7Sev
	 t5OVyCilSD6Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C690D4978E
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173309855360.20804.7275056182180149069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a409a245613632a07904dcb2332645b1f31d6fc49d23d60c4df31721053282a
Date: Mon, 02 Dec 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733098553
