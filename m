Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1805D3242B8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778452834; cv=none; b=E2d8NCKUT4ZWOcLpmS9HGppn7AAmS7hejlf9PZY8LNsT69M9/yfjTvXm9dc2QF8fKXpkCUfT9kZ1OS80gnCppgQuopGckLunUR5myU1qg7brRuFndpOudXvn7bGN0pONFM8YongfwX9t2yxJRHvHiyyg02GZLJC6DxJg7g2fS5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778452834; c=relaxed/simple;
	bh=lDasaKoseiLDEQOzUEyeSjVzq+afctKlP9D4qS10cXs=;
	h=To:Subject:From:Message-Id:Date; b=jrO07+Xpng/vzeWmbPA2VRqc12ZSnXvXNiBRPGlAOu4rughEW/NQag17L6O4G+X/GnfLmv+xFOZbqSo5mJdmL8ziruHbwnBu3oWkhkAd9p+uo3MqhS1X4574yZNUrPnHG4j3wqTUrlzvEaUUidBsOgZ2n6/zcLNrDvkJE4/e4WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PC1laU+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PC1laU+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C873FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778452833;
	bh=lDasaKoseiLDEQOzUEyeSjVzq+afctKlP9D4qS10cXs=;
	h=To:Subject:From:Date:From;
	b=PC1laU+ZrXoSefe3gS02w651mUhi5OFM2qE/GbCQaE6tkDjDD1iAxLh31/QTf+jum
	 o4X7pzSvZuXa7CyMQAvKnBChY48eJuhSgSMumDq9V3NDp9d37ho7Pqr4/lllpVTuFE
	 Q73lst+Gaa1JjaTL0QjzIJGFKJYt2zb1+Cs5coqHcUOq7DxBiE1Xc/ZZI/4vLmsJyK
	 NMBG9ONQszvMZvK1/HiBIYqQByKzTpiWa5EHGNhjVRK4euD0oPi6bLy8BCFDtKL+Xz
	 2YafE7xEqvFD3PC4+c8gwAGPtpY9nqo5YF1+2t/n9nP4kKFDSH9isHS9UCYePJs5lZ
	 XIWuikOnDUJUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A42CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845283373.9834.9620780124654201737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 790ab0368d103a722887132cd120565502632b5ea418614f4b4d57f970a7b3b4
Date: Sun, 10 May 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778452833
