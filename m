Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9F4276038
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766560434; cv=none; b=r08rm9FswpIL/6JM+G2JtExJDnIkXEIS5DCE/8kCSbRgfy4V1CM1lMKkV0AfdkepmsAUsfaA48KBw+r5dj4EVs78VYyzVuwSXo0WdCHZTaOf/BK9VqaD6B389Rfq/fUyZw8N0XPosgQKaiZVwG1H9kNSNypielE5rrko3PBAHNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766560434; c=relaxed/simple;
	bh=m8G2aeogaC9uUDaiBkUPvTjBqNK2/PC8s+FA+KSjMo4=;
	h=To:Subject:From:Message-Id:Date; b=iBMD2Y6c/SDS17zIJGdqPQAcnT7s0V5z4AiVTJmlQ1jOmXhPjSlkxT4G4j+cZwaXZ4NjfKgVaJQYG3T2EXPte5otp+A0ioVV0Co/PlSNQe2pQUqf6qLA4uq68elQIIrHD+uI9E0tmP2HH6mR8AL1awmFwekjnxAAAx3qDxzg7LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prv3xBRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prv3xBRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56A4C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766560433;
	bh=m8G2aeogaC9uUDaiBkUPvTjBqNK2/PC8s+FA+KSjMo4=;
	h=To:Subject:From:Date:From;
	b=prv3xBRklp5P8N/xcG5r6p25z9EqtlI657GClIgPn2o1+RgA78zBNcLZo8Icf1tyV
	 b79waDnlntdBmlP3+5wmx66hIpoRmM3wS1BH6chJs3o3vFli68vj4xO8lFYlRyuapv
	 phTZnf/m4An+W4a9nc2l+Is9RQYwI4piUQ+8vywrWJjPYUCZxpWLzkKgYdwVqDxcsa
	 eKNbLHvahqENyQylFgxiJpgXf4IE+KnxOdZqBZnJLkRj1MPPsFRacZb7H3jn5zXVSE
	 S3xbjAvnBXuHgKgSOrj/X/JXM/Mw1xP6BkhuNIjXHSWI5X7sJzQkzE9tbJw5OtKUZn
	 aMeqDbRgHSXeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94648E7491E
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656043357.6824.7304090444537845821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b6d62e7119334833836f1ae8fb7be027e7f609f7f458d6c59266f1f86e44c36
Date: Wed, 24 Dec 2025 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766560433
