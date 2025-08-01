Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FC7223707
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754048394; cv=none; b=haTdZArUzGLz3V56yW6Lfdm72L1hNHBrjO8uF0dZhngiXgEF7T40cqef4+DNpzhG5MMThjAsbsVF0l6h2Me3XhoZD8E5SI2CdWs5w/2PUJf64WVV4izFoI2/gnQEuHuddKgdWW9NSCRcfETcGWWRJZWjz7xnDhRxATBeNUD1nUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754048394; c=relaxed/simple;
	bh=WVXqdr3+c0R8ZpHmIRsfjTKf1c1i46oukYzDbHX7zsU=;
	h=To:Subject:From:Message-Id:Date; b=k6O20lIo7kxgw0ikhGl+djutuiKndw29g8rZ2i/Sj8Y2A4JGTe6v6Mfe2CqJf8E+8car0/0feVuVFebI9DhveWLw+DYJhS7CfqJqk2Je7Gs+l5xqBpTBu7nopCazme1zRc759ejY84Blk8cB30I/gfmAE953SvMUZzsO+n0mh5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYOVAAFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYOVAAFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D4EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754048393;
	bh=WVXqdr3+c0R8ZpHmIRsfjTKf1c1i46oukYzDbHX7zsU=;
	h=To:Subject:From:Date:From;
	b=QYOVAAFwK3a4VFEM27kEXa3iEVGFXPlSCNY8GqRnJL3StyinusWKft+8a3sn+rw6e
	 EEedTXedP5e0WNQ2363F4lUluVgRhIN2CIyyL4RSw4PqiErGgafhCcLg+BpCG29aEM
	 way15c4XcFLSUP4PVxIkD7qP4bhS4Fmiat0SHDXNWTIE/PVEE/ragZvk56peIL2Swz
	 tdC6v/JDU3kmj7dJVD9Hf+GPSzoakGkI2evOXT1YzfCytVIdER++3ZCH3rGtJ4H1PV
	 6xJpXMrI+H/BfyHAuG++zt+4IkiGoQKbRIIdJCqWbGV/UylEh0NrPnp18JgvOPT/ac
	 31GkhMWpk9lDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F141C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404839357.18208.6857058111238401673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368f22ad5ede6e17d1ede7666ccc029231a07ee1966decb82765caef7b17c6a4
Date: Fri, 01 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754048393
