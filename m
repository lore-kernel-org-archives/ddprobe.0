Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DD423EA8E
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763838114; cv=none; b=iZaq1rWaIwAZbJj6hnbQCc8Yym2xfdWz9cpI/Wp9F2SR4AufWpLm6wgKMzzYEyAkl658hPzxuxBVaehehdIooX72LXQ9L4vU0EZPPLf2x9z0LlQ1qSSJED2n9RPtlbW+Jr3MZGGKtWSEgqFqK5ygiCOm4l1MnLaKGgyYPwKUNoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763838114; c=relaxed/simple;
	bh=z1BVVIFL9gme0zcfOVpaD+Q1lDnWsSXdLQZ0P3zE7PE=;
	h=To:Subject:From:Message-Id:Date; b=lZIMTi5iaJhlEiluGa6HBXk12Qu9dUsBD/Tp9uckieAlKNnFq+6QO9cfZYOpyjvY33P5FsejK/4b6NiLUsalh4xysDW9QCBrWWqr3mXKZliwQ7Y8GOD1vRUp87uqg74bkzdyRTVYTge/JuOFpNvxqWxvPAbzjQG+PvZD/i0bIC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgXLpppM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgXLpppM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3961C116D0
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763838113;
	bh=z1BVVIFL9gme0zcfOVpaD+Q1lDnWsSXdLQZ0P3zE7PE=;
	h=To:Subject:From:Date:From;
	b=FgXLpppMUvx1aOFFm19QR74b+MOQPCmQUkf83bvfEyN26aFIh7SQI46ipJWQqxOr1
	 3u1BxVx620Usi3X/BOscZri8ATKtbrc5hPquQA+6blZl/ITpvZdwr0OmlJ2ftEDm3A
	 DDa39DwgF3FngHWSdN8Pf0TvE+Q5yf7GrzqxOfdkAVo8nzWmNkjvVXRw34IVPp9/BN
	 7+0RzazgTQ2y+sH6BFxiiSa+V+tTTv/0uya9qX/eYvpyMCizur6ufOOzaaBV7lNg3v
	 OrauGGzzIxAGbQvXXOKnQ9owCC1Vj2MWEl98fV5v1TmRlmSEhSAn9wJchIe073anTX
	 tWVnOp1+rIowA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A15FCFD2E4
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 19:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383811359.1228.48329784299111131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c4391ec4f3c3b37a8161978f59ad9b75df27483efb44f6c23310815d0e18e27
Date: Sat, 22 Nov 2025 19:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763838113
