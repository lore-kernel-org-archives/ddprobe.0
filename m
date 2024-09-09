Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281451B81D8
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725886554; cv=none; b=SHfC3WJZP3QYf8phBj63/PGcqP1oGZltIMNpoE7mVeY12zDHE9yAM64zAvWi85N6oYkGgAAyjmN3ynEXJfg+QaQnkRdwzx0jjRnAtADvX4JB+UhHplnEpGBY2iQBAZ3EShhJXuTwN86Tu2kyS8Jeq42OOQKZeCmWxYlpuXNqgFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725886554; c=relaxed/simple;
	bh=Nk/soDZjMKRHvT8/dbKc45cerqlXsMQytRy6HqtaT2A=;
	h=To:Subject:From:Message-Id:Date; b=OxqBfHYX8wdHEYFRyJHCWpzNse2JW9PgHzJ5Ph6FCcp33MZfygHU6cGwfUaDTRiYrTmCON7zwJDrkx/A/J2OKK47QxR/vzcB9w0Tz/B9bPrOOCNzjosXj81xpzrs4k4CUWGErQD5jCHfYUW4YJOz4LdwrEXovRBUGRIsVzmdty4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z50Jtmdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z50Jtmdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A408AC4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725886553;
	bh=Nk/soDZjMKRHvT8/dbKc45cerqlXsMQytRy6HqtaT2A=;
	h=To:Subject:From:Date:From;
	b=Z50JtmdnDBoG5Eijxc378A+3s6Orp3gVhkUl39GB1XKKNG7dwzWrgJnofpolEA8rS
	 D7cADG62gXzWgVrTT+w8KwV1eFx7tQNNfbnb8Gvqq75qN5mwJdaoyjPYb/yz6rRSWx
	 G8AgpgWC8fKZNt8pKH9cJstG2wtRr8Ly4iGes0ApSQm0ol9SdXEpQ+R/dxYIsWrEGx
	 piqzTU3mHsNguLiReWTzsy0ZlXM+oxISCudXvxLPcPgP0T4lR5599fNj8cDXNOkEMs
	 Hf5X989haERV5g+7AJNkYa++4rgLFm0M5JKaNfJs93qP/kQxSAN7Uz5d7mYhYxhyrf
	 nCIcM72vLty0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9272DECE584
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172588655358.2888.12990992191601673430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640bbfbc401b98fb289c2b21b718a919b38c9df960d4062043d7daaec549e6d3
Date: Mon, 09 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725886553
