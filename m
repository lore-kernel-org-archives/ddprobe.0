Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD501DEFC8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736183754; cv=none; b=sAaHHOvEBsqK5JjbHLFKJNws5x8Eh7Rkc2QmfIElhJJDW6/GsneFwH7fMc/ulaTtEaXPRPBQ2tFlmm1ZrUgejxQ3HUoHKyn8nEP0gX958W3e0jaoZ1e/QsfHB20zl0DuQzjhkfuXwL27RxiNu0F4FdzP9yPh0uVBchwHFX1M1ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736183754; c=relaxed/simple;
	bh=NyRA05U/l99F6PPK70KpkgyvdaRKVh9lz7KhXtSKfdQ=;
	h=To:Subject:From:Message-Id:Date; b=nHasUMrH5Q6rGuAAlytGdgJZC4b6u3p+DnP8efJRnqULSgHZKh2QZHrNyM6LBNIgeNWAiLll5eFfZxV+AaIgrrOi2d1NqZlWLShdGfKjUh7CKsYrXCWQUg1opzVkaDdleLYkT5tT+K2az5r4F5aMqDv7uXIGz0qIxEU3fZzQKPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijYBQ8wa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijYBQ8wa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B2CC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736183753;
	bh=NyRA05U/l99F6PPK70KpkgyvdaRKVh9lz7KhXtSKfdQ=;
	h=To:Subject:From:Date:From;
	b=ijYBQ8waVeCSHDjPcEg1OV+p164R3wYBMbAaizRgD+mvwfKawjaZRJ1UPT9by5+g9
	 s1FpcPEmUVTZSov2FQxg2Dx9aBIR0Hl/Kq5KOuwA+L5+K0l1YfcZcavrO3WcRiUk+q
	 Bfu2gN4IvyBFta9qBrfq0tZupu9XR/K04AgkhOn93Kx6S5Y+fv1cXPVZrW9YaJrLGe
	 PAcejxgOMpJ9nQCsiahHzXwbgPO7x2+98XKU4Qawc044E5Plk1fXA7T1kRXiFgmPjt
	 dIGtrkbyKwu77b3g1p1iiGK9m/6+C4yk/2Jm/BKCRv40yhPEOVSsAHs6Q+IhgW6Uao
	 rAam1qtwdWZdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B352E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618375362.23138.14520315903695299260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db45c3bb61c3914e4888f83f72a95cfbcc790ec48faace687030fe92b11c309
Date: Mon, 06 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736183753
