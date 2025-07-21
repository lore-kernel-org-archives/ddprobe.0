Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A408BEE
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753103994; cv=none; b=tX7Rpn/57oWiNpTyBnjqlYZ/SASaRxGEIbwMX1O8SqRQ9YnSs6gbQaJswU6KMw4PR4VRMJ3ffgyl7EiwY1KCNQtYyaWLiEoC07tll5rW01P+Q1flxUjslu3oJoBgy8MyFCD5JdTD09wVEirdm6ORL+xzWZaBM9tloI8EwU+M24k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753103994; c=relaxed/simple;
	bh=FKnU5cfLm9lYLsmZG0L/HbAKUzv6hlMVe5vO/MQqAXo=;
	h=To:Subject:From:Message-Id:Date; b=tZAks5eebCaENgD3WnXhtjLJfreMo31PgRLPDq69Z9qWTlTV1KTSPx5EU5hha0DWkvVKaGjIsZdkKfrE2ulObNNs4k4l61gn1sru7RabbEt1L7IdJD87U2tdF2C+ogU1tHBWAhSdkbDAHZpHOusPoXL+ZvKZZPj+3x1XQJYNNvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HN5qFt1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HN5qFt1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8233C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753103993;
	bh=FKnU5cfLm9lYLsmZG0L/HbAKUzv6hlMVe5vO/MQqAXo=;
	h=To:Subject:From:Date:From;
	b=HN5qFt1/0MH45b+BlTiXcc/1wMYnSjuU/Bsbgiegu9wfr3rPr4nHsjg92Xdpi3GDz
	 XJjX8SqZn8zZQDZ45gvmGJ7o3g817fYu5OjHMviDY0XuzGg2XaLvLwCGofIRRDq5vW
	 LHathHVw62VZz6BegKYFuJh0ARXuEYwknu6beWsEcCA1pQRXvswudcfIyT4EgG/dPx
	 RKBknRPgNV1tBspWtAkM2CGc/uW5Oh6/BaLW92bR48ThePiwcolZOFOEiSt9P+CV7z
	 iWjr5ESSMsjoRv55nD2/bMpvIdWh3rhLJiYRlx6iPZELNK6U1soPigRjHatugtCTdZ
	 DNxEHuWV0O8Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927BBC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310399358.31073.4136200360546053726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a674f9047005d1eae32f041f52a96498362463a468323317bd9b8a876cec29e6
Date: Mon, 21 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753103993
