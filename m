Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5B03A4F23
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778516434; cv=none; b=B8sC6lynLYcS7ls9qlr0SzlMttl4LoJRxbSmi0RiJvPcGWHAVAIXb8K+jcvN1GfRs9kfk39QSgQVhW3mIDU5YyLiWjt13+LuAWOTGALfLhLZ2YYXwQLZrwmdHuX6/Vm9AhRSt+4kZ0xgmPL5hSULsinO/Wn1LndwOacgKMmKRPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778516434; c=relaxed/simple;
	bh=gb28Be13+kn1mP0GmZOSkP9sz7UpeTi3czdcTkcK94o=;
	h=To:Subject:From:Message-Id:Date; b=hOG++7AK0UdrpuU/knC8GMuGRax7tQrmPtS4lF/QxvUiRvSj3zbQHre5ETBFiUsRhXVo4BKl/WOj6HqyOHOFo+azJxPk4NwB4eXlOvvc1IlAAjnRa8EbWVvIdYN+l//RF1bdbx2yeD8hXuj5Jy1ewiD8fPFiEqs9Je3FXs3BH8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzneniFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzneniFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D1FC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778516433;
	bh=gb28Be13+kn1mP0GmZOSkP9sz7UpeTi3czdcTkcK94o=;
	h=To:Subject:From:Date:From;
	b=WzneniFTzqL/0yFdskRbcQI81xe3enkypSV9ndOtJOw79bU0TN8dlzkvB5hrtwW23
	 AwxUiyvVCKSK1WzCpt4wohfTSi+RnMHT43uaUs92xnnDO+HyilHLtePKRqwsnBs6yp
	 q0EHEehBJ/qeY6baK5NQHvKp6RRg37N3UME7psPL2FP1KiWvWfb5X+Tn8WoYhEe0UI
	 7vMup2XBQsJ0deOdZ2iEcZ15jCtACaPD1PQoqm72m+gUThl37Y+OKSRd7DqEJ7EBP7
	 N7mmSHiwBPxOLwYcViDPjo96Boy4w1yRq1LY4EnD+a9elYjC6CpgRz2yId02sCvEb0
	 GEwVKmGlG8G5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB124CD4840
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851643369.20308.4033395401053625438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22d17a731775c63ab7e7ab0324d8ba1fb4b04047b2e6eb04f8447716cfed64a
Date: Mon, 11 May 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778516433
