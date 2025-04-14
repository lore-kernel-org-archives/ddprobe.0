Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B4719E967
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744634995; cv=none; b=Iy7F4jigQb4qHJHVZ+1IcHmtBTDyNVOr0YIFQoUFDLIp/iNwH2Cjxv36BbVCf6BESblKLTD9BL/3cY8If/G6KY4SX5ELKBXYPDhpMx1XL5SrB0D+QEw4RyQ8irui2HupEQkEqhnBO9T6f/14X94lrC+DiN4LS3lbF4ObLVDruBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744634995; c=relaxed/simple;
	bh=4SF6PH43wHGEbEoV0/8GE09s6ScIZjL6L4V6BuLnCRU=;
	h=To:Subject:From:Message-Id:Date; b=clsyNa1C2FeIMx4Tnq/X3bhSTW5WjWsnhfjyPiQ2Ctt3hgSqBwPtn6GoIthSDhnGKvtAQ0NXOpw4PA61QURUPkMbANGuumwoQkw7UXoPh60KhMUtn5118RDj8HhvT1vDNtqWCbPG3aLg02Xp2jLBIDt9u3GN+InJsnfx1MRzYZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtkFCozx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtkFCozx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECE2C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744634993;
	bh=4SF6PH43wHGEbEoV0/8GE09s6ScIZjL6L4V6BuLnCRU=;
	h=To:Subject:From:Date:From;
	b=MtkFCozxQ9ilg85p+lCok4ILiejVDQgy96DIMueCSB526ak2yFN7YtzC6RLhyzrFg
	 r0rPXq1isDntE3QC3wjivQJyCEuwz33aH/YrkIxTi7Tx2OPfp5pEXpZUlApFPM06HZ
	 WN0hXTpf83hFqWIIhztUn4y36hTSNNWpPvfSiMxqz+euniHnXmVtujYzPbW0HBaN+I
	 6GcPG1iHhDlnTiMgstvd5Nzo5ljbHoIn3usVe8Uo7t+mF/EcKf/6eM6tWHMKutZ3ln
	 YkUU1N7lDOoEORgF8DenahTqKydN74ErkCeo8EG4f0U+amzPkcSaZGgAUMlJ95dhpy
	 kCBTm+9+D7kng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8891C369B5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463499367.23630.5315952653844678552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac01ec1a08a96a0215198d69fd8a4f323d9e333e2a6ca0fe239e523de74296ff
Date: Mon, 14 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744634993
