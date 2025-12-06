Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AFD20A5F3
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765033374; cv=none; b=qAY/g/3RKSp8EWTHCKGHs5L2mpnhBfsTBFDx2UWCRg07qfTrF8vu49+UEVpZxVe1BEBnz8tDbvv2tJHhGRnTRXxZ0EeleOUmM9Lqfnr3U2WRYtX0p6Ee6hER9pMKqWaubrj6KnKOMhI5i3xdMTsaQHoEC/f/BOh+8Xgqb+YJb5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765033374; c=relaxed/simple;
	bh=Asdfu6nwBm0xhoWOf692UpnRisbf+hp9YoYZ463uQ2g=;
	h=To:Subject:From:Message-Id:Date; b=S8Z3bP4+kqN8KQRfpqD1n5plsezO4w1cIzi3VhXO/4/eau/SCw+kcW8ZEtKUfv9xQNb7Qt3dROXYqzzcYzTruAvMwVKNb3NCkreStDgjdJ3/NX6O/JXOnDJyXvCMw/Ok0b5AWaIkEvlFdB1U7BFgGtxAxMKlIdtfm8fb6lKo80I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYpoelHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYpoelHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A941BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765033373;
	bh=Asdfu6nwBm0xhoWOf692UpnRisbf+hp9YoYZ463uQ2g=;
	h=To:Subject:From:Date:From;
	b=KYpoelHAxCrK3zL9hXEjIXoRFIQdLsJRvLgOmKvgFKxfWAj9c7KPIbu+cSQnTqyiA
	 yhhkix2Y9FEtsZBtcWqx8BEQTgpA5F1Jacaotzg86XQYl/bQvRNqjgLambdNiemiL2
	 R56arIO07i30v6IwOoL+oGie1nb522jvCWJOYjk3q2MnxgC1lWZp+rCQb3UxfnYrt1
	 QCAMD1ZVXFoK5BeiSMSRau4sSv8jdzx8mOTWhe+ibUiKI4uQwh7erd2YDHo0lv82BT
	 nXr0GZ0L91EYJlMVA+RXLnsgmcHqN9zGP4kX8qzHspoaDnE367MjkcSscAv4X6enhb
	 hOru/+TH2HMwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957FFD3B7D2
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503337360.2688.15504588004362042715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5463b5d9936a4465be91ff2347a51829e2fc9afa6c5c272a187ed6c70bc488
Date: Sat, 06 Dec 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765033373
