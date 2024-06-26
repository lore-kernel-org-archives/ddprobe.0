Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380C41E890
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719408803; cv=none; b=ueN9drmiBgGnUSHazhfo8oPslwnvaZMEk3SmeMm86ajio14D3ZAfAOfG+U0Y3/YVvpgIGpdrrKMedigP1bM75uh/o8+qSuGvlm3Vgcr5B28xo9TuVICZio8JPXEn7c4t4ps/h5acTB3ZbqEh8kpBlLE/G8jcyYz2qFf4xfpiEdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719408803; c=relaxed/simple;
	bh=1U5jR7b9YqKxdq15ejQ3tV4JIV0T7ftSOY9Q7gv0gH8=;
	h=To:Subject:From:Message-Id:Date; b=mZjU5h73jLUilhKoXIdxCj+gFhqeVnGGGylR2J/QKk+UpLnaGJMb+GDpAmTHzkHkIR3ax2uMliEoXNO/dZ5Km0kX+KvoGbbkSmxePzAjUy30C+tcoDuzLxlkpqZ8bqpEyC51waXb8cf3wm4kyrvc0by0v8FJu7ebN+sqMxezA3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVJNcV/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVJNcV/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC51C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719408802;
	bh=1U5jR7b9YqKxdq15ejQ3tV4JIV0T7ftSOY9Q7gv0gH8=;
	h=To:Subject:From:Date:From;
	b=RVJNcV/I647f5BEMDX408Ra4Cz50GRQz7+62wAjGhiHWvJqzpE6RqpDYBsHGm/3Is
	 QDxhS9nETUfNrN32Wc78KAG0HvO71HeSDuWsvv711CaueF6deISUrHMaVUPap4rr6A
	 CNc0K+B8wK/rSRu/2kuQtS0OtaWfVYLSCqx6t8xipw5QL1rF3cyc8S+5fyWHVaUxO3
	 o4rSxHX707y+C1bh5dakFBTLvj07G13h1mS+OQhDADkn/XpP0f3mfZePgaPKwQBd1c
	 IpgRbrU/FZSQkCxQcnELxGaO1VBtlTfu35qGJ9uv8Sdz8b4cECCEqc19wnnWKDlXT7
	 1PbnpvNX9WQeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF9FC3064D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171940880276.17743.2081106394200902580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b23e732464e2e367d5f22a5bb8c0cdc2f2e95c5507f528d6e7cc71eebdacb3e
Date: Wed, 26 Jun 2024 13:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719408802
