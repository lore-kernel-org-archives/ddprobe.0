Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28F332B994
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765858974; cv=none; b=u2K9igS1T6ArJzTiLYG/ELOfhcIfv0n4SBm5U6ZJWfTcj5BeArB6b0WBg3Dto/2GCt3WRFWLxdf/GbeteGszvaslvgKEkvQ8g1TJmks688cVT/M5GM/EIlIzWaXCAQvtbrs3yM1GIx1iQW0Ew8+mnuN+PbZ+goFGclb/z2MA2Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765858974; c=relaxed/simple;
	bh=EwulavReiqoo7eyRrO7iKKwjkiEWTTBijmUgUj/+BlE=;
	h=To:Subject:From:Message-Id:Date; b=twHbrumbLA/AIFACvEA3OCAR1G37aUjvAamF4CUrRZUkThyuwVz+iMTiwQkt9dnttuNt8/CUmObT/3d56NTzSXQV/J1diNqQ0d3EGRD5MsDnSrC3TB0IMp6kcmXdANn2JuhWyABQYRbXeT/NGLhoSqtOgviBr2XkcnWo5ivbEGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKXV9t70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKXV9t70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F79C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765858973;
	bh=EwulavReiqoo7eyRrO7iKKwjkiEWTTBijmUgUj/+BlE=;
	h=To:Subject:From:Date:From;
	b=IKXV9t70jCdamaysg/t2Mf2j+liBJ5QkBJKZmTCJtjInZt16FxuSsLtR8whsOPgS7
	 7i6NBf7uOyqNo6xv9aePDojMYDJlmqHytIx9FDOYhJTyLi0Y5KqSpZ5pxTcCnG+qPF
	 AfUTL66GA6HZzKMbzPVid+mW9P7QbP3+HUKvevkFFEtYy+uee4Ydi+F5oE6iuG5vzY
	 6reRyspmViYBnhS86imlcEOn95Q51mlDdHlWcwDzONggYPSBvVGb4u/Oyu+GwMrOr5
	 ubIgJWp/9bk814lmTDNKadwcyh847d39M2YdrN0qPukhc/OSb6NgNBnXeER8+bKxm0
	 U1+KF/8xXW8JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC5D5C0C0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585897359.18034.6024158505211005858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba66b2fde99c4f3d78b51b33eb5b1f08cd8169c8fd7e50fc96c6f47173b81a6f
Date: Tue, 16 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765858973
