Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308EF375ADD
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789120834; cv=none; b=ucR4Xo7cOewY0ll5qZcjxSZt9App8zgLIjPoWawt9WwBy59vSHrywk98j+DkUIBnYLmshBBcnRHZge8zS6l/Gr03eId24ef4iRHx9aYruilVHZO/tPhU5rPiTAhn/SDp6HN6IghYNIShIiyPvXscqziKD4FCQf5LSU7ajKWWiy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789120834; c=relaxed/simple;
	bh=AJlsa1K08vI9fq8+24SLhzwWOpYodNWQ6h2weQyCxPM=;
	h=To:Subject:From:Message-Id:Date; b=GfAx8LyYLnfEyWzjnfE/Yjvi9c0ZQQ/J0PSnJMNEEFtM/6n0VchhwhP0hTypJtNAuMwU+Qy9KH/AjvELEzsLlRgNTmUoFuy54My7svGduxAPYfUPECd7++nXuD8jtzj6juwbYf08MEbrkF58NxHZkvNYc3CL9T9kffXA0AdHe4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/N+DmHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/N+DmHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5580C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789120833;
	bh=AJlsa1K08vI9fq8+24SLhzwWOpYodNWQ6h2weQyCxPM=;
	h=To:Subject:From:Date:From;
	b=I/N+DmHFbh5falNFuBhs3tOvIiWcOF5UDcAoXMAAAvWEgzlF8ZJct/FvF/1lQ2t8e
	 CrSg+1gr4TWQKzcF6LODArxg+IM3H0B/ECeqs7/Rwe5JVq6i4PXBF6EHc/3lo73pFU
	 EMG/D5cdTeb87q1NWx5eDrYcXZwsvAv3a7EU4avgoUxT9N5f6jhFwRAfxx/uR5FR0u
	 XrCELEw8INSEjJUcVYWpSMRLJEVj7mUo7ML/xuFqBzQR3gU2vLT3oISCCdW1kI6zx0
	 QK1NSYakdyvOgOhiiny3ACz44qnmBUigsRIYVFvmewJBgCDPjuE2hXVGwY3UbOQFtv
	 OlRRFHFovEPew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B133DC88E4C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912083371.21490.4546411750809258029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6badb32513b92369925fcc5e4069d0639b5e9943a5db4371baa4f47c14e6e2c
Date: Fri, 11 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789120833
