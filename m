Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C214F1940B0
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787861434; cv=none; b=GcW2ZwJTLVthXYzOSrILm/zL5UowPJod6Cyp7+o4lysfWeB1B/FhEdnY4MHuPIpX/NsZho9nzT4OUI2XSVKnhV5FQwp53Yss1gG4qOZakDp5g2TCyQkdqggriCEs2eagkNJH9WP39pDBIsRzFuvp800PqKvVwWlfcsbuNocZbu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787861434; c=relaxed/simple;
	bh=SB6w69cppZX9VRPej911fI5v67bIYAvyx23q8UTdI/Y=;
	h=To:Subject:From:Message-Id:Date; b=ERRKB0apedI8Kl9Yzw9PGN3e5GcZUONepxxNWLfE5tWYrzDYx6qjm784vabqVkR2m6Oe48IMOxkpnSIWNNifHXYPPjp55ljpHHW+QA5jdgL/jzVWaNMdZ/4NNTke42jDk1QoUdi9k5i9BjSRLierFgBFdKamcrVaxh5YSwMB4f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMm06ioK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMm06ioK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A59C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787861433;
	bh=SB6w69cppZX9VRPej911fI5v67bIYAvyx23q8UTdI/Y=;
	h=To:Subject:From:Date:From;
	b=uMm06ioKu488XovcS8MLG+W5TxCM7CB/7s/Y3T8rw0khWlDpSo1Nv5NrR05W/gmEq
	 KFCvaglLxQ1aDTRf1LD8uEZfE4jsaUZMeVDOEuz3xic314ajGv12MJMhaDcXTpczFY
	 cUxwxdo66TmN1e8Xyk/zs/siU5uu+Y8MYfM1+iN+vUHqF/oVWVihACx7LDCbuzH30W
	 O8GAinSto/t4GIZXP0swC88QmJjO5xLtHl4+YUWwOVnYvNvBuZy0Wy0ZzggcIYJ/HN
	 aJncJhaTqiv5vTqme9SytdaehxhOe07Ay3MzunW+2LAVDj5kOmNslr3yGHfFP3j+9J
	 SOBRaoCEbN3UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA3FC61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786143368.23614.12795047592774743499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e557d0eb155667bcdbe3101be6d83df03beb58bf58772f9a856f62e4f87eda8e
Date: Thu, 27 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787861433
