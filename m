Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A8E61FD4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720010723; cv=none; b=axI7LGyjSV1DFLN4jKPTjeaMf2Q3y/9dvJP9bLlbRjLQu5wtvTSIQ8D0mB8GkwkLs/CrlHlR0X1K+qp/JJAlz2cKmDHh+9ydIC+dPugk2rv1k5bELxQmfonYHSbnGev5gPRV+mXpSHz+xkyl4TCXPtrqAyUFvOVD1fE5NViEIH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720010723; c=relaxed/simple;
	bh=VlmIG+4dqXyIlhi6Gx1j7CjYAbS7qvsJjTY6M5lbVvY=;
	h=To:Subject:From:Message-Id:Date; b=dJfnon/oGmXnLzLc2qYHAhsxXNtiJ0kx7IEK6wNwZuUg3TfsjimJkaLFS8BjVzmURph0kmd2OChNRktXnRB576dhgTa/5cI+MCP3ZN5NRi/7T4phlKhMRy8ona7MlOwB83vPpw6xrEPgdjERFNIKIOakC+j29i7xcdplQx9yhJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCWjl3Ro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCWjl3Ro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1A8C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720010722;
	bh=VlmIG+4dqXyIlhi6Gx1j7CjYAbS7qvsJjTY6M5lbVvY=;
	h=To:Subject:From:Date:From;
	b=DCWjl3RoAmvPght+vGox276QptQbtiNDpt4+9kHJkGOmVeaQdK626cvRCyuFLH2gV
	 S1nRFDOi84yI1V6gd/uB22jFMx8QCoN1z6TfXcnlEPAbJPM9zRUl4afaRWUvBDp64R
	 hAr7aIQjZqiPsncZy2zoLUhyFvMrLvyTzvwCNh/OHIQKLBJihPp7LduBHLp5LO4p7F
	 Gw475cmHt5P6ZtC8WAV9nvhCnDi8Cxmxim6ZqmWR03jwT+G9k+Xi3D5eSSHsPBqxyI
	 k5RA6bQ5zYySOkLlDScNJJxJjbLVz9QwzDEk8dzNCFSv9IN0kNJwFvzMdWRjD2PDQ+
	 /fdihYu7h+NTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C154CC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001072278.15125.10934674902032680692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35b3207151c23c0c88fef9289ce8944d443693323eeed5c7dd7e542f16bf93e
Date: Wed, 03 Jul 2024 12:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720010722
