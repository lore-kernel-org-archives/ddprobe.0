Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2D115C14F
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780721074; cv=none; b=gwSf2/XzBEU5KgObyNHmWBKL19PaRPFbLRU8OzyOLcjImAh3DKQPpqk1BB30//xfV0sZkzXWaX0b3JWKQHT5DqD8gs+ig07frnvzZ6q60IC2qx45iZfEpI/OHAZ0Ao62R4BOSaS2AHyDLJoocp3QHrJupS2Zlw29Wm+0iug53BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780721074; c=relaxed/simple;
	bh=PeOiX22/MF68W9dCX32wha4Kns07VTyf4Ysycd8y8f8=;
	h=To:Subject:From:Message-Id:Date; b=GLcKolif+Q4HIbw0FB/kAeMssOPdGreniSDlvd+0E8YRnMA2MATGBuMQcpIv/MIFfuHDYb9IeTa7XqtBs+QY2j6phRdW6PBj4elkYq0RvHxTjOHKZs8CKu3euVJe3fSzyzb48SSl2YaTt/J898zcpaz0mvdk1A9Ak2vn3itMhpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzCOBABt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzCOBABt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB238C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780721073;
	bh=PeOiX22/MF68W9dCX32wha4Kns07VTyf4Ysycd8y8f8=;
	h=To:Subject:From:Date:From;
	b=dzCOBABt0J2XK8vIXTKGYLfugm3lXMEzVv0A/TcgEn8KShBL021JIZPJkVP/Zi6Co
	 JC8/3itVE3Qpr9V3/zBu0RfM2lMSMs3y7YWRG3It7+57wC5dKc+5K9nfoeMSZG0CJG
	 b4KVRe76WO4AHDAtSGjuN9NLuJYPeBbLB+Iy/AHfkPp1P3XadImvcZoj60NHPdXplX
	 hWsu2dsxVJMiWSPAIH2Vsj4o9Nxx0oF117iHNQm/10uf2HVU9JW5v8tVV08YgdTf+R
	 74t7APxD4cbsnlycXW31wBcFWFzcMlMEgWGZ+f3qux3jsI6yKKj1Be2V8x2NOrGGs8
	 z1M5LOJ2afQIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDB8CD6E75
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072107369.5415.7529757172278303952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79b2dd5c4ac57f98fe4565809958a68fe87da24926cf9e887d86ca769b0b3441
Date: Sat, 06 Jun 2026 04:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780721073
