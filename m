Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2971C2AA
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772937893; cv=none; b=cBdkGdwc0Bg5B4nEQv3z/erSKdhrMP1rrj18MZkLw6UBLTa7DBoXTYi3+xJTtxUReKFImw3WuJZBxTDXf2ZWKSPdn/WfPNriO4BSbJhaPPaE7kx9uk2h7xayD829eU8LR/4ZT2z4MVna0h1wxGacyMnx8i8pqrE5sV/HWD/Zu30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772937893; c=relaxed/simple;
	bh=Kg956oTMa1hcuYmd4vVmjZafU0vp6hnS+XJkRmPnLWY=;
	h=To:Subject:From:Message-Id:Date; b=tr+cgYfnjfz0kGp+GGT598GhbMt6z/yrkXMnbkuMbP1WCCYIslmsdBnL5ZgnDGjmcshbIcZzluRQyP271JLj4xRS9UY8AERHw/2ODBgXeHv6Fk5fiYd0fbMTq0dfazNivC790hmusQDywKGZOgn/+dCC7T+dcQOU/4aJNOsDZw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3+pedvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3+pedvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8728C19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772937893;
	bh=Kg956oTMa1hcuYmd4vVmjZafU0vp6hnS+XJkRmPnLWY=;
	h=To:Subject:From:Date:From;
	b=S3+pedvJoJcxH3d3XM7iK4xQVIvg7Rugq2StXKywphyq3Ns24BOTwUSEX/xzHCMAB
	 2/4QKnjzkPTOqYOLGO9IKu4hbxSV5ttZX/prnUs0wOGuszTcv/AsK9HJrOujqnpfFG
	 6LUtaioS1TbtknXt55Ce0eTH+jGgukO1tfNpQZmhWXgfj02L2JSxDTO5iWoxHAw4gG
	 bJB1QsewDXXzP9xeux/fqIqNh4EqEuIcQIUy1LPUft7ylR6Yv8/WHUhPeKnPoIIQkU
	 nciUFtzgpe/LR7RD0koSIujvOHcNzoAFJPJiDhgxxGVBJY184v7/5b+ocaBxaO006O
	 AJjUZMhm001Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F93F55124
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293789357.14280.2836838388674248533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd11616aadfe6283e8662dbfa5337519d40cf3dcf0d40571703b3766bb0569c
Date: Sun, 08 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772937893
