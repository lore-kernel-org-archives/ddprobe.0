Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76C07483
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730383553; cv=none; b=ZGUwQnBoVNBweRNBwFLE4fODSMm7wF/GcV/ahPzZf5aPY4UrEhN9C47ofbpvXLttROf+AfQKkG89QolK3q0LBsYJbWWhoBcB3DEiAdGYuWQOsq2RkqyuKlxRBVjqbX2nadCiCFd9eJrf0wiQo69zvKJNkWK9fvqM19nO0Gx3/xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730383553; c=relaxed/simple;
	bh=5p7TB3mR828QFv+i/ML8CQZnvIx0QPSxNseuOZbhjJ8=;
	h=To:Subject:From:Message-Id:Date; b=Vpo0quLKUyxzhd+q4MQBH35vtz8RPMcVEyyC4B/mpwwwpPDSzYmYGkN45YEdOo798RmZk06dmZ1rY2eGyADo7T3QOvL/XGWhcI0scf3+CFj6BqpbLTwzZx2JVpbv2OwZDiIn425ipUBMRIO0BuCcoJJCt/+rFGooPgEMLnlH/RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVTWv2qX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVTWv2qX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A940CC4FF08
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730383553;
	bh=5p7TB3mR828QFv+i/ML8CQZnvIx0QPSxNseuOZbhjJ8=;
	h=To:Subject:From:Date:From;
	b=ZVTWv2qXdWrMtglPpLfwzumtH6+FuwJINBPJuPwy+2BZmq8kfWtGkbbDURrVwMDPX
	 UF9qmO2aCHEslyh7zRVpNE2AEO5srzH8ejKwOLPVx65Hkms0sMWrowdwSBZ7CuCGoe
	 KQwZ7nIKxd0S/44r9Bnq/3+FH9THYYloNk4EfjRDg/ioWcbU3vhqrZciDtZs9TsmiB
	 l+5+5iLJiyEMSL7FZjtncYSVWZAlR4FwC4M0S6iuDmrGUGWo/ozUq/g1DItdXLrua9
	 wtWFNx7ai0QXUCFxfORA3KUrBFXHZw7nJeyMBYjOPwQCf9ooAyzosNe3sNiZHQNRys
	 VNawEqgLalGcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F08D767C8
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173038355361.6368.1118485129630860232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e323241eb9e04e861b82dd4bb2bef940276dc1c06cd75848e4371484961027
Date: Thu, 31 Oct 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730383553
