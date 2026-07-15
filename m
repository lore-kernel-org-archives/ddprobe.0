Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB4C40EB8B
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784120314; cv=none; b=tMMdPgtZu1TY/l02XX86QQ7EBCwpSkTSFmI2eO054JA4OAVn9i2oRU3zacZRtXcWB1tEER5IyPtxz2y2ET+tThAAfCr7DqvKdd1SUDTeDJjdfNfFlJlUV32F4w0PzXtAzY88YraiVTf6bavtOqRKwjvLzhO/QHyFrEg/arMyh1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784120314; c=relaxed/simple;
	bh=DIObPuutT0FK+OWD3hOWEG4TPZE6Vk3eONQMm0FsCZk=;
	h=To:Subject:From:Message-Id:Date; b=DyDYReegG1sWawk9sAJc9A4NMSPgDCHLL8sr6zKCCNWvOAeBgumKCHy/uE3vE0LUYypxnkUbroitI8qDdom3mi6A9IWU0g+l1KGeJUZKgTh+C7pFlbxtpl/j0Djq16M6v+1vpmZFByoWuidW3DpE77oSTOeuK0pe9iUUKqBWVlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kn8l5mE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kn8l5mE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE64C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784120313;
	bh=DIObPuutT0FK+OWD3hOWEG4TPZE6Vk3eONQMm0FsCZk=;
	h=To:Subject:From:Date:From;
	b=kn8l5mE4L/1m27dKsLCXrS6Hgjvwloovxp66eUJEfon63pfPT2TXdqRJJuKEjFiiw
	 H6AgjMFko49JCi/rjJmLuvGu92GgTrZdCV4mZ2WGVl5TeNGGpoz3jebEjDoR/xAQYq
	 7SNQRaZAHjTSrTqRpZPozr3eVo/e2R9KiHldSsUi4sOWrlLHs07V2Ke4kkP6jOjNYw
	 H1THTIa8Bi45mrmLlfsxIla4dm7zWV+O6w6hujdURWrwToR31525Yoc1vU5PUz71Oy
	 8wUrtR/+Kc9FNZHJ6wazqPGA7NPQkaU/qEUxBiFhWVNQnOOefdjUV59PAS/j+G0cJp
	 aFhU0Sy0rk3Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A61C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412031368.6307.4443788013268940701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83eca682fccb75626d74a4378d0a2800e61f58f503dbb5da98a4d860f495d0b0
Date: Wed, 15 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784120313
