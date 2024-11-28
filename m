Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8996E2BE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732815954; cv=none; b=p6z7AR3OjzeTE0je6iTd8SCutL7bycfU2SXNicCoTL/LUO1iCPi1brlCbRhxivI9FmkFqJ4tdFXUtcSuFShFpzDC4j/H2N3U76i5LM7wwLB/srKQPpaLegYFFxrc9KpD7DjFPvREmhi1TLEe9ZT/ZV4KMjD4CPM6kgk1ddDpEuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732815954; c=relaxed/simple;
	bh=ZLvNz68jC+4dsciqSnOR3sJg/wbfxYRAyn422qvccok=;
	h=To:Subject:From:Message-Id:Date; b=Ucv82DqQsozuyaeqUq3TDE+5CjNa1WGhByRrmv+/HnxMNlGgq83/usmr4O42lI1LMWbepXs/0KGDov3IeNCehMTeyp+jveHMlgXUwY9lf1qZpY/lKqvxZJf1GKZRYewnZJIMDsFyXeqAFaWyYH+8iSGlA8R/nYDWSC5oCrY2QzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQmLiXvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQmLiXvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1460C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732815953;
	bh=ZLvNz68jC+4dsciqSnOR3sJg/wbfxYRAyn422qvccok=;
	h=To:Subject:From:Date:From;
	b=gQmLiXvRheIWQRN6gEUI/00x4DMCP7vkAMrBTFj1I1/i9EMb/8DsROvkMGkqCo0Ig
	 3npYIppNPqwzA9U3HrCH5nOgbVkzICgcDDInRkFR+XvFidbRqHagZhEQmylyKhh59J
	 o1atSU/BVyyAn1EDFJcRP8m1ngOcjdjV6VTU2nN/GRRBMiwbfATse4yJ1/4QNBaGgT
	 68lfgfkAgypUeRacbJUrfA9NJmZytqYE9agptVv1EcPjEvnGfrEQWqWDLnms242cHU
	 LyqNd+T37GU3ludDpK3sc1J61I9qB16ZHoP095nw7cC0UysumPNY68mPd9Jnp6kh/+
	 ++jEXUL9QT/wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A01D70DE9
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173281595358.19699.5478498302837814596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058e02e39a385b80510c8082f37a43d5e00a608a4b397fdcd0cb9b3b3e1a2b70
Date: Thu, 28 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732815953
