Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50003139CF8
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 22:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716761063; cv=none; b=Iw8xo/CaN84h9Bfz5pkBK8YHAVq/fWy4HKLyoOfKxi7Wwx8s6LyWgfb4Le2qzxD50uV65UPSJ5oIDlKZ8WJkL/Bst8pYzjPgN5TAhqXvix7NLra+rppca6e+VL9JNR/+MsAdPN3t5G1ppxJNiaZyR7+mSSyM9btOcmMaLfKVdKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716761063; c=relaxed/simple;
	bh=bXq7wKzpQM6aJnYVx37fV69ANyrpbhaf1pWdvfl25O4=;
	h=To:Subject:From:Message-Id:Date; b=T7y4kHWVleMeQNQhTEWt+OKAwcYQplqEH2/aQWADFPtg9U5Ns1mi2w6wFOu9WlGLgCoViXtJv3MiVE/WbRkacbRT5tsLycnCm2R9oHzNTaGbkvKcEv1fey5eIeTmaDaD3sQTp3PaZGrmHqGH17LgWqOVANjcFShqhFtuYyoAJ4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvZi7rEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvZi7rEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9568C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 22:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716761062;
	bh=bXq7wKzpQM6aJnYVx37fV69ANyrpbhaf1pWdvfl25O4=;
	h=To:Subject:From:Date:From;
	b=DvZi7rEVUvFRzDP02wlpt8mnr5+J3/SS/2fOGWVwQHiqqeBA3IQBfdqyqJSUrtWFr
	 QqJAajA0um+Hvy6Kfw60eA/lepqAkJjY74rVm2vigI0M4iyWBHHd15rMEASvqhrUG1
	 vsMEgKaalpwx0UPdP6N+T1hGgZlPO2+34ftz4eMMg9aSsWfa/iMnTxI6I/CBg6bl8f
	 rnDCIhyymrpqEIOiIYwYKbcoDGnXQW94ntb0lygHDOmX7LUXP5bHIP12qkvP3kFJRM
	 IY1zqoLoxLZgN7XBa3ThnGAE/06OHEuilbxCOKEEgTsYfC4kcPIArchTTOhFraKEZF
	 KLSUeMahaDVyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19E1C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 22:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171676106276.21531.16670278614850991944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad927f8da8df696b717aa9d263237079d4ffc3453117969c7407e05b008b356
Date: Sun, 26 May 2024 22:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716761062
