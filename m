Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A45931985D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776974854; cv=none; b=tncYqop62G00OEAzn6DYxzfclPm5ndmLp2BXElkbjUBrSpRlUZn0d3ZgPgQ4W1j3Okf+5lgrpco5sq0faZm2D1isXqJvcYprStIquu/vlRXgkpx/+mpSggt5h1gz67xF2iJHcZy0bsZDoH0gdIi/VnHz1DDJFhAqTgz9xFt0SME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776974854; c=relaxed/simple;
	bh=KYrELythiBU4+6hOCTgQ/hrM5dVkaHuswkgWrc92Tss=;
	h=To:Subject:From:Message-Id:Date; b=J/k8/efWdDi6I3+z+PjfTdz2u7QiykiT46jArIdK3bBaIFzfXOAlPrb9xBWpm/JIf9qP3d3Cr8V4yg7gPon3WhRku4kP2TNBfylvHLk6OC4eKxg/vDVAzsC15wm6iEQdxT5rrGI/iu7KdMZr1v7cAotG0L4RAoGMQXXcoFU+gLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOL3l3ef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOL3l3ef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB764C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776974853;
	bh=KYrELythiBU4+6hOCTgQ/hrM5dVkaHuswkgWrc92Tss=;
	h=To:Subject:From:Date:From;
	b=fOL3l3efw1VUSBkESiUZzHhTuF2ihVskOMu3gNPImJoBi+fZhwqzX7ar8Ztelfno7
	 nhj0brtpTRWaaW+NP0SvyoVy6wDDRnSz9Pc/DUtHTUVcFv5nRJnizc5lr4SjGkQ5Y6
	 R9ZxUd5rhDk8qN1YH0juW43Ew/vxdCuIJhUTubtKuf6ZbRUJ2Ul3elMqtkdqfOCD8b
	 ICkyGp3rWYC9XPPq0qN59kvOJknBlGDY0+nQnKHLZp9pFqkYus3FuH8cyH9fDBNVqB
	 wRlbgKhbStxiLdp6C7aBp8FvFNi5yd/EvNsSNYy8cwB3lvmaVGItRCotsMvVwGNRfw
	 TskFrVdiWlCew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9434FDEE47
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697485368.10918.16832857648020429409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0171f418a797f599cd0960c1de224f8c8c9c3337074996e3db320c265e8862
Date: Thu, 23 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776974853
