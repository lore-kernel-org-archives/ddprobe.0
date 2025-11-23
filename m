Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400DA1BFE00
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763899314; cv=none; b=oR2wM8q2EclDy45EUs2KOa0PSuPkDslc9raGJV0Pra8UZrG+dFj2xF8kn0bFPEon+IWkgNJnerbc05/jmNTblJluNEeERf2+gh68r1Sg6orJXeIf6Ymq/p0VQgE8gNrVXPmwqdztmFXNcZOD2wra9QeFVA+RNzd1I1p+vqaI8jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763899314; c=relaxed/simple;
	bh=coLx0X3c0IzIRkiwA8iOuHfLcdsEL2ZnOXuS4zlNo1Q=;
	h=To:Subject:From:Message-Id:Date; b=uYPeo/Bm/IZaqVqbzcZPk52Uf43hWDDJ1gDSRzuJvLdHTSUfm1ETVCjMjsBnWeMn/Z0wen2CPkJtlCnZ2eLqqKHHjZjO/xdWQ1858svZhhMKdbsn8UWMeFWDl3STkABwi9AeVpQCxqi5KKEyfFo8dYDtnE/O/RbmaqDLW2p4G24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XenImTYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XenImTYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54B7C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763899313;
	bh=coLx0X3c0IzIRkiwA8iOuHfLcdsEL2ZnOXuS4zlNo1Q=;
	h=To:Subject:From:Date:From;
	b=XenImTYOgCcC0AXw87+k5ZxX7KwB/nGnb+9zR2O9jOQhqsqQixfcdp5UpndBNlnZv
	 Yr4DnrFWPcRSwpyvI5aKu0Y7gRjtsRZR+YUhlj0809ARICOEw/upk/2Y+ug6MLoTYc
	 Cx987Y4xhkZRNQvhHpsqCSgg0XZTzvk7MkoePiShz3OwLe9G6Jg042mJikkT3xXKj4
	 mmOo5GhaeOTbrQI1bR3+/QrXakI45H55dsIu+tVkbZFl3kaem/SesIvcLzvAXict0u
	 7/2N0tEGvp6krkrIycn9jU2Bz4FUfV0DL4CDU3sKFra5jZYBoGhcV1tLhPezxm4ZEw
	 8jLPHFGnwrE6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC48CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389931360.25191.16994277294614915800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d179f0b4a53ff9e281e83db647bb504b68d870ec86ece303253833f0dca2566
Date: Sun, 23 Nov 2025 12:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763899313
