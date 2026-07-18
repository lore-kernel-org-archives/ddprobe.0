Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A9D43F0BE
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784360314; cv=none; b=M52J832KJ2Ct0BTDLuKwO5pipbDGnV4QlKj9qqdAn3+k4QE/MFT4RXgMFbjfnOZWOwr8+WD7lqWmld1SRt1WVO8k9Fsr+jHvovisq9W26jMkNToAMEJi/bxPniOfltwR4NOgCqMG9GYl+DlJkWPltlalRHOv5g+51hmnY9UEw8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784360314; c=relaxed/simple;
	bh=C3Bh2QjzEe73Y5XafMPodRc3nb9vNhbb0DAcRbV6SkA=;
	h=To:Subject:From:Message-Id:Date; b=s3JZZi11LcYvNQk1Wjgesmyykmqr3UX8i2w6bmHyuRlN+Eh+mfX8QRiXL6t8nD+fqJxOWhRAS6nnVRhnbWVe8B81FbzLaUfYMVq6CODSfcjTMkQn5w6BAUaFwRfvs+gJJ4bhrRn91faPFMX3db5ugsaP+0dNtiboMZNd6U+MueY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLzSmOeW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLzSmOeW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D303DC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784360313;
	bh=C3Bh2QjzEe73Y5XafMPodRc3nb9vNhbb0DAcRbV6SkA=;
	h=To:Subject:From:Date:From;
	b=RLzSmOeWZFhO07aYUAmhkq58EibysWvvtELdEyaD8M0aGpHBJsuHGeAOCO3xZ4L3b
	 kBrPw1D1I8x7hTVIvlqLKemP7DuF7c/YwXCU0o/I83vujtW9MF6FLCW1DPpJKbepUK
	 nXZztHSiS47hC+UJpXdySRWg71LqyirsRuNdl97dA/oTOI7HRO3LtI2bUNH7jekm0K
	 GhKBtTxuqOrGyQYYpWhzz25gdzK4KLbWFdIlFE/C24Vqm+/XSYxUPD/USCo/AoQs0/
	 Unm60NQumpIVYl653aOQCFdUFaST899XAKr8w/mEtJPykyJa+N4F4JqVqovRagcLYV
	 tX+DMetwpK1UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B133BC4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436031369.11647.5172812510616737626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc284fc509c2414dc25f11f737561086dff1a8814bc7399257cddbbebab0cdc2
Date: Sat, 18 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784360313
