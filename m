Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E7317D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734051354; cv=none; b=of8+Dx0zJ+qcU7RSN56hPQTjD+xRzQ3GewzCNaFAPiSEHf8EaUANcaNxqrPVX+WBx26LBwwzCPPCsdzq8iKfYuXqBAWWGnyE59ZDivIpXqw4hdX1aGeFu+G8Tk2SYPMc7Sx20SyPCkEUAiRp7qNJfymfh1wCmI1UbyCLdO5H6JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734051354; c=relaxed/simple;
	bh=wfNlD5G9V8WklJV5Uj7aOoXU8QY5DPK+WILM+nqva/o=;
	h=To:Subject:From:Message-Id:Date; b=UUxWoXcbjHj14LOyuVfOMSn3bojU7NyKO+Y7X7RM+9F1E0upEAChdAkgkhqsAA8bwYWW9FKPyW6F69i3V+vaUMsqCTq9KijvDqbVoDUSPKihYkz9mmTIaPgffzTsebaahrDVh1OLodIRZsOKhHzTrXj/mqKSvxT4Ciez3GylnoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqx/OuxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqx/OuxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C285EC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734051353;
	bh=wfNlD5G9V8WklJV5Uj7aOoXU8QY5DPK+WILM+nqva/o=;
	h=To:Subject:From:Date:From;
	b=kqx/OuxJ7Zr7caJVvYhYNFDZRYUApz/U+EhP0x7BOZJM5l64IrH3R2w1iFq03rfmA
	 xZFBYDuEsZLsOKGCVYYUEja1vMowlvexjkagJycwMziu346MbZJh7Ux3jk3AAIFGhR
	 Zs6LhAcIKrBsrZcvBwjRQAah0WD0sQDI9xhjT5HriMLc6mFFlLUJD5rZ25ToukvBON
	 VaSmFuc543kh/Ct1XbKMBP6MOwgkS4icG8c/+ta+huAZW+xrUXTBgSyl7VucZiR9HF
	 13sFngt/EqCCRxHC/B4qQPn25XZbNJb0vW9t6HulDBlbttLD8R8qKnnQK7J01WzUw+
	 bvoqBMhsQmwLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994F8E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173405135361.9653.1572921437500195661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cfd8d4137f9568a54f0975c70f93fb1d1eadc21945cfdd7be6991455ae852d4
Date: Fri, 13 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734051353
