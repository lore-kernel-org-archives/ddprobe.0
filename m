Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F8C13D521
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755929993; cv=none; b=UPlzJW8psObcBcQwoAKhAUrSiunrQCCsnmJK0uM+VmH0GKdD4qDe78uBbMXoHKaFvhsW5sdpgzgnyFYXpY20EISeIeeIIxucmFt7HtR4+nhPA1Sg3dkr5bNgDoBWteUcxzyVMzcsEaVzvwRHTVnSb2wMNavXRpX8cgUF9+CeQg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755929993; c=relaxed/simple;
	bh=kEX97T4WRAgTepsjOZ7uZrehoqd1SD9nXKMdSVXsBwM=;
	h=To:Subject:From:Message-Id:Date; b=nSfmUkbvqNjrve+GY2YAInCH/iT+vv16rKPkxh9ZMSmRkcJ3hejvyucRm6MylpNGEvrUMG2XouWCeeKWBiTrBFivIuETKe7+9hqOUlSRxXBk7InD8gFwME0OpyLsc/9OeYsfP4NGl34C9Fjnek3hhyAxtAhei3b1sXt4ZNzHDho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImzLYQQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImzLYQQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDE9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755929993;
	bh=kEX97T4WRAgTepsjOZ7uZrehoqd1SD9nXKMdSVXsBwM=;
	h=To:Subject:From:Date:From;
	b=ImzLYQQ6RR4dRpigkEk1M3OcUElD+RPAhSNOf3ptY9M5zdqkIdnweeTpXAsOmUawn
	 eTwgYnDI7ZBuDZTprlAFlqGQ6SXVlZX6hm4sGkgNCBGBcv88HAqhiNjO6GuLD6KvKh
	 UEuibyA/aZxEHBOeleta3RvZSR3AGBeUy6Qkyl8wvAgIyuLnN9ppfTA/m44JI9W82S
	 ppKkqkuGJKoIJu68qqR1qorWdPuRTSOYIlyWgr/+blwnocUaVTkDOQJh64Oqx0T743
	 bhSGa6HSoT68HVqJ1CNh5bm5UkH9Axi0e+kYk4uO307nc9zpvyLkeBxScKlg5yskhb
	 MWEIq6jfZQn0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCDCCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592999357.24050.3200503835876217322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c86e44db358677952d0bfc2ec9ffe587911024b986945099050a0302c3ed92
Date: Sat, 23 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755929993
