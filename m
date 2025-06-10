Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294E82356A2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749573594; cv=none; b=iPWoDLrJCWoYEUjLTAqddA22rN9qykrUk4RyfSdvywkWgXhXOCehcwKajZOaGBBIomEzan0Yk1JNAIoQzJbybrvGYaozGuRlmHxLfY0VErhfBi6blDhKWpErrVsSjo0OkNL6Zp35AFhWCKkDDGxSu9zJIEFr6W6ihUkKPurA1QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749573594; c=relaxed/simple;
	bh=e7rcgOjmoTPsr0m6OQi17/HMLH+l6tpCMUTgDudeg+E=;
	h=To:Subject:From:Message-Id:Date; b=Zr/YDO9jhiPGFV1DEjMiYaDQBbVPibQJn4GgtTGM1xT7Qi4BRVClGS3BEuYG6g1sGur0F4uYZOZ+juYrye6b1NGCCBBdJIuKIqrwHco8A3Yg10hhd/VokvNl78jgAGqglvKnH64s7eA0z+/0t0k6Ee8KoMVaW2hKRjeRGRFysso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAQ6kORq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAQ6kORq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F37C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749573593;
	bh=e7rcgOjmoTPsr0m6OQi17/HMLH+l6tpCMUTgDudeg+E=;
	h=To:Subject:From:Date:From;
	b=TAQ6kORqGyOZlXpF1dGiOByMZeCsS40wOWHA0WWuyJih/P7Jzl5pWRi1l0hQuZFpS
	 x8kYc7FTKM3MsA4G1KdDe7efGw8NKxvBKaPZHQb7BthoqEcmhez5AWEsBaQeV02WFF
	 dNo7xYtQqWhwaAQ0IxcVi/Wf/YG43NbzbyeMICsR9XToKq6llDLEv8hFbkvZlnqc1p
	 rccxu4bi7qZjXsZK4Gp5Xj18aT2qFfzcW+2yoiAoCU9MNpuBsX2CEx/EhaOWxHrUXu
	 zj+sWym2awdm4/U+AzxN7uPM0KnPreEMq5o9B2x3Y5rUj8Nu0GjVqzT5AX9vpMqmO8
	 9qVNnTAVeDmZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90400C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957359358.14205.7553262510230578782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92bbe3edc534f1f90c82a0b65b798175d602b42073ad61560f81cb154b4b7674
Date: Tue, 10 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749573593
