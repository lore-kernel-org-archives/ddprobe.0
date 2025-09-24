Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DCC288517
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758755994; cv=none; b=A0s5Vsz2vxikq7xJkUJqp1VbaR6ic0AOrvUEW939AOhkYjjnx6c9uvyAnwh8z4jp8SFQPyHwbX7o10Ud/16wz15JRg3dTfmQuPi4ho8lxS60ccEGY6WJX80m5x9DJYuCUkaOWnhirHbD7ZSIkfQ4gmiEiaSNRSS/emHKWTxQtEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758755994; c=relaxed/simple;
	bh=k8XbcSLSNONPI8kYFzGJiYS2LfGp/3ids2yAPldH8Hg=;
	h=To:Subject:From:Message-Id:Date; b=mzhS8FHoqNRhHZ5zUEN2LcJmheLFybwWnhTvvi07BdUn+5t0VBfuPHtx+Nmoj+rY5keDNyrPbzDBta6dp4JswyGgLgX9tS3ozk5vSwgFYAvxA3GCb114NI3TgH+fEhihTYKpaLYiY+4toSkdwA81YQ4q3Fm3WSVkN1OcP7UjOwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOHhIwO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOHhIwO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1219C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758755993;
	bh=k8XbcSLSNONPI8kYFzGJiYS2LfGp/3ids2yAPldH8Hg=;
	h=To:Subject:From:Date:From;
	b=gOHhIwO4slIjTMxztcU3tv/WjIzwO+GQ04sgeTkL3pDLxfB7u7YmCt1f/Kvhybpmo
	 HlC4wshq+ztStOSyTi50CKUHgis+Bm4lSEJc9IQlGem/bR0RzgNjII7FyTLO+xCjIU
	 sFLdUrezlZyHF1Bmd6Gvsv9/AG7f7HAGBaKTY6meYmLttiOJtyNvP/ZGDNZnGAlYSF
	 eM2T253pNd/tzu5uqEo3Qu7YXnmCMmmviTD332o2lHREWzNgr1nnCHxWjlDUedOtoO
	 aP21MtwNWxcIqz2FRx9pqhY13ld/jNUMKpJVVu5cHiXaV2CzF8Kl6KkcNst+gYc8FC
	 JteW/q6yoIdPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DD5CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875599358.22769.2252364771552728613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24c35f7783399ab518c60b2ebef113da98dd8a22a4629d17ef2eb2c2c00fa44
Date: Wed, 24 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758755993
