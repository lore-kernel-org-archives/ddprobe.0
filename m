Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D55713E020
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 13:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721828755; cv=none; b=ZJaeMfyJUGEjDFoF2uqlMMNAuYudkXargACHhvzsMlKNjfzJM7cyXvnp4Lku33POOZ8l40/3XnEKmHkGPYQpWo/5tk7pW5RG70nxPpO9vY9656KnZSxijlZds7Vbtq3mSfAxOQVVWyKfmAIZpBjCsQzIcjHwXJrs6Mb//P1KNm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721828755; c=relaxed/simple;
	bh=BW+fLnI3PxBGiV3eui3shqJr0w3djBYJCFMkMzJZxF4=;
	h=To:Subject:From:Message-Id:Date; b=RmnzE1mJX79llVxYPsQovqc8snDBD0HAEqz9Tqpr+zBCnQ+kccycqeJa9BtW8XxzSoYWE5T6YuhDTBJ4ckw2oieqx+fxVFZ9BHOFWXq4tbsJmI2sOiBx9Qxw5E40rZ078cfsiA9tA3mTCdtYfVwfU63zS7rspnJaKlTuqMGtMZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Owj6C5k6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Owj6C5k6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5F6C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721828754;
	bh=BW+fLnI3PxBGiV3eui3shqJr0w3djBYJCFMkMzJZxF4=;
	h=To:Subject:From:Date:From;
	b=Owj6C5k6bxouc1nN2W67G92D2Km/3Vw0Av/jJ53jGdLBREa8XG+jTVV3pRA4cZjyE
	 32cR9Jq4cdIx5Cq8umjPViCF+2i30DxMaj683d76RMj/QoJfdq8Oh+gf1Jrho6sn4q
	 APzeGPJ/6z7zM1XU6p5AXV9OinrJ1JMqlQ4PqDUnmoFcmwYFko/tbeTQ1rCLKQWc4j
	 MSSur/wuCAD1qOJj2NWg0SWHEUE3TB6ko9YhH1lvQgrAz3H6ukiJ1gYCFmopD7A90w
	 iSup9FSQ95sdAgLrJcIy4pcA3FNmeJIiYrOX3eqhTu2R2OETyvb449KllRvQh79jst
	 dDg+RaYBtKuMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABD0C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172182875362.26154.11742479243123746726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e45960212515c91019d4cfa8aaf5a8eb39ef64fde433366b8eeb1775c83d1c
Date: Wed, 24 Jul 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721828753
