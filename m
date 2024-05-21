Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70887149C77
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 19:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716318203; cv=none; b=r7ljHmGeUvZadFIFL+UuMo0WdehvPN9Kz+9CjS8qyevl8bcJq9NyTHKoh4qvpvyKrlNvW7g1KGjqprLN8r994e67IqBvft05zgige0tCJfNsH4YaoTKGsE6syL7LtsKW2sq5vhjjLhY31Dlqfw+3YSCEQy+zKOzE6oOf//UxAHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716318203; c=relaxed/simple;
	bh=QVr8Q4vrODOZOiOGiOLZNffuCvJy7F3fl+F02ZiwFOU=;
	h=To:Subject:From:Message-Id:Date; b=lU0HSiXL4bIOmr7hjGMIjOCt2JynbS48E3b/xShUr6juTGntOIaqOO+qPrbVY9hLlktud3fwT4E4+GeJVw7uqrSVA7WnHt9FzyjeSEcl5zxrqMUVV4qVSAp1YfOX1rp2h7AnkQxErfLE6H0X/0dhLj6ZiV6WbSJzqW2Cd4Gfcyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGbXOSNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGbXOSNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16A87C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 19:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716318203;
	bh=QVr8Q4vrODOZOiOGiOLZNffuCvJy7F3fl+F02ZiwFOU=;
	h=To:Subject:From:Date:From;
	b=FGbXOSNM5iKQ/4XmTntuQKMPjjj/usrf4a96wU4+mD+eUekOD2xKPGxw7U2jVGhbH
	 fv2V4rI53qKQV1t1fdF3Ak8shAcdIs7uW0Uc3VLg4PHnL1lSUYFdAxMK/T0eM8t2nX
	 Uu6ON9vLY/qeauQzoXaRgNVziWi6ImNz0HqTVhtBbuD7+4hwbqp0AQfDhzjpkbuXWM
	 eEtnRrJVWQSFqbJc1sk2ruldhcLxl6dYC/PUjl75XGtNa0m3sguDHgu2MG5Xsu/whn
	 e0HffzwNgwIYuigXyH4ZE6beBjVqj9mEEegpjaa2+LUt25hBtJTOjOjU1QZHaSu5tF
	 aiLwSPSDKkexg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0A23C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 19:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171631820284.9352.6650239880252914368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f97df5c8ae260200f4f92998acb1805593fb2a93ef51ff613083d3b1378e698
Date: Tue, 21 May 2024 19:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716318202
