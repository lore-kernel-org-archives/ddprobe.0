Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4498033FE
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732434954; cv=none; b=hOqifAbm2+eapn25LjyhIAtIhfNJQpmrRzg70AQJCmOUNCrV4lh7vS40pX6ePG0VBe09ApxbnpQ5JpXSPTg8tLzqf89Fzj5gZzHGnXYeYcPQ6Jd4ldB7VtkBwyLpDcvc+iE0/S9sf1noW9Rzw42paEjKH27fO9zGqsNynCAJ/Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732434954; c=relaxed/simple;
	bh=KUGK6U29Y5IX9RTZDvDuqFrvC2PA3WEKgPziP6gkiMQ=;
	h=To:Subject:From:Message-Id:Date; b=DofSS9+qd7pFO6hkhRIE8Vo/lMY41rAHoElTW0xRIcJapdGhSLfxWBWIQtgIy8RtPppf9uJcv0iTGaETWBlhCLYMFwMb9QwM+gZaFcsE0qMCopLEfLKOVHnyhh0i4B+lpczSC7rh3pFOSr1JGE7mfoeh0UVk65oe8037YZ/N0lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3s7WETh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3s7WETh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0B4C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732434953;
	bh=KUGK6U29Y5IX9RTZDvDuqFrvC2PA3WEKgPziP6gkiMQ=;
	h=To:Subject:From:Date:From;
	b=D3s7WETh0FS4HQqi5rkxIF5OHZuupST+Ea0TuuAvDzKPIOK4hUSyyqLKoWSCzqhEy
	 MNMMDkql7KrMq5cvSiB9d50dv8V8mCcRJ7IpA/GT3utye/soPHXaF0WCquU82MsoH7
	 7zAmOVzfPM/74S11ebIMwPIf6jaDZ/aj5+Z1vWq/LgAG2jBp/DZjXxuyo7BzL81w2C
	 TzDDaTQKGy47wzNxtMISIUZ13/bsaaj07GyGBLF9irI5T/gIZwvwFKFHH6ncF2Jbvr
	 29d1+6uHXzfP9t2Utfy2Tj8BXGhKhVP7STe9K8uB4jmOIS9TKNdjXpSmVwZ4DlWKbP
	 CR9yxjM2hS6DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94455E668A0
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173243495359.22004.3745243852273280083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9d7563621f0e180cde69059660f52954a2f011aebd08d19a56aa3ea3bb3e33
Date: Sun, 24 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732434953
