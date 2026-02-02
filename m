Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A38A1E32D6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769997834; cv=none; b=TQY0YC7gLCOAZyibrWPdAIm9bUcLEwCcet5jvs4/0I913wyaYo+sW2yRY+idO0Y551jczy6bTHfTzlqDoaX5PSu4TUUQKIid4UJYziYyIgI+MWUj3DJ6ImumtVfoRAkvWIMrFjsuVVigYD6QiNTGKai4v2POTdtFV2dp6FkTC/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769997834; c=relaxed/simple;
	bh=SjyixsmRnk44e2MnioV4BxRy/dsPH044+WqUNLqwktU=;
	h=To:Subject:From:Message-Id:Date; b=aZooy88DltrZloY5ZmwUmRAVjzUQiCOATndyml5kFIKZliLukFnYrB8AI4ecJhFBE4CIpGDuNFzKiOA0/bC5d78W+2p80GuNvEuACNUwcqjPtD7xWB6EqMKOHzaTJS3NzJNFZR0fY0GfC5o8bmy1isKww5z4M0B8iU06wKjEnpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0zF8psB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0zF8psB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC74AC19425
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769997833;
	bh=SjyixsmRnk44e2MnioV4BxRy/dsPH044+WqUNLqwktU=;
	h=To:Subject:From:Date:From;
	b=J0zF8psB2dMUICXJfFC2vJYRvSNMt7YNJm9IuOHDj2Sc8P3oaXqX0+2PD4xRPNLFJ
	 8yl20q/VojVcESiuzbh6VuddH9zIgO5vETjJc3Pwd+Lt6Iy9u7D5KmQ/RrE1IJ2MRe
	 iCSiRMUkLrlRnt+HPBPmnSOhEjfW/9jIqMyfCdQl8hyM27WagTGxD2X+6U3c0hXUvW
	 OuMkV/3tN1ezvI7bIrA3EpvaT9TegjvMN2CaEx2D820abOCmhzDuKsJoqB9u3UtD3K
	 tt/dOwli/8pfl5ElCEKLmhmPoMNhiRwi0pmXJNwB2O9izNL9TlZp9SCet75KXKkgRI
	 wGNukt7c877pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B372ED172B3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999783372.31356.15206389550556164419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4aa7b648e6e109ad6a70355842ee00c84eb58ea9827f00e30debd359be85ec6
Date: Mon, 02 Feb 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769997833
