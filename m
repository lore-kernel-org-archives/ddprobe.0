Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5748E7E572
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 14:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719756263; cv=none; b=HfeWVK6OZEB+iFFa21TWF5sa6JL+EgQBRjJ8oQhWA0WY13VZ0qG1oZ6DaEPV3mDwCo1VZQJXe+O5fKiW5bZipBZcnEWOpGTtJKBfpIj35cLcy0JL6B83+RiX7g5GywPUTKDt8uBDZLAlm3SXAUzYgZw5IwZmv9Sk638EB8RlxtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719756263; c=relaxed/simple;
	bh=s16SW4lcFqROm2yDs7V5kJYpcp9sbWV2QbbzmMWCkUk=;
	h=To:Subject:From:Message-Id:Date; b=o2ZuUiq4M+Vd4l9QM7eRFbPEn5xNPtOkWX3UfyeOcQ7KESsF/GRg3hqX4I0N8b/EXH7FN7rdbiIbggYxs3GTFZNv5ghBzP8JeOHr8CfPLzNtRHrD/wQ/Hxo/Qm4TYm9o6l3X5F6RVZU3m+XdFaCxYppA70zJazADO9qBG7j1tGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BO6wMWQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BO6wMWQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A4EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 14:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719756262;
	bh=s16SW4lcFqROm2yDs7V5kJYpcp9sbWV2QbbzmMWCkUk=;
	h=To:Subject:From:Date:From;
	b=BO6wMWQGkOaYX1BE0Ww4j15fHRsFeTXjd8YGsKNwD3aBN1ISBpS5HlG3FTG/ITnTW
	 P9WsltbLsECnesRifkKBg4nyffFXhGH7WRbHG5+mSOAeG6wklTJw/EvH0L8sDl1H5Q
	 wHTPsCREjeuRsuN+7Nbf6P/BRB6bgrTJKx+9Pm9NY1urgkb0SKdBHbtOhB0EDgARVf
	 KYGRLiPGDH37euFL/DDQap1VV3b68hjikVvfpNf0GGRTdfoTKBKSUv42xSgtZXBAOY
	 lXfftAtvYo7nMLiRcAIs7EBbZEsi2hw1Kp81dwiCPMxwuHNxt5Yfmy3O/YYuZ/nonS
	 5Yq336ihn90sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE529C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 14:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171975626277.27324.14039443082463461244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8acacd3300748d3d39e8c9272fd5bebf788a0c1451cb0be9bde678dff20ba8
Date: Sun, 30 Jun 2024 14:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719756262
