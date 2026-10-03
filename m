Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1953B14D9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791067234; cv=none; b=PQ6otq/RrvTowq9/JZ0OZ1lSML57RZBGerkN+05td0eO8FHqyjAktXY4VYXTL87g26r7bgHr5VYS7ceRW2hQROXBpusKCoVSUmj5camp5OvXg7LQIL9t+kJTUQwcRtKOtb/RWNC9PixiN8XgPxRmLd6WVQQ/zfj3SAjQuGTaPHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791067234; c=relaxed/simple;
	bh=IEu48ZnonAgc8aVsAzsOLpx1zhJ5D5mCtOW6oLDtc/U=;
	h=To:Subject:From:Message-Id:Date; b=VYeKn41NUz6ILMZtRHm56FFMlKaDTbcHly4u1Y/iiEZMHY1qT/9sr9xMDlRK+KVTJSkKqXYBMYKirB6xuqAZ1jBHC9mzeu4EtAJ2YZvLcM/QpUiL4z6XtXoiDxL+IwOeIPabIf3p8aSKAEHFDMoTdZ9qt+yfCSpiNXgyXlmOMWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnXOAE+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnXOAE+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB099C4AF12
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791067233;
	bh=IEu48ZnonAgc8aVsAzsOLpx1zhJ5D5mCtOW6oLDtc/U=;
	h=To:Subject:From:Date:From;
	b=jnXOAE+yufqGig1jY44TnBrUptmbGsLe4RPAQ8I1EUDWzLVP/MnkNldEyJWRGW/ZW
	 ReXXyzwcbK+hVRha0SZdyZ2eoK/7FeqFXraSJ5j0/zX8Ucr3DZFM4Brl/+N6QdBxvD
	 DUWRABY2M20G2m6EAPNAk/G4TGO1EPJlCnc6etF5PH66RQu/K4T9NhPUQR+/od51rM
	 XEyoDhZA3Y3g7be/84wBPLtkJH1R9bZjv1mYJhy+ORS38qYLYFWFVSavrij0vs7dL6
	 leuM6uJnIIBIj8Y74mWo6qIEOTdffl2+XLCKTHyB0JEoA3bZUrBko2ZC0fnIEjiYT2
	 mjIeWUUkWLhEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B26CA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106723373.31433.9124918825395108265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd0c0d965684b757ea30f89bc80ed414615621127a94ffa912102d406df0a57
Date: Sat, 03 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791067233
