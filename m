Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A97728E0F
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765851174; cv=none; b=LjmFZsHoBllPApAQSq3XNMsjWtSNCGwiOGFb4tavfSM5zKCIANrllF+SW2SZSjORnPvf8xIxr+yhvNvSuipezKiBcoGXF/60EMckykSVNx0ziL0qElzo9V0ecjnTRZQkacBM2gS4uZyM3mKdr6axdjQxuI1DdKA2+BMF+JuTRDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765851174; c=relaxed/simple;
	bh=t7OGgUzGvVxuwQ4/nprUudHxOnAF6Uq73P3XJRwRkQk=;
	h=To:Subject:From:Message-Id:Date; b=swnGeTTmR75R+THJQzwYC4CmviCtsp0lPiEst9MGTkjc/WA7NgfHiFyjJ9b71j5GQJ6Ns916SxC4DDDYTmCCr71DTdFfnYtfD/a2w0k3yzjci/b/5StmyyUGpLTpN3rOwH1OiT4wX7tJoDPkGWqWN6SPyCAyrqnEXHf1WxL9B6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0GcxbPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0GcxbPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55DDC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765851173;
	bh=t7OGgUzGvVxuwQ4/nprUudHxOnAF6Uq73P3XJRwRkQk=;
	h=To:Subject:From:Date:From;
	b=O0GcxbPxSCIjt/ELDj/BJh0l/kIMfOLXTQTFgfIyz7nr9wiab4dM0Y3ZsuK0bIaGP
	 1tK6wzHHC49ehPcXMARoK1v6S5cLu4qf+FCA34pWl/IOSaGZvlFpalobQKVNIQ5Z6f
	 KPt16HItxL9yhfONjhSp/0Fo4X/cq9n5aCmvpVJmhmmE0wM44937l9sw1wpyy6iV9i
	 dOnrnMBRiqhfzsqJuMgJwf5D8PN1mex2ag8cdHRWhG+epDNmhliC7JwcNL0aH9kRMw
	 /5uyjmJC6SY0t7sajq3j0/L60VNJ0t4SMhr8TECiTeovrtt+7s0fNWEsu0/OabS5i4
	 Dt8Ks4X8/MMWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92064D5B87D
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585117358.24713.10666185950584722184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a9ca99e2deee65ce931682d39f2bb590965ef9fe1a997ab2977ef0f1d4d5a2
Date: Tue, 16 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765851173
