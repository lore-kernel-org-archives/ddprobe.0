Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33439242D6E
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758136794; cv=none; b=HkQgjKFXKTY38I4c9wPSSSLeQ+6yZutaFwDb2K3STRtlLZZb9cZkPKKPMjeOyjHXMulEYGOeDDBXhlHVSuWcgUmG+u0wq3ad8Y9NNCh9JDIAWhNhS/m1r5ixcXWXmbFq0VDXnvXYIMLlhqAqS+inFg4yQd62wz2uPgSk5jttFoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758136794; c=relaxed/simple;
	bh=QmgUtmpfJbNl0C3fakXPvgOMjdjAsmkMs8d89+Rl8ko=;
	h=To:Subject:From:Message-Id:Date; b=GcoLLVmsJaMOXT88TWrlBFIxvAs5y2pwdeEzzGdOEYQg3og2AMbMKm8KSCEEZZqlCJmVafir58Vpo6oRkEoyRbv/LAExCe/nnrb3k6kj+1MPk0t+zJeCa6tqSHDGQJeWTxsFqsDiCEU+k/E7C22H5q5l/0xB50mJNO2s8SJJvcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aj5b5fb/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aj5b5fb/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30FBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758136793;
	bh=QmgUtmpfJbNl0C3fakXPvgOMjdjAsmkMs8d89+Rl8ko=;
	h=To:Subject:From:Date:From;
	b=aj5b5fb/I6HPYQ4OF2wfcLCcrqnDXRVG6d82eM/hVKpP5elolaUazAvIqDENkcRis
	 8VHzD1sduCwuaOljvYnG5bjrCAUwKPTzA5PViBL+T6JRwJd41J8mXCJncp1+w1qk0E
	 JWr5XvbaXr8+eIRNZ+Mxe/HROVibpdfZzpxoOeqncPIRhKiNeUtq/RJRUfCAj2XC8v
	 pqwBVtx8Tc1blTkaSRCztbrfAi9btdxAxX1JtSaPRu6IH4dOnJdz+QuRDf4GmnJsy6
	 rO7U6pd7z0KXxsMg7gYDadb1tVk1dV8P9yzbLrgE1dTXKbm+gyfoDRg2n61LkoJz73
	 c4q4G9pp/L3Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91330CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813679358.15553.14787895104459730117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9dd8098583aed5a7f9f41d601fb1cf46a27e5764e7006d804739b1cd601dbf
Date: Wed, 17 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758136793
