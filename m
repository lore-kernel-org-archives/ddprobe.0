Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43564175AD
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 15:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716738263; cv=none; b=YjaAYkrpTp94TgsSfTJfqk29KPMd7zd/ky32WsV55LYUXcLKJ3a+zjRzH/GbqjIvscDS/5go7QCCUTRNwKmgoF7vrp/XPgi7uTYfguvsvkz7iNl5vvyk1w1c6ICaJV6Gm5PRx4CPheGDhDZWYkL/5eBMt2tAEAG9TLgLnCs7XBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716738263; c=relaxed/simple;
	bh=JcWS7o0O9NbyG4cFEcKMws1EqRn/9w27iEfHz1nJio8=;
	h=To:Subject:From:Message-Id:Date; b=URFqUeQ09YVOAy3s2Xwk7/aL833XXem8XiP3U+pezxgWbt2ztvTGBEyR4H91w7aprjL2P2lACtdqcDMz7WPv6PkWwGzx+AW6PoGJtPR/D/dOGGnugNGYD1LYt3NosbO8YdANmkSZc+5LVzkcmDslAugM6il1XwLt65znTQOh+g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKiUBi9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKiUBi9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A50C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 15:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716738262;
	bh=JcWS7o0O9NbyG4cFEcKMws1EqRn/9w27iEfHz1nJio8=;
	h=To:Subject:From:Date:From;
	b=oKiUBi9bzzNe2TRlZ9Nq54EB5qSw8geeOfCOCUkHVE7WyOe1F7i/141s7WLEW307U
	 Fr9Gl+/ZHpIXgUJUz77FEdPqcz2W6KCg6j8P8o9eWe2/Z8pvu6G/4JoaepWmep23nQ
	 BnHZhDY5Ao9lDJnOhpiiZk6mP40WI1p07i+OL/WPRrDfA8UA0HFaxVb/8c522nkAMX
	 3ubASIV1zwDapJBCxKRILfLyIfbSt1/FzBSZfqrnilk6jURGk35Q6l7cbFHi19ChbH
	 bH/NHIguO2D/qa/HhKYDRr2dl8igRHrcq0Y/ldmCMWQRdQkG9EPk16pZSGqhSSmuuz
	 AYepKnum5V87g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7F0C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 15:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171673826276.19695.15709039033887953038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5f8af3109ef9ca72520bf938e063c9dce34b23842f3c5f3f91a6e6e64da113b
Date: Sun, 26 May 2024 15:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716738262
