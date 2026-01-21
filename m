Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963E529D29B
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768968834; cv=none; b=PD8fB7JRT0TnM+VOuTXhKO/KzXNZmLqwHMrCOxrqh6u912TNq8063jUVw1otV6Rq3xPGBHag1XpE1AIgwaF2o+Tc4qA9YBtlewdLQvTuj3OGue4l3afdC43Ao+FMPnatfZFCxgVvqMyMr2d+06tehIGDzPHvcoH+oQ7F73HueyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768968834; c=relaxed/simple;
	bh=GTwZKELwMWLtym8Og+lkgiNgtPHzGAjGvxiIXr4+33M=;
	h=To:Subject:From:Message-Id:Date; b=CJP8v99BXFkg3SFBP4Ox3THgCCgtT/gjOS/fi3ljCmNH0G4eyqA/2Ap8W1CDUnlZFDGWxVxPQ2D2GRc+Dx4HRSUQwHaKUEi3t1EXya5K1e1u5wQOQZVHpRjVYAf8WkVaeauWchpY+D2rGFIkvZ+GLnpPYqZnqSQ8NrM96CYQ4hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFenu4bE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFenu4bE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A879BC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768968833;
	bh=GTwZKELwMWLtym8Og+lkgiNgtPHzGAjGvxiIXr4+33M=;
	h=To:Subject:From:Date:From;
	b=aFenu4bErQx2vLL9AVWlPJwysu+hE0Epx8fAabULW5PHVRUdPSJJfMDu5RgHHKFxv
	 atGEowgMOPuRSCj9/VGYLzbZ/PH8nih7WQs8g9EjOjTFtScHHlL9er7gO7OR7OHxAI
	 U7c6Q2qSmK5J5a0KxubJqk1iNJ0Yb725l4owJulOmytVMFLxPqLWmbPF6JdOf6CVzV
	 /0ZokqRoQYY6k2VeO9Szb7qwnEOF+Zius7mMIVapjNFoLe4eampzsYUPc6fXOAp42E
	 J3Byg4/RflOJPOZllBAP3rP99e9Fl48ZunksbuEgRd1wOhwlOX9z5d570ZDW35OCyk
	 CGfuEtmuytMsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968B3CA5FBA
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896883358.9928.7224919582461225105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d9c3520c1002e6b5dd2144d480d7ef6ec4ffbd3a28bcea0c8007e33e00b4ef
Date: Wed, 21 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768968833
