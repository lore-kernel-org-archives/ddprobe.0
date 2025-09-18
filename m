Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C612222BA
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758204594; cv=none; b=Lphcr3MEuSreSF1KbcjplwOnEFaAV/7IR1ZKjULDXB8yFQfGCGAqFCFGoKL3E80ShLIkGE17i55LoYVdJoIn6RipwxJy5tlHoqKE2TC1S7PorP/zLaK2SdM5VCzk5lkQW6/Qzaw5LH1o9u2xzzokT8IDdHWikppEco2GYoCWo/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758204594; c=relaxed/simple;
	bh=wDU9F7yqsPeiPdO/q7g6VSFrkihOOfUAXu72Hj/KkBc=;
	h=To:Subject:From:Message-Id:Date; b=pqJrneg+GL7NlPs76FaFvgwNAv4u78BKNgehC888sWZx9Nw5JGRM3JXoQg1CtZYZeMu+tizOg+1SliqyKP+7jKGs7EjBms4VTrwTqSbqyz/4pzQHftdkylNW5xaG1KoJM6NdX54SfYwiPJsm6UgwJH48g8Av54mXJL11j6BbFmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSE2jBuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSE2jBuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B32C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758204593;
	bh=wDU9F7yqsPeiPdO/q7g6VSFrkihOOfUAXu72Hj/KkBc=;
	h=To:Subject:From:Date:From;
	b=JSE2jBuF0zKtEwitOq4d/xyr5HS9HlZ2sJGs10QRVRkNu+gzxgeZRkwBghPAgzsX9
	 AaEjLkcAOincP2GWPvJew1eEcCNlQzefma6l4b5EAY0lgMx35r+x107oYMH/PW6Rje
	 yUguQIAl7pK3vmhEDAuD72Kx03QElAzbgI9YIyGMYDqZFF9jio1cgvXsBulZpgOxPz
	 JR8fE84wGRpedDcCYSQ04i0gG/8Pv7//S6yvbDCXgsY9JNK89V+zHhqr9Szt9B/zQL
	 MUL1iLqZXu++qyKUwq56pMFBPxKcylU3jbQSYQhCEAjv+MtbEXM1Ll1QIAata4klcE
	 O7Ml+RRTr27FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91428CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820459358.6725.12781952142330606422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5964e167789052b736996e5920b48dc450809e56aed82eb45e50776219507a8f
Date: Thu, 18 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758204593
