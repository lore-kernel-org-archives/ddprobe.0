Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2413D1B969
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727929554; cv=none; b=SU3k7zbNlyvzIOwQhHE4WVdkyY2R/vnyV77on7Ios10w9TqSCMZqMhzp9vY6Of5wfORyXu2uXTfVEuZkMV8mjMQjMKscA9Lp4aadLhE89dkH9J1jsLSUsrC90EBb7S0TIH+2G2vp5oZSXf60F1JI3wDBnvEKvjhcm84lCwzk55M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727929554; c=relaxed/simple;
	bh=/c9FHu/4b2Y/Q1tPwgBa2o6OOyL1oTaUrmN3Hzd5BKI=;
	h=To:Subject:From:Message-Id:Date; b=dui8nFuASqlEUtzMfuAKvkpQRQpXs2gTBTLNpS984gRX8x2dOu8ejZPsFFS5IO/KNb5ba/ixxEVM4+ueakffOKOLfTuaK8id9nkEh2SzpP819GWb61tloMI+fuwJmr5xDOaygWO3FExshgaTo0kF8AVPRDHw0T80cJLJVEHmaiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoQvUC4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoQvUC4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7564C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727929553;
	bh=/c9FHu/4b2Y/Q1tPwgBa2o6OOyL1oTaUrmN3Hzd5BKI=;
	h=To:Subject:From:Date:From;
	b=aoQvUC4CtTuLjdfHLEP3IgOCrlip1REMJzjx9Pi6oIYsE8gXRKmGN1RU+mrLAzGI4
	 Yhg5soIv1YXhFjLyAmwHg0lgcJVbBPkV4RR5Zom+RjmEJEDr5yC+90uHrqak/nBv3f
	 zBfG07a485X++pkzMwjfpVSo3xUB5Oot1RgHzZpLQREAgokjaJ2HSO/mV7cxLi8/Ar
	 B0TfwbxCPKPrPKvwRR0FfCJBEiCPrdI5L5V2UZK4kvuS7XqTTJYQEABHX7elJDhqW5
	 c8TPZTBWXYTHCRarBocWBvPvgy6Wkzoh1yTUmvaSRFIZVh4OqEuT55A/vq44AjeHJ2
	 XN0FyiSUq80cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98748CF855B
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172792955361.2192.14922973423525249933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ab6951b2d1535e0987d88391e573eefc639616db56d1fc45ac9ff030fe07ba
Date: Thu, 03 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727929553
