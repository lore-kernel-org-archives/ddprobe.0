Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADB314659D
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 07:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718351303; cv=none; b=gTzINZgzySQipRQjUSO1XfqHCGqvJjbqeLrs910u6IV3DWjxFOghsN31G4ETxQNFDph1bpJYICNB/BigdjvvPl3jVzMZaoUR55KnIGoACGytuU2uGPXXzEGXaCskqDa2kr+9cEyYqegfYizZ1fj3dIF58fdZKfMNJ0y4Ygp929Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718351303; c=relaxed/simple;
	bh=w7fLJrnUMcVF+GwrlKuMR93ShHlPqpG1Q0/6lVUG0mQ=;
	h=To:Subject:From:Message-Id:Date; b=frE1f2TVTRNQgEgVOXo6NCe8Z3Th+WxTz6VsHiuj//ccUzs+sh6L82aMkCIrJ/lYguZ7iavGaLYY+WS3zdgJNQF7CoLt47ZLH2cWGhtPCQ5jhmFrnEjkxV+d1gXgnynBKpWvNLTd83Ib1vUrizlwp8+GWCLVU0aU7IYfTxidlOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyUfPnTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyUfPnTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE507C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 07:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718351302;
	bh=w7fLJrnUMcVF+GwrlKuMR93ShHlPqpG1Q0/6lVUG0mQ=;
	h=To:Subject:From:Date:From;
	b=LyUfPnTOrp8P/ZwNKWOASYq2pIpPHJ86ZL8MsWSSY02nvcgoGi5FbD9abwGhsgCS7
	 bLTajG69go5SjQqYRvqQwav0fw5X7o/6Y0DQKflrKScX++KD43n32cB1lyZYci4qW1
	 WKgMbzlZTE1DqFrSbFyZR2xo8z3eQ9joMLA0U3c354J4Eme5T1LS6AkE+wnKvCR0gC
	 6BtW7p/2JeiHNIXRyrFWDKkHkEhZr1Q6E4vqobpxbI3T7eTUYB7UaguUebj6O8E8zN
	 ABm5DX1HDoFn3B+R/CqdOo++/pCateMFrUiVvcxE4amUwcBdximmgXdT96MDzwMJqG
	 RkTYm1oTINBvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBFFDC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 07:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171835130276.28597.9180170110602576457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43545c5f5f3e875a8a7ff7dab901a708737bd333e7462d3e96f8dc8cc858f3db
Date: Fri, 14 Jun 2024 07:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718351302
