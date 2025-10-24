Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22179E552
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761269394; cv=none; b=W3LAVV8vboQVyHDzufmC8uYnas3f/bxpkmfBus8LiMsCJsGPXzGU6gyjT8n/qUCBeqYxmZqZhyIkcVBZlX2tLS2SeP8Cu3aDVr2JycICZfoekoVIJwmPvlVlLcivytd+QW8cCgErWVKwG1Wl+wRj6JlToa3R44FoIoDZSIu5oS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761269394; c=relaxed/simple;
	bh=L9Cq4fKdciJtfiuU0baZ7dXFvsEquhpFnXufm5oRKao=;
	h=To:Subject:From:Message-Id:Date; b=GiEQ3zW4jbMB096NMTsX7FqYLJ0Y6xslXZEWLK9YxprVz7zuOrujiE7HGfaIakJoZ9X+3MNzWzk/EE35p+v3TEJ7BvIEGE039s/rS2M4XnXaYlOPvl6kKxBG5RK469jRdETAWdx9wSgyp6fNM0efLAelyI2TtPA1XjElfLYIx1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+1tXjeb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+1tXjeb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3535C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761269393;
	bh=L9Cq4fKdciJtfiuU0baZ7dXFvsEquhpFnXufm5oRKao=;
	h=To:Subject:From:Date:From;
	b=V+1tXjeb1vNrwR/jRy+bAecYj9MPhjLkrG86baZmLeL9nsJ8NV3kUTQJlk3UjUmG8
	 PI32jQLHuQV0N8PGGTIR9agxj+X8YVv6a73/amb+p/4lWrAj+JPl/I7XD4CVoI26V8
	 gdY375t4PyE1r8wxicSuFucZghj6AtqNrNuhfPFzwJddVfeN1ekr+j44hTtHHwSfcR
	 ZoNM4kHNNQ4W4LFG3m6foSIyzFj2nYP2aEzLFJXJ+3L6ZPRGq0XBSFBeeKv7sa9wRD
	 y/+vuooQm7gbKtj+Kkjb0Ee3nS3QblU+XfSa19fhBmQLRijGJeEeOJ4CokcJpoPKEs
	 9s9YPWLhFw7sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92148CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126939357.26258.17722317881648960601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b2f335949c3920b39c1de9da6b2277882860e54f44aed6d1f95bbfe8843a9a
Date: Fri, 24 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761269393
