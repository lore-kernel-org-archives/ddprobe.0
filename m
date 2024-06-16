Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDAFECF
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 15:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718552903; cv=none; b=QNxfzR1RxCHopz3ZGNrJD6WGuQ+JCAxfZrkePtSbcQoFm85KlDxmPb0yBhoJq0/i5xLIY5V5cUky9dCLu8klJJh+DrBvB9WlKV/Oz7HbtotIELX86jVl7qHpsTPJZAxS1w7fB67Qgw2NbzG0Ig3D0kdDbNUV1Gemvza1crkEaI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718552903; c=relaxed/simple;
	bh=pFUw//9pah+nwPieE2z0sTqZ34YK2u5NAoiY7wmToY0=;
	h=To:Subject:From:Message-Id:Date; b=WBmkqwianJnVTucAOxPjScizRmYZYWK0/YUg93KBVetD8r4682Zwtr8uXFO1iVlK1JE9F/KYgFYJBk8CedmGhgqn+U6xn0IT8k9mMIhECcI7n3ZweKjjlS1cYNvu8OQxtfrgYuYONC3mmWGBpKxi5yo6MqxMquuJm4iHLM1K4V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AB6aujIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AB6aujIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4992C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 15:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718552902;
	bh=pFUw//9pah+nwPieE2z0sTqZ34YK2u5NAoiY7wmToY0=;
	h=To:Subject:From:Date:From;
	b=AB6aujIF8oa6nl5oPfwWFJ66pu6iPKrKiVpLhT8GtIEwm4D4mDx15x1vHlEfxdqUu
	 gvc7UcAEE0TMVmCvopcXj8tz41Oq17Za7EYq2E1QRG10ynZSCPJUmf7DuJnno2MG17
	 ho+Jkg3PAQfa/eugbVk3S5kX6x7VN3L3JC0LYAd1lJbX3pxxx975onJZ4/axFjTLLS
	 Srfq8apaxx1chpRvjwUtdiAG/QXjSvHLCO/t0a6gtIy/afOjbDcasjACxMYwwqV4P7
	 sjP44CPEmliYGKoOsqDE/eHAw9jYHn6ddcJiBIug77jHHvO7R7DmWcnasoixAn2bxE
	 YR3RLhyikXbcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA90EC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 15:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171855290280.4302.16075166131506097580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987bc9b6acfe5cb42cde72031c43e093963b9ad8191bc8f96bdf0aafa0497e97
Date: Sun, 16 Jun 2024 15:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718552902
