Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C1714F6C
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 07:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717226663; cv=none; b=A/9IeyB0ZxbH9AfltMHSreVV3qTNjetJtEk+9x9/8KDPBPih0pJr/XCe38yWScfguzrj5VXjizTQl4ErtVe45VPDV420IFP7AN0NTMqdqblgn+O1UKk9p2BX9zFI25fV8gebPrZMBnb4hm5RoTguZKMyE6vLkt/L/R+GPxIwN/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717226663; c=relaxed/simple;
	bh=Lm/A8x5BgOF169Xl/m8lS3vTHAqIT34Utho3VXDChXQ=;
	h=To:Subject:From:Message-Id:Date; b=hpsfTWQ7thzv7hZKwmViRG3MFbBLsvdLbuLyOUczJFwPeN80BoYHmhEr217iXFXHrIOQixBWe3qbVtSoT/SoCUqOojuYzowbZqW+E5TEmrKIxjWDpkks90QYI+pMBKl90buvx4ITLPwO+9+kAzlhdpll0BMNZT0wITAVfKFFWuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ow2eufqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ow2eufqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5C0C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 07:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717226662;
	bh=Lm/A8x5BgOF169Xl/m8lS3vTHAqIT34Utho3VXDChXQ=;
	h=To:Subject:From:Date:From;
	b=ow2eufqSPOavaI8Jh2iU4ajUDp6Xnt6d/6rzLVtc2gGDHuwNj0nBm6jZbW2LmjgZk
	 uKWhG6yc9ZimSARf7BpeswM5NhFzTH6K7Gqlh+t2yZA3huYe1iV4d6YhZne2y8JToH
	 QMaKZQrV0v9S8L8RP5Omo2FFXyCydbvLSVZ0RqjSyCkmRi6tLRasVv1baSov4nBz0R
	 s240cenBFGDXdQZxWfIQYb12M0rT0abrjtlBET495kKe2HKtGIbv8CYvp6qxdoCgDY
	 ZB1eY1w1bvLt1obGQHu2pJkKE0S79q+g3+a53FF6ctoQ7Ub/mFLAI+klOZc/D84huB
	 5PYv8STe3MWHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2284C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 07:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722666275.15333.14221386007334321736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34f23b4c47cd312e0fbfaf3f93fe21fcbea14b44b5885479ceefdd411aff07b
Date: Sat, 01 Jun 2024 07:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717226662
