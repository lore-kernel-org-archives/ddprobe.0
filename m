Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309F319755B
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754342394; cv=none; b=ase04eJRPuvlLfm7gbn39PF5pQ4MdeB7z6mH5K80HU1BHaBqXpfestooFpouJKQGg0Qrp4l0rJ8M5uJ8YBJe+byQb1w6KvoSfxgRatRV6N0l29wkBL5MmzXIuoWRBatiruj4qdo5IKw8AixkWYryTvQzml562k2MlTitb2Mreq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754342394; c=relaxed/simple;
	bh=Vk/1vAdwxBvyAxSq1QX+cnzpqwIdtu241HbsMq0HsAA=;
	h=To:Subject:From:Message-Id:Date; b=creLIzR4k6l7aNei8aGgttWu9q+Hwxoo88JXNA9sZKWbKyPDjE11EOEIXqvA/9kuGesN6LzJTU7j1fPl9qMZwqD3fMntPpHUERkoTgSDQmEEham3NI97qjqP85PAeeIDrzOcp3uOM5KjYuxvYXaGFYyiuZg5cIRZRNw2zwkPmMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=us4hXiV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="us4hXiV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A2DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754342393;
	bh=Vk/1vAdwxBvyAxSq1QX+cnzpqwIdtu241HbsMq0HsAA=;
	h=To:Subject:From:Date:From;
	b=us4hXiV16dfhxJb8iunWcqlYYREm11EUAqqdsr7ww+LfvBO5Ocwy3tBF2fBj1ca8m
	 aAjz1yX+JUFHZh+hZ3gW0lXFaGq49QfGWF7lGGYavOOKgc3CvgWf2Nb6eEjUn6IPrG
	 Mi5CZAXpSUSLOafxibPhlKwtJ8rSZKSNwwt5adJcB6oruR3xVJFHAgc4sIWbkHKGBg
	 kzNtr2bz5rHn+CTRYTLZhG1Z5EWJoOStf1vGdKsHr5rEM+hxaXwr7XMsdA4Ctz2PRi
	 YfFreEUnEqavJ/LFPIhUfPk/dV90jTwfYskACTOh45JY86Kjg1iurtCM+oyDM7ANdA
	 wxR8Om6Z8cByg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1EDC87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434239357.6917.4623154952020764686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64f9cf3fb6149a6fc5c2a605a12fb99632ef54bcf92b18b843285a2d50638b2
Date: Mon, 04 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754342393
