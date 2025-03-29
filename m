Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292181A239F
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743239395; cv=none; b=LMZ+YEGHZ1N5XUdMRxQviJtoX0K0QsuO4PvgCUeq4VCvlYDXHmuEaktLFubNUB2o92JkVd4WGN/lY62QA9qhmtex9cfYiI5R6VzZiYYvLuCScQQY+gW/dzKytl4/9vT8/5P0t7GdRW6FQK4UpE6v1qkSTtxHhdjdGGZonaDaLJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743239395; c=relaxed/simple;
	bh=VlM8b4ptJJH3Q+jy6ACY74YmDjzhCc90SwWzbfQ41JM=;
	h=To:Subject:From:Message-Id:Date; b=oHc49/w6Vb/qERmz5AUmH4ZFl3DVdSz3EFP6bUlOYJXDP3IG4jd4K1z2y/GPZgR/Fxa/Sge0kyiPPYKctAFosxHBO0oyuxYdNdcKS+/lxWLGBe+cqpvHO05SBz5srMVrduRziwDbkqgrJNSg8RIpYUbW/aUyfhsBI++X0JvvYDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQJzkmGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQJzkmGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A361DC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743239393;
	bh=VlM8b4ptJJH3Q+jy6ACY74YmDjzhCc90SwWzbfQ41JM=;
	h=To:Subject:From:Date:From;
	b=HQJzkmGndlTI1v4+IKBxlu5JHFVeUijYKiDLXTNSP8ESRFWVcKkGfFYB5KlCYbwUT
	 hWVHXseYNZlstDYzpbKuZX8uKo/1ya67HOuiasE3ptV2sMOxxolygHM0GO1ZVGQXkM
	 rpObJ3yFvKanWKTXZkgzb8F7UPXjgWfaeo+0J4+4M0YVPjm5ER0e7CXn1xZEWIQuWl
	 0272eEF23nAFdqWPhgoaGam/b2RA3NCCYzEda452DFGS1ZiSmxNlPQ2RmErZe9r58l
	 xrsFYeKQUNnrRMFNSLFRqOBEAbrZ+xab2bx5vuQ6WVIYG9crtM+fnUNlJ5jUBsjtnK
	 SE61ebPRmErBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9049BC36011
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174323939358.14626.16449227317133911077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f9bd6c18b7337d6c33f45862919313768eb9d4dd0b11422cc03948930c3e9f6
Date: Sat, 29 Mar 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743239393
