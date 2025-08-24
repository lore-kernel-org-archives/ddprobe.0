Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3340115D3
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756036194; cv=none; b=LLmihm+pVm9qTs6DdIeeppaFZ2DqCREncq2yR3qEp4uebbl7czB8vrii1JDhIUcYKpyuAOL9bv/VdNGcXHHHpE66z1rxhXNkv8QCWUZv4YZVSPXiJ09c/Fd8dShcE5h2oGOiUF5it2eV8frX1vA5YplxAGxwy1M+QAA7MYBFLGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756036194; c=relaxed/simple;
	bh=chYRlhv/+3bu3Pia6whkNMTSakE9D6s/dMmgue53Pvo=;
	h=To:Subject:From:Message-Id:Date; b=E273e5ZC7kRAowOSpNIesm3tbN860sRY7CnmdpgFk4UNAQLIuCsXmaYW/sVzkyYarGZ7Cp0LHZg2QRDpMr80X5HFi+WhlV8uf2IJs3jpkCZbB+sb2H3fEj9q4jW2dF1vtUPl1Tjz3sOHsaruA4UoYgnMJiFNKVTsMQ2rN73hAck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDQbtKUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDQbtKUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4552C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756036193;
	bh=chYRlhv/+3bu3Pia6whkNMTSakE9D6s/dMmgue53Pvo=;
	h=To:Subject:From:Date:From;
	b=ZDQbtKUuz8ovWZCpCrcgOawLcnm+aK42toYqdu8PVvkiP/9TQ8O5hOwbys0AqH9uh
	 Sg3DWbQQWFmpH9FVHtp/SYuwADcw3kyOx/RiwqlqkP0NJBFbm+OqBiyl3Q4/mV3dND
	 vnZusJa4tl06h5dB6oGEg3F3WNxLJ3ImuOxQRo+lDPehIki1fUSTeWZU60YYkiJ0d6
	 Y6zHt/3HcBuky98qOAaRA27codjc0CIiYkfArntG3ZCCoeeXDTf3FqhdsBnZCQbypM
	 MW9xiWKZKPpnY5U/ETqxPAsIi7BiP0J7aI6+TOi+prHkaPqPTG7PzWa5wJihygnoJY
	 Gb2+AiMFdEa4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F7FCA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603619357.2197.7096390022628206551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7daf8b4bd2f8c3822d4c1f189b318acc43a18c0cc5400f82b3f60bbbc45db90
Date: Sun, 24 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756036193
