Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4472D374E46
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780324474; cv=none; b=uwwmJ1Hl5w8pxwxki3TsMFmSWSq/x1m/8sQuJpGuSdLGbDFRAjBr/q2Xh+sFPiTfUU4kk3F7cIR6H9GN9GkfHRcYgHqBWawPrwG1/zJ7Php3F/U/kpqgj8UZCbv/e3N0wq0v30o/1uPWZTU9S4Dhcqh7KBThUPdFZoRVpJdhEfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780324474; c=relaxed/simple;
	bh=ToYLCqXA/eoQiquNJwgCHLJRi+Z9h1WwEoL+zvryAws=;
	h=To:Subject:From:Message-Id:Date; b=vFIFFV8R2WBwAboWRb0NTniZSQ/0YcyfC/c5toDmZo4eP4z/iPbKUz1tgRV9yx83Cjcdua83AABFHht0taztheMOSbSkDmZBjXoZN9wKFG6V+AtUX1X9fywGBd7RLv3e9dxe1AC9bYJLI8G/lI03xdraisPYRKdhvVYgU4HoM0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaNtOnaa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaNtOnaa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE77FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780324473;
	bh=ToYLCqXA/eoQiquNJwgCHLJRi+Z9h1WwEoL+zvryAws=;
	h=To:Subject:From:Date:From;
	b=iaNtOnaaTCG/vnYjXVVLJGsACt+CQxrL1KEPPUeen2E3vOg9ItK+GbEYfaZz5H5Os
	 FIuP5KoHGR3XUFLYXXZ8FrWYZLGXZjTJDw6Golk6r4UKo7SMUZ8DVlJkFb8mmzB5P3
	 X74bWyIDzNj+1a1axHp3ExakmH9934kUfX8+ozEE52qROWiltrETEBXOZgrS/MKnDk
	 TjyD43bcz8ywSB55Q8GjixeXptSAwB8lePKhfOTSpQD1PmDekxMM985jo6HZkQDNNU
	 0U8wAcoBFsg4zThZBQ9CpKdxFfKZd/cUM+3fnw+wdNgbc7GytUnOerWJ6QJKpa/RSx
	 Qdaxx1I2iSdQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB285CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032447372.17384.2214829870996949480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02560d7c6219918fccb2842ce9d1b73bb6a179013f339a7e3ef4157a6ad2c5cf
Date: Mon, 01 Jun 2026 14:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780324473
