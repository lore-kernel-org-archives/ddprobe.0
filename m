Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F07F6FA8
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707026897; cv=none; b=aNQ7ayQNwYmPXtK8BevwCSdE1gEgasXeFrw/Dj5/iyoIGT8HPeilRLhGRCt0j7eX9Oo5a2yTILwsh1Ma9wiakCMJJS4/ldsnwIyVDch19VeIi3r3ejBBY8a45d85b4BfeuaZJkZId5jEv9evI7d6kqJ1aiVwAQLzQRIvsBM3XHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707026897; c=relaxed/simple;
	bh=UKfm4Kfaw7s7DXLWsBrL1qtcrIH7f7Fb8qwNomFWTCM=;
	h=To:Subject:From:Message-Id:Date; b=MVZ+b0//zrLYM2y4j5oODnSeri43tOoQmADKEk7VGI9jpnGlIAaW9EaS5dzVW825iC9XtQN+6QTP8qmdj03hRnClWSslTuMFMdd3iwNmloW/GFfW90sK3YXM9kvTbiFyXfjOuK/iRp/bhy0MjT6xuW0e36IItC1+3C1ZsKLH1oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJDjxgwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJDjxgwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84C66C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707026896;
	bh=UKfm4Kfaw7s7DXLWsBrL1qtcrIH7f7Fb8qwNomFWTCM=;
	h=To:Subject:From:Date:From;
	b=IJDjxgwBPWewmiMfyu8Ro0LDPoYZ1VUv/d2q57dqX0SjDWuqzPlrv0OJfqX2I/r/X
	 FzL61g6QvYeuoMzmo+rUgDiH8yf1d40HpgvT5OJEXeJZPjmidXODtLCS+RXppeUvU0
	 OWnAVI1aXNuQ1bCbFIc73P/jb9hcVqxwYEaMG5wxmt0FajX1wRAAbLpcBG7RvlHFTT
	 i30jIytP/bDwhI94wwMa25Va0hrpS9DCe5NOLl2TvCAPXRJ3r4xL456xqJSlU7dhWL
	 aU3ZJt7EZuGVRgn5g3ETXq9wICiAqeE6AuqrP/pZBWci/ewfuEgG45Q4ES9OC8V+/l
	 N0QGxkr1ifCAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68694C48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170702689638.20223.13913203082927186063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed44cd536314aab27da3d813ae83ee5a05565a567e25420a953014dc5f9512b
Date: Sun, 04 Feb 2024 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707026896
