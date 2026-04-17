Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4211233F368
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776412654; cv=none; b=cH8GMh3dLzY3leRfiLWO4Cj67Y/WKwAH9uH3g6uNV/4gKK7p8db76VX0oaZCK2Zu/lCgruR4IQDSy0vjX+djNvblu779SoKDWK4pbTECnC89eocSKMwj9ICTwtmNx5ko4cv07uyhITb6x4ncHLbI5u2SH1L6CcI42xeDue2kQZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776412654; c=relaxed/simple;
	bh=I66arqm7uFyyy1B/gHr1MnyCunVE1ciIxFESN4qc0LI=;
	h=To:Subject:From:Message-Id:Date; b=iDpyAc+LiQPmKrZNFHovbymde4XkwEY/S1UBAm1FcX9Q50/2i4QNVpe7tewz/CVvRObxgA5wOMCDWYk6tMmLiNv0R6aZfSYqfRnS8XOigRddLWYp5vFgKgjoff6pVJamazgNsehskF7ffXdV0Ktp9EHRDbgrsLNirkkYGLFLip8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyZLdUDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyZLdUDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7013C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776412653;
	bh=I66arqm7uFyyy1B/gHr1MnyCunVE1ciIxFESN4qc0LI=;
	h=To:Subject:From:Date:From;
	b=nyZLdUDe7WLNKmRZZmw7C0xhZ0etMI9wyftMsjjoL9BXTvHb2qPITONzSNJhZSxkg
	 ogmBRoORRRjaNjPbNEe5N1FXu0KtAb53FYhKMuL1RnfkmChAg8efBAV3d0cUq5bMH2
	 3kDakFccH0D8s9FXhczoRMNSYqMLRb+cqijBSoYqEtEtvQb+1bQ0DDBOnmmFhzaZds
	 wgBtL2uSKW1dWl14c1slumafVIE7/dNN8cb88/ccd6BU/u0g3YbRJ3W6UxQg3CXO+b
	 3XU2eqKUaggHAsfUzlpMlDuMUQUNUDKTyvD7obmqScQvBp/nQqKJt1Li9wBN18m8I5
	 H8CS5+nhdx3/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9347F8E4BC
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641265368.30548.14536674655787942277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9fd82f0346cb619cc1a4f791b9572bae16dd2575c5fca17276f9a482428810
Date: Fri, 17 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776412653
