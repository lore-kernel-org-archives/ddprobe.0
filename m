Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F8E17E4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738167354; cv=none; b=KlKBrlcLfidSPACGxn4mfxVvdi2S/mAdD45S8wwSlabQ1M9GGsYU7VgSi0xXtUuxSvG976nggPdXq1cEMcqInMu1fSxYogLfocWnG+DTkCz6QhtjPCMUu5t2O/Eb4oisn3jCX2tuI134nOf6AHlc6hCbFiQMFL+ItJs2Yo/GuaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738167354; c=relaxed/simple;
	bh=hHBnnP1JfLsymevoZYG3zKfI67kASicecP3rrcTgyNo=;
	h=To:Subject:From:Message-Id:Date; b=sE1q+f1B310kpeJ5KTYqdVwlT+YvKXywsOxVdXTQQo/7uhrht0YQ8BcJgSbnHd/OXF5YRBAjS8OVWFUD/MuIUz4H1Ib9SD877cImgCU1XMj/HlvHyZDqxBVThdpYg1/lQyPgSXE/84AWY45QS1plkbot/7zIOy9iE28zlwv4lkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYlCkkWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYlCkkWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51E8C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738167353;
	bh=hHBnnP1JfLsymevoZYG3zKfI67kASicecP3rrcTgyNo=;
	h=To:Subject:From:Date:From;
	b=oYlCkkWTrLFR2B8Lz5OBrjnlH5fswg/f33G9YZGeA4om7CswKv0dWJOq0BuGpC7Qn
	 cIDCqZ+cNkdCUX7JKD55/SB8VoMm9pdALUKWrbIVWZiCG0fJeQ4mrkDhOtQ3qawluv
	 H2AANmVLxFycMIGcHzSj6HwK3zECirmuV/DniW+MWG4AuuJj2bH5N8lt/OJgyBxs3E
	 QMqrysHJJd7BRGGSNE611gvpWEGy9GMT6iZGaJqxOSHPqjUYrC4TK21656k5l5yvUx
	 UJrmGeiTctaDkHU1cQAwtCN+TDd1JJv4X+jHtU+NO1Fg+Xgm8r2/70lKymcMx0EAvI
	 T0G+07Xc2bUNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F44C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173816735362.13289.1745830276030172543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4596e2b3029098dac2ebea01135aa1634ffde2e5c7caf1800fd9b57a17eef4a8
Date: Wed, 29 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738167353
