Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3060018E1F
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758992994; cv=none; b=DzG/ZbVkwNWPLivMBx6+9x5wQXMSvw5jzwX83BHWsD7Lmnaei5TF5Nxh21DtoAx/lLEpojpP4Po5y82gTcqL+EMOFq+YL09SHF/yD58RgHs/tOFjGAVHNcHJBf4dQoUSx74X6viodTQlcRBrZecMrKwc0A8yTgHTJiGKZqG9qzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758992994; c=relaxed/simple;
	bh=ok6dXogiasnJ/6l6QoXECPzezaSGZ+u7ZDbU+v3ubUE=;
	h=To:Subject:From:Message-Id:Date; b=fh+3So7c1ZXEaQWhHWMo3s64MO1FYAHBm6Xb7sHi6jz0a76VFm+RDVAs3ts3KWMYMGjTaLyphPC8fShcRosNuT3esruyo8BraqF92Moq8S+Fgh7eWHiQ95xiKCQCleiuym+mLldYUyDTdUCiPhVVoiZQ0lPa/vMvDVS5IPT1DzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3kuMRSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3kuMRSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD27CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758992993;
	bh=ok6dXogiasnJ/6l6QoXECPzezaSGZ+u7ZDbU+v3ubUE=;
	h=To:Subject:From:Date:From;
	b=s3kuMRSbJNqv3kHxgRJg2EwdPA18U7QpW8zSGZ1EgAlHF1k2VANlGb8njXe++1IED
	 K2uzNCbPLFgVZyY7IHngTRr2Gi2MNC3SwK2g+zmOgT0U4T9T57OZQRO+oOSuJWIfoq
	 81wfD7Rojk9oYUCjjejBCAofrkO0dp6j+NnHH7ieT5okgOGeUjOZQCGN+Dde5heuy/
	 +xm8wAcN0DSL9Pack9IQxi9Q/2YuzBN+DiSUYsaX9YkSr1aOyp3IEj/L3dzJt+62jn
	 uYwtSo2tLOieXepFBwucZNzUArp8MRQ9zZvMRDzq8ZGXiglZAJ/+iIOe4XyD27KFZ6
	 oVoSvI1zrArdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCD0CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899299360.20030.2744257540281292667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eff5c6560792b82282ddd676d1afc991b2cc31bd1ed19c03d8037cbe112b607
Date: Sat, 27 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758992993
