Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DA22D9796
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776259654; cv=none; b=PjFwGCKPbXWzfotWyerrt0/1v/PBJgHzjo75j3zTAx3oeC1F1ZO9DBWOmCt65/XcQ61BY9iIW+T8dD4GsNnMp0KzRT2ynPWnbxTJprNjgSFyJjwdQvsLTmGDckkZO7PNmadHndt3EvqUu93c/LAICO3Lu7iAZ/ef+VbHKSJeEa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776259654; c=relaxed/simple;
	bh=tZ1uaKZYhQbYQt1dA/LfYAlZfpcSWuAc9MLHTPqXlSs=;
	h=To:Subject:From:Message-Id:Date; b=AdOJPBH58QxXBg5xwNM+LH8Fmm1u8RgIJhHqo9LXpIMUUMNMB922AM5gSk7gDGaXozTE3wbzxaOjs6C+IWPVOXtVdBnqf5OHQZ84qaa6eZOnZteb3tsN/cS1PKB04PKNeqbgeM/HZk5I9N3Ukl7fqTBAvWm5olINTTkhY9TS070=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxferUXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxferUXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93D1C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776259653;
	bh=tZ1uaKZYhQbYQt1dA/LfYAlZfpcSWuAc9MLHTPqXlSs=;
	h=To:Subject:From:Date:From;
	b=GxferUXRhcEJl4LMqTSfiEksmmv9B71q3VJA56EPmKbc1TwmP7ugVg+TV0aIMI0Us
	 Zwiw31HocdcFyvNiDhOS5Zr1MMvrCS7s3Lsww91T3BMxJqRyzVRK90X1GLEwh0Ivws
	 v+02FNEAU8GpXdU43r+VWB5rMRLumqE/mUSztykl0gbKqfq2kjbTGwLKoC0krXF6AJ
	 Q8CoFq5CEABISyVUdGGhGhTVnxIj8k/5RZ4T+YbfBiOdkMvkMIT4dSCqg1Q/ZB8L62
	 8BCnX2FpT0fp8Fpn0kxdKnGqYw7H4ehx41uCKpCbytwylzZWJJkwEFUbV50RXSu4Cg
	 XcvwG9rb+fMdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3A2F419B9
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625965368.10475.6608049399340566445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98937b0d74b53c0d109de076a3fb5816a81eb697aa343240b64f3704d0cd2762
Date: Wed, 15 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776259653
