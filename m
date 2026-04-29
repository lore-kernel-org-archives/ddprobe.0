Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E19F357A25
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777457254; cv=none; b=O5b/OmdY55U5WxF1V59C4YGUfbfbwjMcAaaNT9P/+SdOWdgcamwFb28R9YaeUw3GZYO/F61ewPq/QHqBVD0P6JjUKwjg7iLFHbi/mJQhOevbzTch92MSISn6e01R027Pp1YJ6DRQEpEs/wbMN4QZXLN3DljtQ0wsCGPqWOw4EvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777457254; c=relaxed/simple;
	bh=OaRJzSbtXLpXCXyp3xTRnByW7j2jQGWQPKQpRB+e1X8=;
	h=To:Subject:From:Message-Id:Date; b=Jo/uAat7uUwLd3Cl1/B87vVjuAi3eCmZndUxq6r7gUOnkxMmiU1FAjN5Fti+OBIMLVnW/uoheHYltrhZvRDbDjjfsw6dBTLSfUOyQELNTF4sPcNLgv9weS4pR5Kj9+YoTMzqHmj5FIL+3VfmbUpq6RPAxYc/neUUwLbbhoOsLiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCcxpZx+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCcxpZx+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F36C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777457253;
	bh=OaRJzSbtXLpXCXyp3xTRnByW7j2jQGWQPKQpRB+e1X8=;
	h=To:Subject:From:Date:From;
	b=nCcxpZx+9LO5EJ3bUY+zp5TYq2Ez89UGpVNau7k7XuoomTntTh1IOwlxPFRwPXOyY
	 6dZf1AHTNV3hYPirrBT+x3YOW2LdJGQ5oN992rkWmvItqtZcrSWrJUGsomEFJuh9aL
	 fyoxI6fE3wJqJL/UBsxShdHUKjnnPbmyJzVxs6GLq8SjitfwHazRaY8CYAawu8fazB
	 1YUFENRcfaf2guRSaFqZqyil/mkwBVgxCbtp16M2fyGxex8wnAqgp3kQlDLSPKust8
	 U7AJqml6mzky5f425yS+RyoQwSultYK+1D9oYZipmuVakAaYYQ9Nbi1kYit76Y0w0G
	 SBG0cKLi6QZ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BA5FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745725371.14397.4771029168811805386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbbcb62991305b42647710b192fbcb90ab6127b5b8b92e923a8f9bb05aa9e359
Date: Wed, 29 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777457253
