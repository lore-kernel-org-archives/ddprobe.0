Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A6D79D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750748994; cv=none; b=LtstIyIR61lR5LAiTgpFHqPkwqGVuc9rfkjIg6CySIGs7v2mZ/0olJtWerKILt0u9pBZOEHSILMlim5vJnZSi6q+KdLTvkTIFDqHhyZXHMBeKV1vPn+75gtmkCbB/GSSLo6QC2QEhc/60ZTIbXsTHIioR4Ps9AEyl8g3vDwf9SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750748994; c=relaxed/simple;
	bh=y6yVjQdktJlFSv944XO7RslVwlRvSAqJ0PvY5KH0wS0=;
	h=To:Subject:From:Message-Id:Date; b=Taq3dkYtUiG3K6yy3fmNKVN5nhFo++wcKNoP7PWl/Kqbr3PPQpNEejzjJ6C8okrZKNEz6UEslwXJBSnolUFaC9LhgL8Qm9y+wZlr5Db6m9uDFmVqvGyNhHqqoM0NRE0wG2dZFY/DAaPgqOLYsfRf9g4e2xuluJ6I4PLXeun2PSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pll1wl/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pll1wl/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0468C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750748993;
	bh=y6yVjQdktJlFSv944XO7RslVwlRvSAqJ0PvY5KH0wS0=;
	h=To:Subject:From:Date:From;
	b=pll1wl/EpkFDZcRxsEasGqfamLs1MXDzNJJIwdqT0F9+JHEoJD8t6O/QicvHi5QwP
	 BjkQD6Dd+7WuZDw9DFXJ1Ez4Tk3SD3SEl8ixBBgMcxhcNNUUrM84KDlMqstPlSGivV
	 F+HPsghNfhW2jFRBWIIKhZT4QcFU4UwdR9iIl+YB4V242EYZEc7K8mQ2t/GvdfxBeh
	 94wPLS+xYukdwKumEhd8DlWYJ8+cLEThGkVMJVh8dngRnxN6wIwdtxlXRJHeHj6HOx
	 7PV/41wHz+xhGX7+VEK5G4/IUfmp/QIecR0ReyHMoYQ0kwA+xYQJNYXyJ6pI04ir57
	 ss8ujTHkCM24g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E587C7EE2A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074899357.10811.16139156431653094319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2436aaa5bf13d41d30aa08f2d66356b7f71fa148474379d9122c86fbff5a43c1
Date: Tue, 24 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750748993
