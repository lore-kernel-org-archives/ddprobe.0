Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4072135977
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743172794; cv=none; b=H9mq1JI9N4MUmjf4lqpgDiXKKVhi0cPtHiyw98SU9b+YQq4zIikWg9zeRxZ4Mpsu7VPvkbirN9WJHdTW1w4fxo6j5DG+FSDSohF35OK84GbYeM7Pz2n+q+iD1B/Oidz7g5JOXO49yZtt76RXz6pHXq4ycfVXkWqXVROy7lI+yNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743172794; c=relaxed/simple;
	bh=XgTyctwbMkIX7dCtsuIsjnRX7MMM6C5buC3DKX25Fg0=;
	h=To:Subject:From:Message-Id:Date; b=nebx/PmvpFW3104fxNjTPMOa5xz0mJSXDtfMfNM2ryX2UU9ovazz1TAXbmOnIL3u/OVh9NFrqhKzFArwUrse7DgpuGCT+VI+EYNtBlPOk2QolDs1lY46EaVY6jQMWccgUNmfm3Ty5vmhMQtoewBMVwvg2At7FFH3QVYcDpzPRv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5lCPrCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5lCPrCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B002FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743172793;
	bh=XgTyctwbMkIX7dCtsuIsjnRX7MMM6C5buC3DKX25Fg0=;
	h=To:Subject:From:Date:From;
	b=V5lCPrCuZE9alglXdVBwLnNADVhywwiPBp0LVRwhPdi3YbciaVtKtMunnMb+g2acT
	 GPxnTwT3jXKvyFsuzHv4A8kC3V1YtOgdBE6Bu9kCzBsa2YB4+QRfD9WwnZ91l71AGW
	 9zVAnhnQaLxJqTBmhyOmRlYphPUroCy/0mlc9nLm1wCLGPb4F5pK2hLWxQYWi4uvL1
	 MLlJEEPd5G/DKNO2BSX3zfuq8+OuoW3eDJY1sJo7pbBU5VL2E99exT7A1AfCVJ8Mu2
	 OkDGAfkvT6qmWEiO0JcNq616Mn/x9izxN1/gVyM++pXeGlBQQMl8nHSotTJXtVA16e
	 x7Hx1edL/xs6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12BDC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317279364.13376.16915661931389158022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25371897a740653df35bd09aaafaae0489c78c2418ec6e3ff2b07d28212767a5
Date: Fri, 28 Mar 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743172793
