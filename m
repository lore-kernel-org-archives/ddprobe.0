Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CFB13FD72
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735728954; cv=none; b=sKMhIPATcWydSV6Wx0gXLxpGCZrKfng9BL0bibsaAJYWsbbH8fin4oW3qLnAYCL5LPhpxGNb4/6Y/f7C9cm60R6Z6MW2wpYa0T0QANAMz6IozCHVjdNvPQSuyMOLiVbiDhFHH9pSIt1gx0DH7Y+xB4DZAvy+kWawokD6TY4xIJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735728954; c=relaxed/simple;
	bh=3aPnveGusJefJmRQ0tUfAeC/SMMTurQK9uFM7iibPwM=;
	h=To:Subject:From:Message-Id:Date; b=m7EMiQ/UmzjivfUrUO/O3wvQlpgCXpUgK6E6WcROz1rx/2sjebBHMnOWMmFe2QbAxXth34rAwOb0crdE8LyQFpkv0qTiQl3f8Fj/hgTz0UrxMmo/EAhMA+Gs+HKiiyqV2B3FKHNf1hCKad1hvGCCnjRPYmSJD0w5Wb7P9/kJklI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZc97RM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZc97RM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4823C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735728953;
	bh=3aPnveGusJefJmRQ0tUfAeC/SMMTurQK9uFM7iibPwM=;
	h=To:Subject:From:Date:From;
	b=nZc97RM5HUHVkvv/N7uLbIbT/EtQxIHLkpWYrx29fsbzZbu1Di6JnQ0ukuMJwooBl
	 W2ygKx0OR9CnUUU63781uCdxsrYEiuxWtKhQ8g8pguN+t2/MK6cWVC5mPU4+jsF5Pg
	 XIX8Dr9FExWVkeQp/nYFZP1Ftz4kJZowif27lXvWoCJmH3fSQUPoDzddwB0g8LB6lA
	 j9yps4BKX2yEiumYlPRMKTLPOJv+0curgDZme9WngetUqQT9hL1jvle1oR4Rt+paym
	 whhko8CF7pvRGDHgF1WcGxdhUm9hXhZOEFz4tNN96RMWkCKFCBy+SNlEF0w0+GqZPr
	 hQBW3hSiLW8CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B69E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173572895357.14639.9423463944423598502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a5d84f0f821003125ea03b75dd0f07f608d61a9787196ca4063a33bd0cf0f8
Date: Wed, 01 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735728953
