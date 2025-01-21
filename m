Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E341ABEC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737442554; cv=none; b=AuWnlT4IfPR1AJZ3O3RS35NY4E14+Ph+iNxNSMCQR/Mxy/2TAAEJ75DF29fGlW6nO4t219VgSixf+42YsVgsZnzJND8vWRSDuISeZJF9iWvK69+jshMi1Dr2liaYcqUXsHhpQTWtJ6a1Hj7XF+SdEuePu7PrIY7AV0ORlpxTeTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737442554; c=relaxed/simple;
	bh=kjXzs0B56Zb8w8OZuSSZ8bj1CBr0kkI2mLkBGu1dycM=;
	h=To:Subject:From:Message-Id:Date; b=SfaB4YihIjqqu1YuGyQeSH/XlbvIHopJvaBkVyOouBJjqJr6kW2YwG5Avy18lY0QS/AYdCLZXGvV7ohKks60u9cAo8h/nnQFV5yMvD0sWvJ1iCclz904PjX5K5VbKD9HaufmuDXGYOblNzovdoTW3/KrhfOr9qy2HmeX4NImf88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVh+bdeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVh+bdeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4FAC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737442553;
	bh=kjXzs0B56Zb8w8OZuSSZ8bj1CBr0kkI2mLkBGu1dycM=;
	h=To:Subject:From:Date:From;
	b=uVh+bdeTsVI7VQeUHM9+c/XMi5oR+K+DQT8N8URTnVKfFC7sC89bqcs3/3D1LBMWa
	 c/u/yST5r6iF1wzKBaJCG5KOidphRXFlUh/5x/jkaUBJVF0vTak5WvhuiJLBdM1fcW
	 sizybv36fBNn9d6P94DZKMinjLoXFHP8zIPpZeE3DQdiOgEdU2RMAyH+QfupYjkqdV
	 6iDvxT4CpFb60AFeijlclm6WUbJpa9Cb9RBUHsF2wFr+dMCrQsFWbpbQjG5iam6ZnH
	 nLOLPrekMrra6wPgx3UKl4JxcPTHVqYC2a5GpG5jNOOE737b9NStFiW0LzYISw4wwC
	 dAGxJVoCnoS9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1DEC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173744255363.29817.5901150988070615393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d077f902dbb8255be7f8b287c9f0afbe26e8d706031bfaf6885f7272faf3d7
Date: Tue, 21 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737442553
