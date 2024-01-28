Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0929611CAF
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706437097; cv=none; b=RILYosjIy0I35mDqCSlOSQ2/zz471rJEVYtQ/qH+KBzhwY87jmXwP/Niq+jhrT9XgPkfhIJDKAZ/nDKCysfs+k25jjfqCsi8jAOhtzevJgrrrrzNACFIArjo5uAIo5ZvBBUspRNZ8huf11Ku6ZcFG7lGesN5w1XV1Y/yMql4s+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706437097; c=relaxed/simple;
	bh=NclYYPGTGsQrdiUlCWjOJm94fFj7jKNagHAAzx1tfwk=;
	h=To:Subject:From:Message-Id:Date; b=NVtbRvsYCg3k2ylR+KOYcCuqWHgyesbxJd3zXtZ+zLdh7pp8gQ2BJM5A15xZjt/xatiTFmPL6+lSIIQYfKPQ9Q66URp8qT8i7aindY6MChUyadiWEZ9b67EXH/aa3hbbtXdOPxUjPpdhIBz9BJQ2om4sjfK5G1pw0nz1n5GmwOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTDK8lZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTDK8lZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78EC5C433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706437096;
	bh=NclYYPGTGsQrdiUlCWjOJm94fFj7jKNagHAAzx1tfwk=;
	h=To:Subject:From:Date:From;
	b=rTDK8lZ8kSz8DRO5SIR5y37Fl69453j/VpP2DQU2T3y2xn2TRm4sy597Cl2X/tjia
	 Y1c4q0TeZFT+hZL5fgLRRfqhwK2KTc8tjI5i8rZyIHFeih2EGlxYk7uuUHWK0eCJQK
	 6ZUQ+oBwz9OMpjmDLVEtD3bpsP/z0G1ImfCNNZ2aZN6Kp1aDQbPiV1yMLhii0TSaGx
	 HX4GdOZgfT2eHs5f08m2to0IZz87i8xLzB4a9caTc9jWHGSuk8KP/gGP/1KWzjycgi
	 GW9XGid5MtOqGeT3eBUMQeUsqKUU7RjB++Y2xg5L1C4+QufLG3DF6SpC0xrucfRPG8
	 eEEmW8L9yKjBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CEBBC47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170643709636.19463.4506930379765525904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e532dfd70380ea97d7444507a86f32ae8a6d4e6c508114c9eb0ecd22c3aea5f
Date: Sun, 28 Jan 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706437096
