Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10ED77081A
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770926694; cv=none; b=FJReZuL56DBmerpi/ShmRRzv4/M1nRkD1gncHRIklZDSQmugJYPfgHG5jU8SVnaCP3aQQak5E7HPxoGwst+YqAORSxVmrpo9nAFbeZdQMdtTPq4EGbwIdRTNV8J+IH4hoCP7W0lgdRORbfhELueufcTA3HBj6joO/Mtpjo0Dg6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770926694; c=relaxed/simple;
	bh=5UhijPQIAbTYKUHm+UAaR8J7Qn9xEGyfgJDSeylvkzw=;
	h=To:Subject:From:Message-Id:Date; b=fJTmwwU/vGlmWGaji1fVzdliQIQGPAx+qOksSzLhKughcJVmEZEFVB9Xel1dQBTwKKbfvPCQdM3902DuAY5UitdWBe1NoXPsUXFkmxw59Fhhjq3Sd15b2A1UpFXg/vpJOOXE1Ll8PKyKqTvtUUdfcL8oYGwoWUuNDVqWiVf+ZJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWKQI2gF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWKQI2gF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB345C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770926693;
	bh=5UhijPQIAbTYKUHm+UAaR8J7Qn9xEGyfgJDSeylvkzw=;
	h=To:Subject:From:Date:From;
	b=VWKQI2gF1wVwROnXe65znPC5Lt0HQoO+zYwi3tiCclrK1P0EXd0MBc3p1B7sT7nj1
	 qWww7XtcJ9ba4yMd0tflNE8H14Qp5uQqea2EfChVhxI7LRFjwk/m1U8S0plQ4qBIVJ
	 asB7DPhEeg3rt60FJ2QFDOAKGihi5hg1dud6gwdms2ZGA8FeOO6ZacYpbTIUzHmM9v
	 DKDmLSb8End2gQXbG4BP2Jm4GFuCHeOA4TSY9j5pmM4OZwq9aeetmlO66A6QLW19RY
	 g5zWkazPT2X4tyjEvj83fSz2Ifarh5zjlVau6ocbXmiVIj+TvA065c2sAttAhnlIRC
	 f+BnmEaZ/78PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F990EEA84C
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092669364.10375.13880495558884873902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6282664d159cbdc05a8deac986e1ef0334902f630e3351cf4fbafc8c8218c1b1
Date: Thu, 12 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770926693
