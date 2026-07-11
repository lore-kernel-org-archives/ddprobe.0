Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DE9250BF2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783799914; cv=none; b=PS9Pw1SOX9bl3ctUzQi+HiuWzqGivYTpRdOzy/4NX8oT7DFOSypa18LEacVf4CAI0P+GAeRfpsWzdQX+DGB0ztIQ71rC7lEEMRkPso4fJVvfm+OXEK5u3nCRbmvtdKNAZwWVtA+VB1VEBXx3+tpRq6hkLqaOYUckDitizoKPnhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783799914; c=relaxed/simple;
	bh=dVS7dP8tCOhkIPfNfqSJGwywqq3gdaQeL8ArT5DAVFg=;
	h=To:Subject:From:Message-Id:Date; b=i65OJwtLZWxQaXrCbEcciLLhlLh97SR45FoachlHUo/5nYHZepJfK885f7FSN/uwRdp/waojNOpDE8Jor3p+qDTLwaS+v6u+1MlAayCHCoUYtb2vkW4mLraJTrxV7lEqzHyyrZjZE2XFgZs0MClQE12cAT0eRhJvE/vLFsP5FeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvRFJOMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvRFJOMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29BFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783799913;
	bh=dVS7dP8tCOhkIPfNfqSJGwywqq3gdaQeL8ArT5DAVFg=;
	h=To:Subject:From:Date:From;
	b=bvRFJOMHsSY7JJUth6tpL6Y/FEKKUy4o62y/pwhCIUSdCZACNkiRsTljaHU0S5ml+
	 nD108YdTaodivf+MRf7oaBGLOek7FWraduBNB2VfuDPP0a4b7uPuOYH/CuVXSrMo/p
	 TarOYDlJ0i+zGFkwkgWwKt6lhFCZum1CBmir2XjqwLBIsnPRYBanGSLUB7vIYy5iDJ
	 3mf+S5AKv2aNxBYNiN7vu3aBpb1u7zBZxLWdGyYCkuxivTmrl80IBSSQG5EHdft72y
	 h1RAi4QfoE22WzHl1DRr6+vb6mkMY7xvESiOfXDcA8aJZE9PyZ7BvTPJUAHOZX+htp
	 5+sCOrS6oIeSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF61EC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379991368.24904.1814708276412507155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1558fba3e16aa1acaa4bb5ba71d7c9f7b16abf8cd2ceb6815738ba412574e07b
Date: Sat, 11 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783799913
