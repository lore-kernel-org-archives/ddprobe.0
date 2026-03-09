Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A4733BBCD
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773091494; cv=none; b=rQThCSS2pV9rcyfWMCVamn+fWDnnwE9YUDOLY3jkheAD2gGNO5BQBLNIEBKpgtIStoNNJ6GTu0R/t6lwZtq0nDZTfb4VuGJrlbmCAAycUeWe25PdAzVUmVoKKR4FroFdW7ChU8TqRoIS+xmQlU4UQP/FxpgW6Zwxa8pMTozmORU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773091494; c=relaxed/simple;
	bh=BiPRSQCNqEBjcTGIEeRRr712NTfnBDi11x+vDe1MUXw=;
	h=To:Subject:From:Message-Id:Date; b=FhD7jgSfM48id5dRJdatqXS+Gy23nL3OqyxREnAbOQayeoN/wczo/wH752rfXJ0tqiR4rPrFVf/fr/P2/ZnhTSCmchQwopgf0ljfQnJ54gqHTvYeyziFuB9nd2FsL3W0q82eJzdoZuUtrLEZIjhI8whrI86nCAoIlgnjKKwUYZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9iEz1Mi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9iEz1Mi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39C5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773091493;
	bh=BiPRSQCNqEBjcTGIEeRRr712NTfnBDi11x+vDe1MUXw=;
	h=To:Subject:From:Date:From;
	b=F9iEz1MiqT+R+7/Qi92pcXl4FMOX58DB8IXqzttuNgRXhNQYdcElYTu8hjgqA40ai
	 w6NEOoNJ2bDaV4ssB51GfpqrmhQj3K34C7p3LZzxFH63Sc+OoENudm4GEwr4Q3NnRD
	 ddmaqiic/nfnHRmQDm8sKwvXNJ/MNZflkPUXEM3hDkJKrrpRtBEednSogX0busxGko
	 1ih/73gSDmeo0NPyQDapw6SniuCca/WCleipMd0ShAytUEg3N4GTiq535nbSBOIdu2
	 CFEACfyTFcP4WC3fhaouCYnA4bcaWyoKd+t2HkSD3XKwAVUxy7DI0RQosg6akQiKz4
	 nT6IZw76Z2Y2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AA9FCA192
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309149359.2423.8015748832998274996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c611060e11b5586bdd9eafc74585c222d9828c17cc896ed04e62ecd470a03e7
Date: Mon, 09 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773091493
