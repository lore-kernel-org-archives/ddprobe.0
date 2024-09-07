Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38966C8D1
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725695154; cv=none; b=e1iraxd9NqkIgkpLkg/S61dA9K3sUGNiTiwglIOTdRoa5CWaQO4iqfmh9WNhtklM7epbmEEPHyKY3pPglWfGrtDHZms//J8jmAx5+xzhHESWe1LzX4c06AnU/r0FoxV9nw5hzp41oZRfEjeWxnW7WRBTgWvsQG3EXy1iV1jZDqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725695154; c=relaxed/simple;
	bh=kRl55QnU+t4jp+Rcsn2gR80GpITfkns/81L1W8pSoM0=;
	h=To:Subject:From:Message-Id:Date; b=CWQ3cGIP6/UOgtxb1IdYENogHQ2jnjoTj2jOTgtfmsj8vAvW9GwuqtlGWpd5fD5tjsx8vgTl/39mSg5l4pXaYunCs0sq6B+jeDrkRS9ijNl7tur3fyBuztiYRcn2EpBbnssAPx7/jpnXt9AFVMQ/Uo1ttWMvLCvShuJpb4Z5kaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGcCKzsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGcCKzsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5653C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725695153;
	bh=kRl55QnU+t4jp+Rcsn2gR80GpITfkns/81L1W8pSoM0=;
	h=To:Subject:From:Date:From;
	b=FGcCKzsYsn0JV3Px0I/tVUH7s6z+vchQNIfI/6UyAm89VpW2+VX+mzAhWZfy5iqYl
	 pnbbdGHtM7NQcXy8EppkFR7uC4V5bmwTyvF1JktCHNqQQ9zlcNPTTy6ypxUmzRfEJ4
	 d4SBrqnZlHlrZHh1Rj+K32Rsd5jEbBqw4H5jL+8Dyiy5HDbuN2hX7JIUkHOWit21B7
	 H4V1QxZkg++00C5nuddArzfPl0gwuMNq1FHV0x6Ca5KSOJqB4HdMwPwFq18r7o1SS+
	 J9+Ca1p3+6mrVoe/c7SWnXjYav9Giq8lwPekitFgRQsc+xOb0ZtgVyARJPd8V32zz4
	 gD8a8eB5ISOOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F69CE6FE4F
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172569515362.11436.18410669230360468122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6280c806a03574008ba0cf8754884c0f4d4fdcefa2a688c827ef6d59211e43e
Date: Sat, 07 Sep 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725695153
