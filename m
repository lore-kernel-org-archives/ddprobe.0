Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9B83C342D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785445234; cv=none; b=ftI1WuoLBAjM10gp5S1q9Hqs10f7AnoP7prikKk5GPBBtVreeiDXC74JTydkBUBBPTL7Ung/bBi758u/1ekPHNBdgWH6A2XMHlJ/HGKUyl4EAxSTpClGbYMh2u5nMFzF85YEMMd+J2NzMrcJfK3mN01aEiK8bC7xkpqLanSXEG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785445234; c=relaxed/simple;
	bh=x3LucScvQjiS3j2ng5x5z8zFce/2awEJ7tZ4Y4CdXp4=;
	h=To:Subject:From:Message-Id:Date; b=KK3enKyo/CuEfgybaFZU78TmJVwfyiVm71p0YkqwDdOyx/o706n+FArvqPQwoPHrz4irPNUbPVa3y1zW6MoLM7IqHOJX6Sndc8ELYZK5Hqbuw9/X+tsakg7reBXE7BeGpQ6TW+97xVpCRraSLxgv+aWZgES5wXlSCNOlHvS5kJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7Nrsbdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7Nrsbdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC107C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785445233;
	bh=x3LucScvQjiS3j2ng5x5z8zFce/2awEJ7tZ4Y4CdXp4=;
	h=To:Subject:From:Date:From;
	b=W7Nrsbdfa+WpodcQigKa9ApZqXXwwIAP+OUma+RrtrQetE5wiu1OXtQiNswB3D1B+
	 hOM8P2KLTAs4mlDWkiRNhRjoMkzCZz9aZyNZFce0zFtag+PCPvHWx2+jhnUPudth1d
	 lx956E7ndaGXd5xY95m1BfAbLQubid254Boz+eVsTkTjJpUqbA2vmGYPOXsx0uiWVZ
	 pewDgD/037O0Thg5KKba11LCp146G3c/MxZBUZlarAjkqixJiTpxfIR/hId/V+coz4
	 iF4et6kJ4AhgeKw8JzyPehszjlSCwOHGYlZSL+ayCa6E+Ah6whfXsb+/2T0Fp5E5E4
	 D2IrkxIriEH6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8636C55167
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544523368.4299.3073528834207567396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35eae2bb0f29f019a902505f50225422e904493529897f29a195a8e833c5b5ea
Date: Thu, 30 Jul 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785445233
