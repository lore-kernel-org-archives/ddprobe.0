Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBA8395ADC
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785786634; cv=none; b=t7V3IcucBgnvF6ypgVu0drmj//5gQmjzkmJeTHTx1sjFyUcj0h10iW0oCBcP3tYyz63hy8RNggkVJN+4ar+TeCht9y/hRv70nAt8+B/C/oDIdYrfUAmvGEq8/sIjJrkWGgry1dloVC3svUAlVYsV2RRhwawXVvoRvX9Qf3k3oDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785786634; c=relaxed/simple;
	bh=wngWRYXAgpIuPa/CyQaPKLhX6lIlZGtBPHLqbksnveA=;
	h=To:Subject:From:Message-Id:Date; b=lUCGlODWBkKEwreyUJ0lDiGsYrSbXHNZExyFbqhHpdspJDq6/tWI5micIc/Tghp40HxEiIF5MejG5r7ED7JlM5mqyGEu/nH8HWUpDiVCih++lP5xVJbNMv43tCWn6VT796RxIHOljnoFVoPvJiOEBiMscXRcsIKs7mhxqyd7rUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1+GtFBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1+GtFBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF934C2BCF6
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785786633;
	bh=wngWRYXAgpIuPa/CyQaPKLhX6lIlZGtBPHLqbksnveA=;
	h=To:Subject:From:Date:From;
	b=F1+GtFBJfratETUpj3Xl1YJtqt7++0CRCdUVZDJCP8HSK9KX8Ef+74hvaDxnNBnwm
	 bEtjKnDRHkzfRttClU2SL69hm1FKYn5ZHIN5yPOHFpAeCzfBABDKVfcTB028DD2nfp
	 7wUcxx9UJmT+GTvDmQ8yBfg6awA3brzSHZ93fB0ef5n/fVmPFK3uxs/A9IGOlczb6V
	 ZlaJy/B1d9bs5zlrZKKx6uOk3X8qb1RDlQkUjTU7xJOL0FJK/juhNRpu5cSnqMrr2l
	 1HUzm8MpyCGZXbUO9DtmSnJ2aDgr62dNwYj8Q0YnZBN6bSQBMlBgB4YEHfdpTaqRr1
	 S41kERJBW6U1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD41FC55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578663369.29206.15146239927198352514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7243092cdfd53b5f1ec1292316d9de86571e030840410d5e72e75de473b16c96
Date: Mon, 03 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785786633
