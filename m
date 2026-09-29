Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61DBB523783
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790686834; cv=none; b=VMT6QJfSy2yUoY1Zujef824w0mPcKETIBzMkNBAabIfnQIKG3zvbY5fiqfGru0EKE9Vc3mwi9ff3qMPsZKZMdIdKPohBAglF4/JxaSJL0nK243da4R6njegonHJEb/AfGK7J+LcSuJ7HWsjNyWoT+OooYhoIGno7156eA/lZqUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790686834; c=relaxed/simple;
	bh=8M4GhOGtwuShoNW5G9/xprvfHLNvt/Cks07qaNh+BQM=;
	h=To:Subject:From:Message-Id:Date; b=n8g5xVkB+PGydlk91HNLmK6ZlCXJfje9phSo6IS9MEOmyN8Bk/JjSkA2+VB9n+gKDzoiWlL0r8tnbUnPYkVvvTrMG/0RY+9VcevAcM8dCUzkbeJVLexOBueBCEIrDDPc2GuUxOQ0eAheu+yOMqq+eB4wo5PWjnmEK15qn2X4pKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moz+lrbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moz+lrbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F48C4AF14
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790686833;
	bh=8M4GhOGtwuShoNW5G9/xprvfHLNvt/Cks07qaNh+BQM=;
	h=To:Subject:From:Date:From;
	b=moz+lrbE+PaoePdolYf4scWHYhDTV/wNv5uq/mQGLqmf7dDa7RrWD/j+wG6hkg/+r
	 QRNzCEEoaoLe9OBIniLg2A+fuuaAQ26QNFvvuxI4mvitGLDgUzE20/TBcGgMbE1p0d
	 eFni4qbY+gkDiC+aiff0DRzGHf089MOjc2q0BuoAyiDZiiKKMhLoDMWDER34B1ED+1
	 wGaOZ91C7xW6KMXJPz2HerjSVULWGc9KsVAcWDvNKWTGB693TtRqyI8NIu8iJihkGT
	 QXrIOF1TOLglGYChJcwijUvAaePaicanCHsVUHF+enFWjfRpr3OctJD+SqfLeqvYTU
	 n5ni+DTsQiA4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD10CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068683370.15440.5363318075381541929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b149ca5e891c85cbdbedb46b07cce1b6728e8c149d4eba21eff7e1ea77fe50b1
Date: Tue, 29 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790686833
