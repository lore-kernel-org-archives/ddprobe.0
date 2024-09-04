Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208F81E009E
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725467754; cv=none; b=mlKaBfmWd16yP1JKbpHtQKiwJEwY/IokDzfECqOvx/Ss7GthD+jqbIVz9j9lJYePPX6zCu1q9vFbV2RD3IT1dFpBEZgq6SUNY6bxNIFi9oW01BCUTz1TFjchCsaDBTG3crAZKF6kjaGYSduY3u4OvcDeLUWJwRz1ceAzT/ks4hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725467754; c=relaxed/simple;
	bh=C2X70K97dwvwfcjMLwaBHQtOepitqKeRQInidBEngSg=;
	h=To:Subject:From:Message-Id:Date; b=u7Bqo3qvpwWtGE8U6OLuvmCchuMw4ZBfBGku15KcAX/ukTdVO3JcVd9OG/bINTlc+eLFw7+fks9HS/NxLZmXbwbDuatQT62feosSZChscRHETRqDiDEWO2vk7mO5v9jJlhBBo3CBJMkbYSiIP0HD+qGf/HmR8AsItnb3OHXPGas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0EJ4ODp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0EJ4ODp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CBFC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725467753;
	bh=C2X70K97dwvwfcjMLwaBHQtOepitqKeRQInidBEngSg=;
	h=To:Subject:From:Date:From;
	b=O0EJ4ODp88gZwxuQsFzskVnxg5/twjkIkeUvrHj38LU6Fg9L1KDuGdGUo8Iakynns
	 dHN2/UML0pdQnys8ABlwDUlCTsT0e2jBjd91ecDhAa7C3+YdyS5IDQ/FQ93DdO4Cj6
	 FaI9Gbx6q5nTt6u4Yp23AykbFFgh7O6rFRRQF5fJqzVVT9D93mp4J0pEdTLaA84HID
	 ATg/OGo0uGB4yxQI+zXHFTWLCR+Xt3CRS0yA14I6EC2KFqFrt1qsKnxqBMoK8h3B2F
	 EGy+CkT+ogY5c5udBLSK1+7IDfz10l1cW9tK1rH2p8O/b+VrZ6aqsOGSVllvPIZsNh
	 tm2z4uwlSSesg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93961CD4857
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172546775359.8931.6097086410568510039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dee55d5d89c28c97529c96ea872af7d82409e72e040c7785fbc7826764c32e1
Date: Wed, 04 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725467753
