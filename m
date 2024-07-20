Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5637F208A4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 21:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721512554; cv=none; b=R9zra9+V3/j1wegQ/gxUrUkVC2GKr7DhQ/2WLT01atOX8tasO2LapP+EEXUbFchfgN6TgIkTGtUOIaeSgViS8sNjNNR7cBoc8zrIXR+fiUum47GxrAUX3J/xyQ2r+Q41DEM71BON83jSvaibNyjz7tss0cpD3cYlC3nJxsXCdj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721512554; c=relaxed/simple;
	bh=TMSpz22ks20fZQGyeHJccbp2+hA1yE1FFKdsBkBcJRM=;
	h=To:Subject:From:Message-Id:Date; b=RzD4KK2J3vrOBqp5KyxO0/Whgivo9/ZG08bbp+imjQyGhWRPmuFiZOBmCxIcQHUpeSvwtk4ESqqaG9DRTE/1TXs2rqL0EWKitqPOSniJ8ZdnQXJ+Ss/xxvBwizXjfevrMo0GDAGha3/iS4w2iBD1rET9WMpTngxmi1WZeEcTjSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAo8Wwp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAo8Wwp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4226C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721512553;
	bh=TMSpz22ks20fZQGyeHJccbp2+hA1yE1FFKdsBkBcJRM=;
	h=To:Subject:From:Date:From;
	b=oAo8Wwp8hORjJ9td6klkYUcHU+2vddYlp0QXxXwEmer7mWBH6i50zF7cSl4TOBPtU
	 vJ88fD8i/VNITCo112eEpnAJVuU4PCM44gdQVEAuAQhtKZpRXGtTVgz6JV3QzisDhp
	 ZGdW/q2znM8jknxM0EQ5qiZzfGz0FPtKL1RzAW6IqJGegR2KY1PmBY1qIa8OVTzAGP
	 gDM58hpL7Gk+HCWpTcoTex5vgSCWulcRqyACTrSaLiXX4cQ/2GQJ8wHkN1xl5+3K4B
	 UC/EJq54ytUefzXlFOaJ2Q+XtLSAfDHv9RTHKIPlyHb0aVp3zPWksaEWnUXUFRnBzc
	 RCOMb/MgfvtSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B40C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172151255368.17080.3295671566558027366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e492ae01cf6b4936587241826bb11d835e1326658f2eb8d61f50156bcbba23
Date: Sat, 20 Jul 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721512553
