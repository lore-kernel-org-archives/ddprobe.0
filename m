Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C8B2FF170
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762337994; cv=none; b=RYZyzqUWhm5Klg1Ia+KF/mPdCg4eG3Yc+hbnvzB4AatejuGSBmBYAEjKcgpVawmv51vH5dZ/T5lTz29USP2mQUm0BQG+QulNPFWJtalpC+p8YrOogxHsuR74H9lmF81dHitgWCqNlibU9JHxhr+mP7Or+QBThk7vnzKj2NXuQNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762337994; c=relaxed/simple;
	bh=HKNIjamqqcnSsJ4YDygg/dFVLpHP2PXd3bLz8eZyQds=;
	h=To:Subject:From:Message-Id:Date; b=bZbl4XPvsJaB+XhvrZ7TKrc/DbmDlkP3p0gJZLUIwX3EdrhICA7da3VQhU7BVhnLQ44ugJanNm7oshb0oHdC+w58FWO4+Yr6m0WcgDDlcIRozPJNhbTrs1PeAafay5zhKc8eVfgrYqHRwzAHD1I4cS8xDqxck3G+rGlqONUmhZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQaTaYBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQaTaYBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5103C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762337993;
	bh=HKNIjamqqcnSsJ4YDygg/dFVLpHP2PXd3bLz8eZyQds=;
	h=To:Subject:From:Date:From;
	b=nQaTaYBY1TXXkpatxwyOkNx7C0uGXqTMbJ3VYrtqMGbD6aunlN512nGFsDUYI9qcT
	 EnFeDMs/gJDwiPSTfOX8pZgLnIO+xd1DqScIymyd3iajoPTS5iiQSgTn8zztKN32c3
	 yylxgHlzb8ufR8V7TBIJbFHxqaKhKWvUJ8ISqEinPAM1nBALPTKHxi6GsrLgOT9Lnn
	 hHGK6uOI0gXEh79rhWJnXMGUCmCUA/RXcpxAKNpFb12vPtZGa5zIJ7R5+xfhQaebBz
	 rlCZX4Pj9uq5t6AiCSLBVTyoJV1ZyQUejwTCa0jgg35FDw3M96tzsuMJ1sScGeZbHe
	 rjSQu8g6/srwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93607CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233799359.7295.15509748452493404877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f70d63e70dc3d6e8eb7d9247e6a1e7a4e81b0b34436c8f136f6ff17e2f2f415
Date: Wed, 05 Nov 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762337993
