Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2070F13AA2F
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735292754; cv=none; b=UdYwOsjIuuQCJcu5C/Ar7svuY8l43PscRP8c4NJ01AZDG7REoBf39am/HF2bxFuLLt4sFw8F9bvPrUKtkTPSx1EDgduRi9zb2JtiF13sTzZuUd8BHmvMitHT4rbfY165nnL4xGMM5viRlBHPX/CV+/0LdKmxs7XAQL2Mngm3g8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735292754; c=relaxed/simple;
	bh=i97193pb0Q4RFxGNy2rP4l7qRO0SGhlweDFtXqn/0W0=;
	h=To:Subject:From:Message-Id:Date; b=ujaPsXRsVoUJLBAudh4r761t/5TL6Qnm0frFD8sFsgSLEgcP7+fExqqhlSx/uealaKOK3zRwCdmYksttDd82urrtCWbgbgSmfZ8J4nELVIbMzVx2Zfg4eNRHoE5VXo1JHdo5aIRvJi3MKVE3oNgsQZC8BtpD8nC77oBYp2jibmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTKElQ/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTKElQ/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7776C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735292753;
	bh=i97193pb0Q4RFxGNy2rP4l7qRO0SGhlweDFtXqn/0W0=;
	h=To:Subject:From:Date:From;
	b=UTKElQ/KpQHR0LKu8XqF/DqD8BHk+yuApQ5q+NMbqkMmNQNVPn9Yxq48EAaWF3lEh
	 xKwyaLjYGQOYfUqmymZ6ZYmD9FlKpoOuj5s5d0Zs8b1tqS1CImELBOol9u61EF0rG0
	 ChA6S2skKAfDhGSoTy9uysVbhSsKVzHXg3NNQ8rlY8hsM+x0jXmknpvYQ9mbJYypdg
	 5SEtPrfQHqmTpKUwtpCilxNJSPBerdkQBdq/AM43pUSbGkIi2/x+XluqNswYn3HieS
	 n8jHMG39BecxbkPLdsfJ/WA/rLWPdTjxIL+RKwHaFQzXTuH2Ke35vXjhPzgaJphGhM
	 5h13u6Wh/FBUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90438E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173529275358.22323.6171768558683931640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e691822c831e509b3525fc35d478e436a9ef59b2b6b217afb2a8b58c2dbe19d4
Date: Fri, 27 Dec 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735292753
