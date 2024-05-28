Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7B6169AC9
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 10:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716890663; cv=none; b=vDIkz+ZjeNWo7PUI5xIbGmf6WPz0ulB99AbPK9Pfns6bLcEGCxaJ1AwdzGKRTF/VhJKE6xLs196G3WlQy5DGv3ZYtIItMgSvXbRG/q/QFTfv8cxOqHF3oJSz18228Z7fzcJFx5fSZNtkFUbQmotmBLpVqG04cUDrW69Q73rVYDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716890663; c=relaxed/simple;
	bh=hwl7uFMWsBTorPs2JE9jodRmIr6oc5fhzO6AOhLY4io=;
	h=To:Subject:From:Message-Id:Date; b=sJTMxXwuo029WDbvJkMPI9jlyxuAmnH4Z4uhghAy7FOTsmi19HOPjqjxhTRPkelgH1b2v5sgf0cLxmyKv0ayJRwSpgpFAkyLO8vdGBRlv0N+Hv2KhrJrdHkCmCPXY+FagkE2X5y2VhmvcVT3HMXGaRHnXVVKpbvdmToHLZlhsSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORy86YIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORy86YIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E28F4C32782
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 10:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716890662;
	bh=hwl7uFMWsBTorPs2JE9jodRmIr6oc5fhzO6AOhLY4io=;
	h=To:Subject:From:Date:From;
	b=ORy86YIjricKnj7vs9DyshkdQctCYDT4b9gsxT8gttvtnJ7PeZyxZuBfnbSAMU/Oy
	 xHZF6kLRBkaEOYWQ//N4Qu6soii8BjqhX0bKAEKi9Fiw0mGIqQw70wsV3yj1QbxwYr
	 ZxCzZ9E6ilo5ytjmj3N5WtWdTx0kWT0YvzhyoGElQD1NrJKNEml82AbGiegLKsX9Tm
	 qXrYloOEy9GQlm6f2Kg4laSBuqCeLSi8nlqSxTq5YkMFmxoMBSbgksIrSYF+wpHaTB
	 7yj03HE2ABeKWy7NopnX7RMw+DMNUrV7WD6TWWTJ73JMWf6Gqj+RFI4/YImbpkJzmI
	 xWatM9jk2Y/Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C50ADC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 10:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171689066279.10415.14415508642181468810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8ef0309a9ba55591673d1b7cdbd52eac6e11fc66c0a22568167cc884cb77790
Date: Tue, 28 May 2024 10:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716890662
