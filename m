Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342BD2BDC13
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760454594; cv=none; b=dZl2+pBV6bIaUZHj1pO8kLy/MssVX7BF03FUTieNTqR44dzwuYfRLTMHfOWGQXOl32E/Y28xIL5xGwhWUrIa3Cb8ATVYzJ0/QFLCQa/s8HNIoSf/mU4jzqQkt6o/2tlHoiUS//y5RZsjMmR7U4bI6e/JW6XXqFFhqw8A7++2d2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760454594; c=relaxed/simple;
	bh=GGOWkwKuM0hSTQMf38AY/z1F4lCxiKFI2SYCBiq/des=;
	h=To:Subject:From:Message-Id:Date; b=q32CYnW3pqHZ97+KvF8Apx3R9EnvfA/Q34vW9opAIvIS28CX7G07i8iUcovvgxf62wzK2V9KimftfKhTrOLjn0FHbHSGQkXpABrZNbymY7WFboOftRzQ/TWKHInLJocbUehnfMBUzAmVV6ZM2WoZHVVPmUW9YbS3DjteqAFaVeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuukztiy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuukztiy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF50EC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760454593;
	bh=GGOWkwKuM0hSTQMf38AY/z1F4lCxiKFI2SYCBiq/des=;
	h=To:Subject:From:Date:From;
	b=fuukztiycBfqa89kMCvo58ADUpJ5OsY7jXZJgwZQETE28ZRYBuj4nNzEpt9Hh5Prf
	 rNWwdlXRoYnHu5sLWESNVcqDDkvxR25zGOMqRlla4a3c1fg+eDhWpWhnvxO3LL/0YE
	 64z6DN1VRhtqd0zXaKJw9lLSzGCMbTjTiIxwsd++7OLndNiq3SbOuU6rBK754mmndV
	 cbG1+AD30mrg0gIs3ysgEat+UBBSAjz6vIkQL109fFUwNnxC3OIGUtYWvs5LfXNnn1
	 kQT10zKftWSdsugyiKP7IwFmqcvOIDxVoE/zBHEAVDx2G9RnC7uTsV7WedGCjBKqno
	 bnPeHdITleokw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C29ACCD192
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045459360.29591.5214401557213562266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775edf9b7f1c10f4eb427a78c81e8e574652a4efc15060da3df86f165dbcb60a
Date: Tue, 14 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760454593
