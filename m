Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B75C1EB5DB
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749073794; cv=none; b=Vvu1ZkTSTWOwHTtkOJFjaLOcI54VW3XLZKakv4SXqgNQruOTFd5A/AjDXmRWjTZXg06Q5+R+EV1Fg0qko/Kh1r0ugu755Z0u//7KlTuDXmVcXvUUdYqA17L1HkqD2LgKA4RPUTWvdqFoe/o5TFsr6kuu4GX9GiqGjbAYfXhUbXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749073794; c=relaxed/simple;
	bh=HTQShnbnebjJZRVuhb/gN1hz37We/deOnWMIFFBGUB8=;
	h=To:Subject:From:Message-Id:Date; b=S8LthxfPp5fsrXCzxjy0SZOMfrbt/miLN8y0MaUb9LkLFWF0GEBNsyX2GWQvCOWqaQQ5EWspPyA92spzqJcsLCbiFq9X7Una1gbs3N/TbeOpVWb0X3wRgUxwXa8DM2mcFluZdaYsgBc1MePWzms+0J4j2HEukWXke7KOEdy2kxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5F15p9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5F15p9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7278C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749073793;
	bh=HTQShnbnebjJZRVuhb/gN1hz37We/deOnWMIFFBGUB8=;
	h=To:Subject:From:Date:From;
	b=F5F15p9oq3tioIlVYGd0lXADnASaPfdCOo30RELVEKOugcpHLk4odTNupZkhHpjKo
	 prOyZKgdiWT0jKv4uVnfAR7Ap8qbv4QX7PiWMZo+mNTqjtb8GK+E1c9RnOuar8xmBZ
	 7cO0ZT2iTCj1mlFdAaTHw8u/ntXloA+C85ePInZ0y46TAmrfuOO04+JucGDKinaCb7
	 nIbAo2YgCS4QRc+BKbU2DMoMOhOOzZY3usLRVEMduLV6oE+nMygqi2BSvE5aUkuYtT
	 /ino8/Nm8172Ayoc5QPSyrCVTTjeHIQABBZadzv5mEUHLfJz+zpWe587eGCJQNuUQb
	 v04XTTEwq+Yqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9224CC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907379357.27523.3672225691877943561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0406a703b85de82f00dea12fcb86c592d5562bf6ad5d4af91a2eba7401fe1cb
Date: Wed, 04 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749073793
