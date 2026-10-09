Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410EC44BCB0
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791561634; cv=none; b=KZ4WFu63jWAa8V9nfPlrEFLQkDFw0zK0k23Qs/E6Je7bN8SL5kLrJQR0kMqeM+sNY8AemalZ1xMeJaio5MehfDjU+iVWSdlbFJLUoWs9FhOBJw7gm7vEtda1B09LBaE9dHz9SqqqpkFg32agxwe/CGYHosRxN7R7JeL/FqppgcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791561634; c=relaxed/simple;
	bh=4jIwkVwmY/RyREkdUKzc92ECfOPBb7kHg+0dJtv+c6w=;
	h=To:Subject:From:Message-Id:Date; b=MM/aLhBvGnYAwixBnn0bMVOFbq6dAXXUs66wublmGcPqgGjIGqdvZPXpZYIfzktUbj/5fAV86LwOxOxZWeNrJYkugSmSYB1WtsbZpe7vozGaPXS47gvKLBSc4n2Y4wQDRpo5Sy6EfHTN8dQcJoGGAw78uDaQLv81NYqOMwMnNg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5Kv+SCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5Kv+SCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC9CC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791561633;
	bh=4jIwkVwmY/RyREkdUKzc92ECfOPBb7kHg+0dJtv+c6w=;
	h=To:Subject:From:Date:From;
	b=p5Kv+SCE0s9QW8zm0cWWv7Wh1MK8yIRziXFCfo6QgDusReQBguycwac++INCVPKJU
	 usuPeJPzz+dQl7NWhkAONIz2NGW+ROwa/w/SkQ0oPCchU8yAL+atiGNmwForR/Spzh
	 IZIK/QDHN2vZDsOszub1yiwxSFF+IceMyWfymiyb5uw0mCi6gVIInWwWMZDIKE2LUX
	 O3H/dlFALKW1d5yHsi2VLVPebWg3o5JV9OLWcNHulQU1YsUmCXMhc2lw/2IEXXxmgI
	 0CJQvA2HGYZFIyZsPmNmbSDmBFKKfAacu3zLWv/E6HO+ktgbf17q5ZFI0ZlQUzXt8n
	 BwjARtdDKC6vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5A3CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156163369.13279.762902464031242580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ec46333284df439e0232e784409620874cf8a75a0e4205be026e4586015039
Date: Fri, 09 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791561633
