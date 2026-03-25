Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280183BE657
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774435494; cv=none; b=iJv+krASEMActbPeIEeE3WvJn7dkS/d/2CyW7J6pF7VmMlDAVGsKysU+R/LsnMkNpylNneunp/jtKI18ShjSd5HLTz2Lk8fojGhOFjshd8MyvtU8KezGSJnxOBUqNnofjgf1BHeB5hYEvQtmNgcuzEofiAJP5C5bPxNXbTY6/8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774435494; c=relaxed/simple;
	bh=5F+RPKMyyikYt3+tX0ZPr0cT61Xy6qdkVRhWCQxm7ls=;
	h=To:Subject:From:Message-Id:Date; b=gz8Tfp0aj9Cik5V8BoWY5JUStpDMOwFhEeeKumtfRxPUo/K7qX6p4sCp0futNDFO/I2pQ+CyeAXarhY5MxNTNLKpFDtVwtpAidHcidVaiJdDfy4gZxlimJ8/m+5d6e9NluCvxFaf+rdHzwJUlqkov6fiTrdGFyh23bUyjt/de7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqcWXbgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqcWXbgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC97EC2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774435493;
	bh=5F+RPKMyyikYt3+tX0ZPr0cT61Xy6qdkVRhWCQxm7ls=;
	h=To:Subject:From:Date:From;
	b=HqcWXbgW3TrHlNTxM/eCx/61fRxAK+PF+S2Q9zItEY2VhJ5aJ54n0rMFVr023TK8a
	 Z5QfTC5K1wfr+a0vcMwW302L4apXvmfvkJA35ulJEJMUQOSwKM6Y2AlLKyGO4+MeGg
	 fgqAYKr1P/tlJLILCCKzBxUEib6Kno9csIZNx7Oju7fbD3u7CKctqvX95qal0DN0B3
	 0FXtE/AmvxcXdRdgL9P+kb4YaZq5TRJDlfDglpct6o/aVNUV0BvGhghrBGLYSlxxV5
	 YokGRM7KOVHmItMtshD7RGdP4RooEMsPcU/JJgvuWGRWkzkWcFNHYe2veWZdUmmRal
	 Fq87Q6ZNOLG7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951BBFEC11B
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443549359.25211.15365035271991370650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a0238affa50a0c94b314effe5b560e0063c835452b321379e5df6a38018722
Date: Wed, 25 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774435493
