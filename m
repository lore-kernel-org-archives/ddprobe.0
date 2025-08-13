Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A871C860B
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755055194; cv=none; b=Z4ki2UlOvHtPvUfLPcSrGrUZhQ1hr3Kn5rSoB+CKkclrPp6oXBIjZX3Sb80f28RlmTdBRc4wRNa4T6XGrixzKqU0/N4J7ZFZvXLndEzPRwO1qaXI/TXQulE2lJl6oYU/iyCVicBLsSMeD2HM5kd17fbg38HRZeEW65TV+5gemgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755055194; c=relaxed/simple;
	bh=oeHrjydjnt9Gt1qmqgjBRDMbZfRh3qgoDOLpiDJtrOk=;
	h=To:Subject:From:Message-Id:Date; b=TYamVRMg8W+89GnPFAD+ZqhgZTAVlXlznCpV/y5kPQVr8CcriOilAY6F9EVmOFcxPZJM7r3OErwwA0nLf/Mf/RB1g9XM0tD6cCPI+tcTU6P7fH0MZfyIYziXDbILZeqCORrLrKXG1xPrSIQrY/aeWLr9tDelgKgsl8m1HgBBAWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGhHb6EV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGhHb6EV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B78C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755055193;
	bh=oeHrjydjnt9Gt1qmqgjBRDMbZfRh3qgoDOLpiDJtrOk=;
	h=To:Subject:From:Date:From;
	b=GGhHb6EVawXtto6ai/GaLoiK7/CgzZrhoffmdwS5fxr/T6PZkOfKgOjhDOvYliotb
	 1HjitL1rhGoRve73GZiIAWPxfDIw6SqOqhSWjSzpZATE5cAA5t+dT5de+a9AFhT9Ja
	 zR7LEtnQx2t2dMXYM9rYcUiWUxLohkqPFtRF18+WN/uGZVSkL2cICrSbU7zlYXP01F
	 IdY2/g6PTh02QRm0dGBWGcjOwTJ2Z+DVXpgMjqZUDMGuhy9MGiyO0huKP26py9De1o
	 GtWNSzEykeWTbTX47mpJYwnBXpaq4i/krUGGoSnzUsh2/atgIemCTbI0CABTKIYsAr
	 LRLOZDRy4M/MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912CFC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505519357.27151.1118144377401420923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e71148cde103e83d0581273eb970f2e5a4a943673e67d798661e66a96f5a0db4
Date: Wed, 13 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755055193
