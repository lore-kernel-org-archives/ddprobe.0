Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4006533374F
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782647914; cv=none; b=YYBCmYK3YWGnBfBuv0mlvPdojUnN81lrHDFEHRRjQLDrSZPNwA+nv83UXJiy+0oQgEgiicMmyM/zEHebeDMKmc0tPgwTPIbDQlLKyFNpCbpsiN5Mk1359GnzpApcn1WkD1DwKvv3e3bH5FHjs/VM8LwLlmGXQ+UNMXO0ibO6oWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782647914; c=relaxed/simple;
	bh=0+jYXpUAZkIQqqKip1rTkHnBkaEZojOox0qL8CVOctc=;
	h=To:Subject:From:Message-Id:Date; b=tPbsWAlkQkpmnftde4I0mxgMFBDr8FOmA6wNhlSfLRq/kDyd1+SOU2D48hfzQeOHCfZdPuFBKrPV6QGvU68/oSnoDk8he1SAeZwVPzsBdn7F0N8R6nMWJ70HAIjCm8Tzl6Eue/TPOlTWtqQp+vF/1fHKfj9RTx4GamrOD1uADYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjAwxj0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjAwxj0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF312C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782647913;
	bh=0+jYXpUAZkIQqqKip1rTkHnBkaEZojOox0qL8CVOctc=;
	h=To:Subject:From:Date:From;
	b=sjAwxj0e2rzYayUJBy+PicdJBpZF6ESZNFef1Kk0RlkYHwtAv9Ru9cXE545+iUJo7
	 OQ5OYVaqwuHA2jp/QB8tdX2023wg3Ij5qbplZYvF/EgKP+boi/79iH8sS9rF+9qFtN
	 pMJNHuy+z1HWldRuzNftxz9+p2c1eKrylXZRnytDdmWvyvo5RxFTOwI/tImLIt7kVi
	 tloAKqVEEx+KQf+ha1UVJNbrCWPiSUfPgPVCCyJAB6E59dRCe5GGUDpxKvjo8mS07J
	 drIUV/fTQGW0DcFEmK4uXVXcJwaNm2V0EjOyHEsCQ4jpLOouc/KnIClyYVdbEH7Zsm
	 tdZkJcun0Ev1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D44C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264791370.12886.8403712190080934275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b4d242c5e6b8f92c45a1d4f6f8205410b857d0513975c026f63f26c9c9320e
Date: Sun, 28 Jun 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782647913
