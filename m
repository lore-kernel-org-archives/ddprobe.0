Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBC31B394F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767274434; cv=none; b=RCePq/bBKm6vAKvVScBucC8qhutaB0gnIvYBF6UoMMkjLt585V3u0mQPdauiFncoSCii7d7v7/QevxionsjqOKt5KV5lcO+5Tb6ltciICSoXCRliZZ9I0PM/R9pEaGWiOTgtt6NnZnE57BTPDzidVCUk0WC/Kl5QjE/+v2zunxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767274434; c=relaxed/simple;
	bh=TrGig1CCd/vusds1efVM6osSTZnL/VaXiTgQv3R4a9k=;
	h=To:Subject:From:Message-Id:Date; b=tD8XbfF1EyLXaIBVi1MNT8oiXIDtxFrc1p2qrIHqXaf2oz3mGIe1jS5/EdfQhRPxzw5cb2CGkTALzO5bm4izjXe4KHLWNfFeQq3uuK5vSG6BQL6hY6/c+vccOMazIwyoSHQKvobS64VQwpWrQEreqs3Zt1HoO5rMgwuIpn8b3kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYlZ8CLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYlZ8CLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6786C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767274433;
	bh=TrGig1CCd/vusds1efVM6osSTZnL/VaXiTgQv3R4a9k=;
	h=To:Subject:From:Date:From;
	b=pYlZ8CLoDm+/AgyoC18dBuUOe9MivAwIsWtFN4Q+LxRZsEmXUe/G124rsIAiraO6C
	 NXIPOWBTq0y/XtszSSgAbopsBlMug3xdqOx2o8HdACOgdklgfLdGUa4vX0Y8Rmpwng
	 WZFy5wsIyeYIB17BD4ndHWhyENI2C7zJ4PFK3pVyRpK6UmMmgEMPtlcJrM/uE/YpAj
	 +rhUYVQlJ1ZmMVrAIwJXyQIGnPg74CMq2QvaGct4zFob97czEMbYbgZUC2dDBYfezw
	 EI6fkvYnxUGVjb1WunSRhUyAt/Pbs4lqSFX4i09aSCicFXBN0O37HZ/HMWKcEoJond
	 rkwy8INrD5evg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F40EED603
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727443357.12849.14564018776746043377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb3ff06f320716eee44286f92b8616a8780ddd94165d61f12f6f54e1fbe3e1ad
Date: Thu, 01 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767274433
