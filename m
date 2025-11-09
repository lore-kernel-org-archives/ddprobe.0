Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3F4AD51
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762655394; cv=none; b=uzTAbma2vnglDrD/FJO+3PPW+T/pp81g9MovlGMKGV6XuFauyicGrjJ7RkZG5R0ySVO9ihPhKFeH1820ppaUFeCShNCTfx6waGROtpwht7+Dp/1rN6wDoZryz0pg3RrOWfK+/6/RiHkcRfIwol7/WZ2BjDu16DXq7OtxmOY0sao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762655394; c=relaxed/simple;
	bh=RTJLqiEBdGDpVbWan/Sgmw5v7Hf3wPHun2J2xQcYTiA=;
	h=To:Subject:From:Message-Id:Date; b=iT1zK3nMZmRtaM4oJIBQJpwWZ3lWJOOfe+uHM6+VGvm/DdKLL76cbecYHD09Fplu543zlslm49Y1EVBfohYxHmc+7F0xEN7xRyPKs5lGKtWO5RvHXDdc3yOeHsOfAzUnWB8EkoPdPeXba/LCoW9IYlI+OwktlYmI8eAoLd1RS/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alhNIgxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alhNIgxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BE8C116D0
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762655393;
	bh=RTJLqiEBdGDpVbWan/Sgmw5v7Hf3wPHun2J2xQcYTiA=;
	h=To:Subject:From:Date:From;
	b=alhNIgxWyMcPjQarf09sPhkDTudBNXBmONoxDehrVyv0UZ0Ezuc3xpQcduuwetZYv
	 UgLlpRc7nkXOIOZ/Ql6XVA0Umrw6s1QkKwiPq1GQNzXIznTzbV50H8FIGtQbEZgsDf
	 BVQjZvPPvbYg/QoiU0/qjHaROTnbaO0ZE7qE5hAXSfK4x9xC7uI7BMGnP1Qu/FcLr8
	 omzB/geCw3DE/Sb02IBue2ZFY8smygcQ8JQPufhd7yEUST59SmaECfWV3ZqrtjjGAQ
	 AMXVtlHXV0MyK24hhDMbOAqFzS7bB8+MeW/NoRNMQV5BSJKJmC3bbPMUu0t4kvPfYx
	 xHs0PgoRuE8cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97883CCFA18
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265539359.2569.9682286730000860184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36cf0e9d9669ef9ea27d6cb0bfe1afecf347dc077c99b6a2aa004c9cd62064f
Date: Sun, 09 Nov 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762655393
