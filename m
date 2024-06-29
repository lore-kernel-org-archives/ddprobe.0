Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F3322331
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719663863; cv=none; b=PvdEDcxt5xoK2w0q10P0yj26yHyQWYTQngOKHK4bWwnh2J/G1EvlOTTFC/1ulYZ4G7v1wDOjnTNsFhekppFr9yEYsl3hOGxA82Sdp/C+GLU3I9onHvngE2taGzwssYnRD6IhM5p6j1TkS23HjJ+jcRNkKx4H4n9lrY9g5Ue23X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719663863; c=relaxed/simple;
	bh=fUueNr9X14Jmy0s1N42MAB6UZBeFSgikLwmX6XYjFhw=;
	h=To:Subject:From:Message-Id:Date; b=Muk+NGvrFA/E6RfGDYycJs/8sAGetttoqqGhHSrdl5l4sF1c7bU9uUrRA92nkEpyIsQD2k+0uF8xXSj8FsMUeRmtxPW/wMz00IGdHFspMMYzdt9+Gqv/mBDP6HgG+gBn1G9GYfi1deUdYpI3TS4vJ5YE9J0yjJD/I1GDTBPqdUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CA6R7e2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CA6R7e2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D73C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719663862;
	bh=fUueNr9X14Jmy0s1N42MAB6UZBeFSgikLwmX6XYjFhw=;
	h=To:Subject:From:Date:From;
	b=CA6R7e2x02dlC82e2auwzxA7q/Fauoq1vxI46JsG0QXknwDFZDtFXWgkg2N0/hYbW
	 fHvkdPIB+WVH1Y2W7QqlJU+raVWKIL1pvSyxynftDkH2uzOuyfujKPpNHgkz7s65CD
	 qkP8buFkA0mWrYKvyHVKFL/A9bw1AMlfVzfTNaJYr2iMZF66CX/K4BrfB1CLIGKl+7
	 KxavmO7d8Ro6oCdKJK69Z/PkF4yVbnUtBrJouPBPTLKU8ryHt5YJiBje6olus9eg+6
	 wHjnLEtJ7D/9H9Jb+J1uMlvGax6jmDYl6oHURNAqLKdfAuhrUvay50eeSlceaNo3gy
	 8aQEVhOrhQzgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C571FC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966386279.14124.6725491726737011634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f843d7374186d88d660c98d5adcfead6bc67b977c375b9505a58d7d11f6c57
Date: Sat, 29 Jun 2024 12:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719663862
