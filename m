Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1FE17BD9
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 23:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717283123; cv=none; b=uPEJdSQmpuxKApqXzr/HBcnQibaxlkScDEHlYaI5oXFbZXR74zUEkiU/kp/bKHgj1QhxC/PGI2jkvvuk20CZFx6XJKfCW5rD8TV4nmM7bOXvUEli7FCrSrpWJfZ4eC6ToGlaRho9Cu6xP8o08yTX1IJSBjeaoPSgiOSdQ+HKsew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717283123; c=relaxed/simple;
	bh=Bp3tbFiGvAZrMQLX0ihfdiIwjk29IYbQmD/M+WEml34=;
	h=To:Subject:From:Message-Id:Date; b=GvsdJH2siq21B8Rmo2Bbw72oavgHJwvRv1UHOYuNQYTiiwey+ieQCmCXADfdbOjj09p/zKFbWVnlNuIc94geYfpKPmr+G45/z61dFFkUKSJpUOiIaivcH2fmNKfvmDE69Z3DlaRAAc0kCnaacu//qibx24tjly+zaTa3UkgVvFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeYWnsLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeYWnsLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D883BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 23:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717283122;
	bh=Bp3tbFiGvAZrMQLX0ihfdiIwjk29IYbQmD/M+WEml34=;
	h=To:Subject:From:Date:From;
	b=FeYWnsLWIL9Elnw0pzI6vJWCEGG9XLj+UMhhRh9XAvQsKfwWHEW/2h9zzWgnuxojq
	 jBmTm4ROY1nOnWPN5uDScRLluSQMfrNrwUblOlJBao8z4pysShssnwM6/aYSQ2UrYb
	 dYDSDuNC4PQIzE1qGXqJGnSLsloUlCXS3eh/frKS2qzsaxxhq1DrZ98V56fRVNGquB
	 tbv9KCEtwY6njv8ARPGRCtax3fEJQF4YHcZoHupTZodsaysKz5pv0Kq+3zb3ceV/qW
	 u04uQKmlsYIfJgrKz3gp4LpmxyXiJz5ahfmxuO5aVgb1oBZjJV6AH0psa5+YfKO1+j
	 K6899p2G2X41Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2400C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 23:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171728312278.28686.716624292099802409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9ed3a629c34c73bc48761f3122115a73c4e09fb579d2665a4b427fe66bd853
Date: Sat, 01 Jun 2024 23:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717283122
