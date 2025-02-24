Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F221E1C2B
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 23:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740439734; cv=none; b=Kw0kzj4qk8WvuYUzio9+3IKKimnQAmQAJEc3BbL1FzLCxzJGNxpO+fmVGOJGPEivliMqWoncIWZrQVsdt2j2MgGdXn+ViLBBIqZdQCEttu+f4La7/Dp81hGCX3hQ7erD9NiLabUGEyiNxbSjw/aYxliYieMBgqydPFVE7G0cY5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740439734; c=relaxed/simple;
	bh=4+rBuYye0t4E12o7jhCgXIbqadcPbkbxMbD2Yes+blk=;
	h=To:Subject:From:Message-Id:Date; b=e4zo17TA527PC1yUtAXxsfGQR96LfYq8qAJV96tE4HFZ5+FtsevYK9B13GZzkgv6ahuiD1fckTkeVTXbFHrWNoZ03p8KvaQv32+j8L1Qp9/nv3AUUTxRCCGLE5NsK28DiCF+cIWhydyo9tMXVvVCwA45Jjw55Zql83uKf2nrwDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkS9g7vm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkS9g7vm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA17BC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 23:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740439733;
	bh=4+rBuYye0t4E12o7jhCgXIbqadcPbkbxMbD2Yes+blk=;
	h=To:Subject:From:Date:From;
	b=nkS9g7vmcsyB8XVAgyXAAykhAURwR3JcXZ61G7A8rE9tmhUMDYQX0hcWum/oQpvHJ
	 dGX4YyugB0ncOPEYIzGumBYCBa8jp7Xc6pEq+Sd+aUF3lXuDyUbVGV/x+mc0MmSLqz
	 Yp1A67geOUow1pONnksH1/NRjAX1nHsYhlRXePjSNKHFySPos7K3WaSFTVhKoGfogj
	 ujLVu51RaD7AD9dHdJvsa2nD3wBFJYiYvwdxrm8m71mKM+TUuvbgZ1c7XiIwDpfsmy
	 WqrXtNaFszZeHvPYBO4pRFeIDuysuckhZdrIAS1yq5mcmojYxn9bWFFYGdu18dnSEC
	 6mY/KE/JZbeUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FE1C021A4
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 23:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174043973366.22184.9150878092918038784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782733b5734f6bccc6635311da4dc935b67454717a1a55d887f3580350b662c0
Date: Mon, 24 Feb 2025 23:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740439733
