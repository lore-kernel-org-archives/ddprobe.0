Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393821D9694
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751530794; cv=none; b=QWMZu3TcZkQkKE7SUeWC6g2lTNG+tJ1gfV1DXTq/XDeIISxLgqapm3vxT9AiLc0Pvpm/a6lL0H0cDAFmKZyBCxlo5UiCy9vET76eRl9l2gbkCCGLBzE9kR9aS5J0SdO+YbuP0pHcMGHsx57uNJOdUxg7abe0TGh8SdPnLbTuL8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751530794; c=relaxed/simple;
	bh=GfN3/u5wi57z1wHG/412s4gSrucvbf9M0PeqIzpzBJE=;
	h=To:Subject:From:Message-Id:Date; b=VZmkhijUKf4PboCGE5FUljbyqwsgNxGP1piBb9j0nzvrvYUgjVnr/z3Iwr3zuAkKtn2Krgkn1cS81GRKkJ6UI9A3LMogMPQtfBhD0xJKGItyGnH2icj9L4oQAjBIzY/5i98B12PobAz6ov0MHPWpZdzS2HJgsdMiZOfTSUM3lHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+f6sTZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+f6sTZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D22EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751530793;
	bh=GfN3/u5wi57z1wHG/412s4gSrucvbf9M0PeqIzpzBJE=;
	h=To:Subject:From:Date:From;
	b=s+f6sTZPYhCUWpcKS+SH4omr262xxU9qYTljZuRu3Rw6SoS4zcbM0eapoYhil8uHx
	 YTjGBHUp6YampefbGS3SEOHJAPgCQhaPdagJy2EPbOz8wIoj1Zi7llIVeKjRfSP+ae
	 zbPrvJ6Z206mzJxLiLcxYkh2sMx3URC/RF7tPezMKnsPeqyhL1CxbjsfMamzUdPjH+
	 9HoYH3hX0AQNwaBRqARUopk7QaQqu88BXudg00hljzyNjxGuub/xPpcsMJkcVyep8A
	 5bKr9PowFeHgug8r+5tdGmvt13I4CeLBUuIgqvXwVaCtLtylwUYf5U3KSFLQu9Kii8
	 XH45wXpw1739w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAABC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153079357.8040.16892889061551409877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2eb0076e06c8b9d2863ef2151e70b5206f15603547bf2c7b7ebf757bf13606
Date: Thu, 03 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751530793
