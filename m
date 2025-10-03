Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0FE203710
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759532393; cv=none; b=Q0SuFhtdFx/nu/bpeII2CRnkUbK0TaaCq8tnnkkVEw8mdPv4mxIX3zei+czs6P1iYNxxNbWARobgCEe0AO5nKR6gtddicdrWnUw/jFRpOzpHwjN/nIX8K9+G6BvmWjcN+6Ymn/0ez113U/e8Tl0ryN2Rax1gF5x0U60IDPnkNME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759532393; c=relaxed/simple;
	bh=/TXbqBq5SeLd5ewsOFWLKDBpFGcxBAaMNQH7yMCl5o8=;
	h=To:Subject:From:Message-Id:Date; b=qRZBP/Brj45D0YJUiUlV42TSDrJgku6dnE3iGzLnWE+c1iZde/OrfmG35rxucJuPeRsHPdtD22gc6cyBoFmICQM0YVqFwVMceHntnT4o7X2Beb+sR2f0NrfMhdT9HR3rxw1BV8gjHS956S/E1dq8zky3FKanSlkn0JJbBGUu0y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oc0LPQs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oc0LPQs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5461C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759532393;
	bh=/TXbqBq5SeLd5ewsOFWLKDBpFGcxBAaMNQH7yMCl5o8=;
	h=To:Subject:From:Date:From;
	b=Oc0LPQs4MjwP4gUgfw1Oz0VdvyFWvbPckXs9y4TglFCRtsiOsA7VyHL2g1WT6KqlZ
	 HtYGxTi04ImWjVIovKudSThNqYdkSLYuicBFAcF3LO7wUjxLoITN+fmk+SwJuEllg+
	 4Yo+Sq6vfhZnXwiL/m4Te9HB6fBTZKSEZN7lwvFTUiBaTBE1eOwG3WieK8JInQMZIj
	 lb1sIlPCvBtGymK0tlNwprU0NoPfCvrYde82pYZ5oLcf2s6RTGGQu6yOJSQXGUcsTD
	 qKvQ9PrPkJI7bMxXWP7CRz7QjdYYFniTUUd777yBnOiCYqrRwQGSLsHfazHEM5OXQA
	 DVycy41HoIueg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94242CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953239357.4198.8848271879440822548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d2941baa100e1a5b65ef52fce688388d962d420442a462e2a67d55f6a90c14
Date: Fri, 03 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759532393
