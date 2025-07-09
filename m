Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3504918E20
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752039594; cv=none; b=gR1xeJUBRBnNrBo3kXRytzuwZKgfFY6GVzpWDvZcJeSEu7nCw1PvRaOs3cKE7Mr7o1VcETYHQiw63J32jNrDIPb5vVIfXcOLDqBZs4MeR3j3OXWa1ishkNMOqcyUbSUBMcPFkB9kZ5ZVF9uAYpNA9Atu/y1hQNT5qdqA/FPa/xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752039594; c=relaxed/simple;
	bh=02ISybaYTuXqi1NrtS6voP/5y2BIAfYm3KOwR2QP1eQ=;
	h=To:Subject:From:Message-Id:Date; b=CQnOBo1Qiq4++hSnwHS8bBcfRqrOM/j7WfHC79dpQH63E5oo4XIJwgD4to+EqKaDtKFqtEAWI34Yp2kj8j/GmEwqhjTR4mcZPGbYT4TeY+ky1mQUerGF130nyxvjDUkkeoGrvTZ+iMH4tgdwginpwKMfIbqnFXHzIBz7KI/PV68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnSVaIoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnSVaIoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A340FC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752039593;
	bh=02ISybaYTuXqi1NrtS6voP/5y2BIAfYm3KOwR2QP1eQ=;
	h=To:Subject:From:Date:From;
	b=JnSVaIoAUhQHCtiYSUyMK0Kv88yb9yeQCNESx7yJIWe2ofHWOXsBp54lIGV/mFmD/
	 5EvP0nMcXfHz4YCf373Hdhbv9iuHdb0ZEqUMFGESRGyp6jUxzEuB2S5eDEgg2KQiBj
	 nCA0h+cGgCGfdXQNF/mrXPhfgkJ/7u7O7RbZU0axV3VW9Ww789du8bKYaf2bb0d22u
	 pNXZU5Oul5f5rsCKXZZUY0ATRnQAeiwHigX3c7PZrOrZWK22z+MXcEjziAOIlenJFd
	 1QfDpjg7JCDRC059jbv3lCxOd6oj5IGNIy/3o3tZSS04y93USFXahIMJ5SKLy6c311
	 /oAU3DHwOMpwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D43C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203959358.20380.9696510503046798856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0bf0a2353ea5d18f9d199b581372379e709ece6965d7203cc95548257bdbcbd
Date: Wed, 09 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752039593
