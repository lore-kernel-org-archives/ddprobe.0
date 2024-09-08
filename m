Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329AE171089
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725808554; cv=none; b=On1XKfe66SGhWPyOnmb3C/DMKgqvSmdwq1fmpSmhNXc1Su2xZFHBO1YJIfVFnai80dMR/z/iYY6sWfvTs6Uvof8VTOS6+4FJSKG+0TRTMRzfu5v4vKsQ/QUwQkCyECMPynAvYLyyOH7E/r4qUeyMR0fvNgCa5VUeLYFF4sEbwWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725808554; c=relaxed/simple;
	bh=43cZ9QXqaVyKJtKt6ula9j9PAAYojmu/13+7llNbUDc=;
	h=To:Subject:From:Message-Id:Date; b=nRdlf42uuWn07UlDuspzbK1AuBWx0Z0SvT02c1oxeNw17D+2/LQZ4kiloC6p8oS8HMaNF2j+x4z36xb0CgtrFG/wKnZMH0T2xddKP1qiOD806PPZvxuXKD+2lMazLVutd/4lZv4uTHVWixAw7108P0V5Y+pKJLZJNd0ddPJEGJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lp7zpsF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lp7zpsF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE02FC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725808553;
	bh=43cZ9QXqaVyKJtKt6ula9j9PAAYojmu/13+7llNbUDc=;
	h=To:Subject:From:Date:From;
	b=Lp7zpsF8eWz6l61PXpBXA58WbBmfPDXTt4L1WvgfdDIX0GPov7KhlwnumdaXIAq6L
	 YRrDi+V3zRPSa+fuP6LxtAgmzresynjkH4zc6fbsmX/z8OoLqJv3hQvM9RYAjDn+c0
	 /hUhx5dA76jhEX08Nyge+Mzxm09RWZB45ZF9eOjr0q1FNryAavTKJ+eaI7LWbyBZmn
	 Lkxaf/o8SYBQtA50d0IE09bk3q1DrzDElRCRFagbnhmfarHcezPNysVqAplw6fz7zD
	 nc3aC5IcUuDkEDXt9tdK9ccMBsCudK3v1otLN77n8DpZQ29FH39denY9NRBcnzzhTN
	 8qK9INHHJyklw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD26E6FE49
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172580855361.31594.17438974379869668294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa57ef3d38a83488751e933a1ae8e52d021112b8ab2e1b20ab01644ecb488ff
Date: Sun, 08 Sep 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725808553
