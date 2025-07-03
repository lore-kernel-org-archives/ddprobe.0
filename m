Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1098B2AF19
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751577595; cv=none; b=sLzWJvc+ngHpif2vsjASW/6sJHKdDwoW+lD/e2hWktUKILKHuCck29GqB0JJ+MeDAyq2evCCZMaI07EWMMJYH5kNJufi5OX2SX983K8eUKgXQVK/m0rdk8McFRK34SaEKyRh0PYkS2evti4pK77SNGd5kihB7HX0BTxc/IGzpBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751577595; c=relaxed/simple;
	bh=qQWsIdRYzAIncusTFvDzU33kFpCXynGaG2wAeboh3Zk=;
	h=To:Subject:From:Message-Id:Date; b=K+1q7tckisS9pXN1wUQCQfBd4fxtGBFU4F/d8WgRB2PTVUflVePddn3U/69iwjDwfw6zjxlV9mdeWS5IY21gMK2Y7cWu2AFQfzEYTmDVjCOVDpY/3jZUFPinD7Xmqp85cbTezhByDeCZXZ5GxHnCNYlrNSHS8IPTfQg0A2C3vwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CR5HsdeO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CR5HsdeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E56EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751577593;
	bh=qQWsIdRYzAIncusTFvDzU33kFpCXynGaG2wAeboh3Zk=;
	h=To:Subject:From:Date:From;
	b=CR5HsdeOxYem/Bs67UZ4aUM9do1NYMeqse4kdISSluKco4KHmrRatKC6U6OeMoEoz
	 8y1jJHIV01hCUT2p2f0UTvMmCOMr4g8egf60NfZo7x+J8avGoxBSCotr3JIekKW41N
	 87HdMr6Eq4LLmiYg7EetKJ3tkfRY4emG7qVIvu3m7gK0yyg4kEhfKWNCooo0fDlwNw
	 3JZqQ1kTdha6yxRi0//4Up/mhW9LXWKkSGz5gIM4cirEUhpoe+ExQaITj2cb1Jpw1a
	 GUIp9SFcn7fq/hKnbiM8afaFHS1IaBfHLAo3zYtFa38EP/psra51m09kzDi8hXI+As
	 ZqzRrO2/ZDadg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB3EC83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157759357.22024.2692218923128794049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793a3b94e907c591d74253a1b1c9251f742958900ff0c00255fb76361d1c5bea
Date: Thu, 03 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751577593
