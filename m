Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBCE2DC779
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745995195; cv=none; b=PTzFsWz2mRjCTU/wH9ymcCaP1n43pDm1SbTTlf8sZTBf3qHz6zIRSoxCzs5y+ufLlwLeOJMHQ7eH78kazGyyTVQMKIXhTZYmoqtP2F+rr5xGGPOMbUrsVbOP0NB12gpCvty56I/kUCr58wO9Y5naFKRWteMdJgakDXqyeLURQ/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745995195; c=relaxed/simple;
	bh=KVFaFPGWwtoHHf/1qPwvl9sBtA5rw6xLsZ+S2vzBuP8=;
	h=To:Subject:From:Message-Id:Date; b=Qn/gfMs20TpO1qbhk27b21XuhaOLoo7tcmUZ4IKBJusowpLYkrDZ8Mlcr1xe2eDfrYMTuSveoBOmzWAdFTOM9GUcchgs0J8If3GfTWiHKT/vFbAAvCWaAjKEfiQq2IU2gx0QAzdCXvRha+lnVmMRUWiU1oN+FzdT9tGGUhva8KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMggPdts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMggPdts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFC1C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745995193;
	bh=KVFaFPGWwtoHHf/1qPwvl9sBtA5rw6xLsZ+S2vzBuP8=;
	h=To:Subject:From:Date:From;
	b=bMggPdtsBE/t02KARkfr2MI9YEkj/FN9jx6ELjq3mhpvy2vjK9n0OhFihyk+8sHEX
	 92qUNZZ6ItH/MPBvP+TLIDJC8NxW0EuCiTfJMqxEGPhu+GXOMjDs7Lk6T3/ing6AJC
	 519b8m7d4/h73f4PNyRCe5Cu/TOI1oGlNY46dk4St0Lkrv8P2UKCmwthxBq7Axz18h
	 GjjWDEBwPrsuqoaBCHWFY8llXjp8uJdATZIMIf2Vub8fzTs9g++FptiBNVxARIiX+q
	 rCegmE3mhkR4p3qw3CEfdNdHq9rDSNl31j4LPKwjYOnOLy+gaHAhHJR8q1ytiFQ5xW
	 rf1FKR5rBLNuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE1C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174599519357.20086.17943249203441213355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a472227f4c4bf397fc812f1457e1ee9eb93fe2bb830988045c6dd67e70b4ad66
Date: Wed, 30 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745995193
