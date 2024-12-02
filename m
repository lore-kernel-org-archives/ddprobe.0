Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9D52868B
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733130954; cv=none; b=aa7bLgdNvNt8kdPEJIojnUwvqkIP8fsVifpXXxfohysjHqwiXhShpUHulv4Btbvz7is2CAAstFJ2Xvmn3FeofvJ4bAxiRMPKXCSpRhR7bW9LJ/pBlaMGp8uLKdRNpJVOZfSXZ1EcH4tBVQo0Kuh2jTy5j6Y2k837PWQYMqkTS5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733130954; c=relaxed/simple;
	bh=NRB/PAE3Vmd/ZbCr9e3Q+WKUWYpyZ6C4hXvDEEg6A5U=;
	h=To:Subject:From:Message-Id:Date; b=OSZiiefTU2w8FN40swa7+lLohnmJNJnhHJ/3qxRyatW4nPOoVrOsmbwuIUZoROW20xRxO+x0pmTueJS50C6pdXrTZuk693GeTtec5D5umjxfz6ydWNi4SiAB0qQwYaIApCL5bI6f4tgSzqH0NrsYzhFHnxDfoLOBwmKc0FHimKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnomqOZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnomqOZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB668C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733130953;
	bh=NRB/PAE3Vmd/ZbCr9e3Q+WKUWYpyZ6C4hXvDEEg6A5U=;
	h=To:Subject:From:Date:From;
	b=tnomqOZs37vuuhnGSTDFhve9Syokc/beuyMohwK/xhQ2ZsGf0E0I0YegNAPUQxulC
	 zTb8RE30d1zWSdefcGOep9U0wOyKMFmT+59+X2LjtvJg/z/W5b3IVleoblR5Mh1roc
	 J082uJPeS+YgaZiFEjtxMuoAHm+Q0LQKdwyveXg/ajsUlw8jgvtuqqkI5wYKsaHFX/
	 KcQ8i5E3yyJ6/7+f2n8VTlJF0GSRyy2ApVodwq7MfdkntodNjPX+E5y6/vXmHPBrSr
	 zzxfRb8l6a4PhU6YT/ZeSiE6I05EXTPxh+h+itjMZh3mYMrvEmfjEsIan91fwYbQyC
	 7DuEVt8j78jRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990D3D10DCF
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173313095359.32575.14096473331461593723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d71c67cc0c56f1c5348f97962114b015fb1f2caeb62d026348272499e1f1620e
Date: Mon, 02 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733130953
