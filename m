Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F8621ABAE
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753918794; cv=none; b=IMhEsz3+Agispengvjdtb4djfv2pHT4ffaYE33LV/FdJ6kSlqk2JH2TjtmTBOV9foHa0tipM3CtDPWFsJYkRpgvZV5NDLxp4vRP1tzt+likqR3ZrMIRIyoLpt625pAzNegbwjB6ZLi0+3TfgXIhVTX6WPoOZbg3/QDCng9ZhnxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753918794; c=relaxed/simple;
	bh=8V+U+yZR1A6YzbN4m6ddt8YYI2voOMwm28pwi+a/vAE=;
	h=To:Subject:From:Message-Id:Date; b=nHFxGFktMtJsE30a7IRbxLvi5n8B+3JlSp4ehTLJgSh82TuwlMqDk/zN4IdHYPyzb8kvgbjQD8T0DRrbIWCRGltdPO4REcspo3JRbt9Ko9327Cj2C8ISHOK/mgNZa7u9qsF0vkxJH9RPdJkqsFKXIlX0gedvBAZ9kKhy+kNraFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NM2qBlBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NM2qBlBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB626C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753918793;
	bh=8V+U+yZR1A6YzbN4m6ddt8YYI2voOMwm28pwi+a/vAE=;
	h=To:Subject:From:Date:From;
	b=NM2qBlBgXSJ38rE7O1fUAsPmLTL22mdSpwPrEOqn9BNoLJy7GB/6u852Xca4IoN95
	 toroh6Jlfi83aPdWRBVpWTUZ56EJ1/ypnKPvUt+dR41gi3Dj+IRh7RXMSKz4N+50/2
	 FDVNVZuUCq4CADRi7HyjnpEg5O9+kAkRz7O4TWwETzwDpNHrv/1HT6d3UxRKN/gm4S
	 hBaMP5lJtdEt50YcK8HG5EM86YirYyAuEQJTPowV4w/lPI/2gVOb5rhLzt7R2xSKvA
	 2K+uv5MtIlJwloonybQ2c1bfbGqryqYSgH7+c7cbhAXBmnr/YTqbFNUg4RNcjSmCSM
	 D+APDgIu+O6Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F4CC87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391879358.2910.3200819235515434772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe7cc51016cae7d01192a1e4bab04f58259ce66c0c8361759ab7d58ec0d3958
Date: Wed, 30 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753918793
