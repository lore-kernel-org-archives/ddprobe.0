Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539FA15A4
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714273343; cv=none; b=M0OGlbemJ2lI71WZKOuvM5r/t+9HGVhJtJBS8V4kJX5rAJZKVHpDCIkn2vbVUKri2nGtObNnytAIBihhTL8UQYYE+IFb53bfmObUG+eHpqXx4g4dgp3xq1x+3VHVl5Q2yzSRGmrcT2SU7XghXftAEqPONsKGP9o6z7mp7Wf/aus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714273343; c=relaxed/simple;
	bh=VaReNTqD70A/LpL+cdjK9oG5kfKAjupKlZyMGZqtQng=;
	h=To:Subject:From:Message-Id:Date; b=mamQy3QXH875oK867PONnF2MQBUv/SuUBypeE4lKo9woz3kuv5yPOCSimOJ53MUPy384tI0Lw3PHzE+PGvllTbtzzRoM2WvDlA4KCAaA2X/dphspPozjxVkDAU1w4hpRv/aSF06u80hZoW5JYv3O88R4FudlBoFSB0vKnB/m3vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDFuT9pI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDFuT9pI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E4AC4AF17
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714273342;
	bh=VaReNTqD70A/LpL+cdjK9oG5kfKAjupKlZyMGZqtQng=;
	h=To:Subject:From:Date:From;
	b=ZDFuT9pIkNvZg5Q2S9my+gDnMjp11SNR7rbdLzl1IAMv3EbflB21gxOWSHFG85ne0
	 7kolNCOqvQTklx6kjV7SX1NI3+ZZzDYY2P8+/QPw6XywMqrPYQwQbuSMcXQrbtmYgP
	 1WF2gdriunqqxKDkyW8D38V479XLOOdJNlZYEfryqcfEkHyyTvWsqNdIsibm3gffXe
	 iEj4e/iUgskkLBLz5ysVazLj0KS4t5JirMgPY0nIQswzEmIDxVVqz8dJBFpdyRpfBJ
	 2I8dBe8gD58EdzavgUI6JynwqJdV5XJA0xjp1qNhMcnb1iQkyq0ew3K7WQOROi9D67
	 AEiJxPGNoNbdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB04C10F16
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171427334275.17531.11575902508126045942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306ab757ba0dbfd19b4e72add4d0f0233377c056984b7c28c06782a465098b39
Date: Sun, 28 Apr 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714273342
