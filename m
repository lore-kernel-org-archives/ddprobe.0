Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1FF2FDC49
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755023394; cv=none; b=ME6t7qwYUSY4g10qZG/KH9Va7gr5GfjbTtPAdhXgdN6q/MZWvGw7cKJWr+slwfcUTztX010zD8UoQT9H5g7PPLN0VFXHCxKGUiCzutWQPzLnXwnfUDsQGL4nxrK7ZsQVVkrJIhSh2xIbcVe41etiBC4AfhtHx3ZLKA3AUW2mUsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755023394; c=relaxed/simple;
	bh=xhp7xmvtR+JQ8+pEZ0mVe4AZYNMg9adUCcOZwT2pJYc=;
	h=To:Subject:From:Message-Id:Date; b=Sz205fMzO21FGU1f4AGuGYU0B4u4x4oKGPN7H17xE4AVXmABcxKbjANeTGV5uXWf6Ri6bSuU6S1qYllunDsTLqbg9RORZmxsqJZ/7Gl04NB3xyrKJYoVgpirNzbSH+3VTceOd1BhgWI+tI+3SkbAgNqkqmdIh15131S0sgvffR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKt/mMxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKt/mMxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DEFC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755023393;
	bh=xhp7xmvtR+JQ8+pEZ0mVe4AZYNMg9adUCcOZwT2pJYc=;
	h=To:Subject:From:Date:From;
	b=LKt/mMxevYuEMTxzi6rHwPmHZAaD12PteGXeC5BcEvRFwVwsB8kpTBNtPU2mC9xeV
	 e1Bwf0rMOIhTMgre0OUEufFy8s0ok16QdO06C4BrA8HxMkAS8AMOlgvDYS52svb/la
	 DJgA8O7W76Nc4+rp6TNtUNoNubFADzh5EN8adDESVSUguTdKBm0TBI9o8vcF36lyAY
	 e0pJplxeXjUrh9OGapydf5WQSGULdt3UooJEOFG7CVhOd55E/2lo7wllDTA33g7Y5m
	 muBXB0JaWSsIHkNS/o9rGg3LC86YxYna6aSGAhQJcjs4Bi5iSmlS8gBHOjDr15G0Bi
	 +j9j1vyHatMyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F09ACA0EDB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502339357.26517.6184583490209781333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5a69ff4db934aa60e41af4fedad2cc79e17bb1700a26531ef2e4d05c33ef97
Date: Tue, 12 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755023393
