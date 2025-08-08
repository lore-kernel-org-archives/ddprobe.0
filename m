Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3939E1A2381
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754635794; cv=none; b=dsrZNRxxofBDrdYQDfNdg+CINNbPW/7+xDg1UlKLXSocIsrAZhimSFC0zywUpk9Rgtmy3sI+pp+BGI5a8elVxph83XxUOUUgF21cbpy1Bj2ZsMEgZ7cbZHwUG6Lvfu5BGTIYl4QiqVxDEQzIDcAKJwnNwTRyZF/4hxXnABgj17M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754635794; c=relaxed/simple;
	bh=wbK6Pb0qa0J9snGYEturyGBbcHd2Hm+6qtgrb+pG0oI=;
	h=To:Subject:From:Message-Id:Date; b=mWQ1vR1fdWlrbGCW1k4domy8gr+rZPhNQ9m+5V/cqHfPj1UT9IS7nRv5HR0Ax/+PKCkNBzlwA7zEz++M1S517ACfH85wOZkaD7vOZays/YveE8cyHbI0emEaVYwpxPj7DOHS1DoRVMtYIk8cpkfNXWGeAVfLccXZ2may+xdtA60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bu2inGWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bu2inGWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3D2C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754635793;
	bh=wbK6Pb0qa0J9snGYEturyGBbcHd2Hm+6qtgrb+pG0oI=;
	h=To:Subject:From:Date:From;
	b=Bu2inGWhwUfYDaDD5+J0iHcRPRwljiRHWcnM7dtT6WVNIYIpQERAxL4ykEY5Vfbtg
	 wMur/ky3QLYyVBWO2dupkZREX57I7s63uN0QzjFmPdcKaZ7ZdDccy/VBnctUmezfOk
	 zgC8RwHUa3fqJFDAmpF3MCT542CPA2i3o/nuKrqUL5AJLSndxBWJQw0Hyohmn8qei/
	 h/V5LFkRxJOHRER94potKggcPefFoJEAoHYMiKXcx9l/950kSAC6HlYHLuUkIDG0+6
	 cVLy18/0NKbyDH/OxG6rIzWBzaZ0/NkYNQnN3H0h7ga4XuRkHlcNNWt0PU0CaIUKnZ
	 eNsDftcmD8ubQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D6DC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463579357.8305.4328332582531892310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd625ff4dcd4d6e6333842f92f732537d77a5347ab9f84b0301fb6d42a6ac74
Date: Fri, 08 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754635793
