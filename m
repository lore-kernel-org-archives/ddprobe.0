Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9A828DAB
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706369897; cv=none; b=t0DAXN0r7sFFzcLt+a/Twg5TopTSQ7LXpQtE2wGpsozRWYttxSE+w7kHAtO3Qxu6udfMFLcX4cKCRRgMEIrmP/70d+pt4pqF6ImhpVsk1iaYhqK0qOsv1qQPoAK1JXcuzTQU2/ye/RD2rJoZAUNJVwbWk146GdXNoAb1m9yeq5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706369897; c=relaxed/simple;
	bh=sESj5dNxoHwu4oQkn2ytXFGxfGb/aBzj95jy6mkiMtw=;
	h=To:Subject:From:Message-Id:Date; b=sGUwfSWsP3jJcgKzeULa3WHmyQuH0U7fGy1H1iKq1RBYXuIcHpSaI229gnAUYDOzd7nX4hDxG2lZUN09C3muWGxy/0Wm0nd/iNw4+7csdCVr/92hxO34FYGGg0IT/ZPl3opleW1JPoGxGD+xekP78Y3/Gf6eGgLQ4mfJ7mvx/fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPjOHJrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPjOHJrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79208C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706369896;
	bh=sESj5dNxoHwu4oQkn2ytXFGxfGb/aBzj95jy6mkiMtw=;
	h=To:Subject:From:Date:From;
	b=qPjOHJrFsdbzoW9VFTwN8SPFNRWUNlw2ciUMyJ1M2Oi8Zpx1ViEFHEbh04f5kb5Sf
	 gDe5yYSg8f4UOzkav8PhXaNQ/bM68rbq1KNOfqu94bFVV5KIplmIXXq3/G8pP7xUCz
	 WGifnw0WMtvNjJVlClTYGTUO770y2Z3yA9a3WPyYxkjocLWyuBhrJaWJnMTeXEPO7i
	 w8SmuJYBAfQCmWXuvdx+FyRwt8R6bgViWoP3C7gF9S8tHs+oK5o+WRl/kUo7342Ksm
	 0Tznza6a1keCEv3sOlP5NxR3RsQKXYpB922tR9tJjMaC9plQj9IKJiEOAsrFdrgOE6
	 Vkg6E5E07PeMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60292C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170636989636.30091.6371908149985032655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30039c4ea824f4b7ac2f1be6252bb44dc8dd81bf13b83b28d94007209e61e83d
Date: Sat, 27 Jan 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706369896
