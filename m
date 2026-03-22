Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8A340DFC5
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774220694; cv=none; b=Rcne+NNcJdpCK1G6iDWnv1lDOrhlgzSMHYwgPy1nreAU8W+ZmmmtBPy0ngYAiGdZBM/1iSxB4P7ye9sCvDji5cThCNGfY2vZBK/eBPjvtb2PTE94q375XMO0sZLflUk6XQibdXovBz0hkKiD8jp0q0SX3RZp4gOxQUG0XRWwyN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774220694; c=relaxed/simple;
	bh=cat/r5JIc2/skVmkfN7PzymcaPvzqGeNpcliyHEf5ws=;
	h=To:Subject:From:Message-Id:Date; b=LV0JA7un3cxX89ZntNTkuHChduGfunEgdw6Bl4eW9hRuhprEyV1qQwULoTwzr6UW/bBl9tQADjckGuCoAncT060dRnWAQX+l68HU5m53C636YLix3tazLjrLrVOG5/fz3X99QoFJ4aeLnn8ZPNKU20ldabp4pM08z1plRcBrGkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiZBQbEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiZBQbEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B60C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774220693;
	bh=cat/r5JIc2/skVmkfN7PzymcaPvzqGeNpcliyHEf5ws=;
	h=To:Subject:From:Date:From;
	b=iiZBQbEVLabHprBNhekf3lw4HlmopZEYAl+JdUCPZ9Ab71TflsC/7RC0oSsMfirVb
	 lCvr4r0Ovul5nmxNqUDSJbzMk3zpvVx7k29HZGBIGbwT5qoH2cDjG6Hw3Gx7A7mD2g
	 I7jVUmeNrsMKhqYfnFD72bKPFnF/cb4j1wP/RyVMrvFURv80BFhzdSv9izcofqJpr1
	 Q+/u2wTTvstPMfgVd5IaFTpYDvRAY5nhzEOCh9A2Zb49ViIN9vXYDTaREzHB3KUg/p
	 NfLlNQ26yGvJqgz6CrIRAk1jF6SCpdeFJ2r6lRtqiznsNd0rchBgk+hokHoWnb5699
	 ovKJassca+y/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90608D58CAF
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422069358.26877.11001895308696991216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df17ed90ddaa3727be9d1ddfba8f23346fae1788bb88e60a623d674b252de2ce
Date: Sun, 22 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774220693
