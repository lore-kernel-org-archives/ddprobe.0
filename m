Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34343149E17
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746305994; cv=none; b=UgrEiCQXTZCuoqkjRtoVqX1JYTqwRzCWedFpFJ2nbAZNTFN54lYsEqk7BYg3o/7K25PEDsJMlQVfIIexSMuEtBjKWHZ25thLwCm58Vak1NBgJnTOwVO8VIEvdlxpID8fKVuB16qfb/QBjaAWUv5r9hJ32f0+fXOIbIfMljS25D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746305994; c=relaxed/simple;
	bh=HxAUkgjmRjd4RaefIEwsokSLAlx4kOCW1R4zfXNEQWo=;
	h=To:Subject:From:Message-Id:Date; b=J1+cUq0/H1a4XaBiOblzriuuo7lyE7QkzGM3Xwh0Q7uzNXjloxbrQzoGXCSQgWqeR9Pi2ORPkmRAZu5WthMRrQjiWxgTes92AHfRqgLTwP0e4ALjlQV/S54T+86jtDhN07/Wugd0RZhggIgpQBAVS88jfGUOENnXZQv2WkFRtYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6/rruDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6/rruDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F73C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746305993;
	bh=HxAUkgjmRjd4RaefIEwsokSLAlx4kOCW1R4zfXNEQWo=;
	h=To:Subject:From:Date:From;
	b=L6/rruDItpcKVkcdKPst6JRAyAvNb+Ki+iJqQwuGOrtfYYRnuEnuwTMahNaLe0Q3x
	 R4ejrUiXp3cVfsplCZ3hPKX0bhX4++EQLmWHihf+LivOd8MpInsXUG2GyUEmY7dIu1
	 sJTZyDFMmCAGAY79vSTmzvuuS72tFGTbafnixRSb7/Mvortv4/VDVdXIpIZWMZzzIF
	 WVbV/LjBQUoycTJuhprNHCWRLNHZ5aaVx5vgdR5VaTIY9TJOQV+IOi3lNybfVOZcCY
	 MN/WFaz8/8Kn3OKY+e5SALjf33ea17xNr/St7zPeIb+u3wJI2cVojUcI+/T7MdzgyB
	 h4NsJNy8RE28w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EFCC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630599357.27938.7142640779968294078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04ed1ffefb88d5b0c910b224c984650d22d1e202fd7f4a53e8cfcb29c79a04c
Date: Sat, 03 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746305993
