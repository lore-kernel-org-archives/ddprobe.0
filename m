Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400FB15C13E
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730636754; cv=none; b=mMygjzzebDHIMUl0VoC1eL7rlejQ9+5K1qW0csgnIXJNcN6XFseFk0aQ02gpyryQFyxZq0lquLGm3AN4BrvusteE8aOUM5o1MILjhoIiRMCPNaH7ScZZxRTrXBLBikD8ini+eExaB0bObph2jVoyggrwa3gMWU28s2xmnAyIRjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730636754; c=relaxed/simple;
	bh=Nc/DhgRU9pM/0iki4fFNcq8yr/a52FuOGRIzzjF+ikI=;
	h=To:Subject:From:Message-Id:Date; b=S6N0AFogwVhJJF1+tKOeTGcEkDeAN9nwKRj64RgK5ZfJnXWuM5bCj6vx75talyMP4ErXz4URPK3TauOhZ/WKq4sVBXtj1Z/LrUFT/S2lNMnqFXcNm/yYXls5zC54yGBO9p3GpuN1BU0YEHbEG0QnBjHZWHLZkVrdx11MTGf2xPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfXAeea2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfXAeea2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF6FC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730636753;
	bh=Nc/DhgRU9pM/0iki4fFNcq8yr/a52FuOGRIzzjF+ikI=;
	h=To:Subject:From:Date:From;
	b=tfXAeea2mruKLtbJ9Xktoww2Zh7czenJdUAAHiBuTaE5p0AZndkPXT/GXv2v8ZNA8
	 kZdrSxsKRzrnV8UbrO4r+eoDG/SbMWy9B6m/M7zBk8zT2tizYmXae2kacoUBepqemw
	 oj5CXl6aGp+4KBgvnJcusNYMlXNMNL3v9U4lnSjREj4fb70LDqPFMh6Ohg62NZEScB
	 bW95ybQisDO+ipeOI2FvVcuvzg0JDaLlL6Ayz3ldS88n76dr8dOYEr9V4MMUEsm4T8
	 uCLcP85NeZcbpz7cHrV/a6lqvLngyGkW6X00C+vlqTl0Youd5Po1jRNyvs7NyTwUoY
	 kJGxi0xxZChSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9649DD10C0E
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173063675359.22993.11607387201650363107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5543a850c776df23aa7645a3cebdcdd20e82104976eafa4a56dc6f27046553e3
Date: Sun, 03 Nov 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730636753
