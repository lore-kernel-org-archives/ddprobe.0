Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5A32F8EB6
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778981434; cv=none; b=TF25lPHpUHSJbIHw+sxdc2PYWP9yWx0Bq9p0C+bSXvlk6AibfdEm2kPQE3ea5qzveUvnZf0DxF3Ow+dhHnIF3SYmkQgA+HUdzOYHQJH3ODITwUF3TqnkjD7dC9+tXI73B037m/MPAZJnwJ6trvKd/fVEZDKt/nugp/JI/ETDSjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778981434; c=relaxed/simple;
	bh=zEArcJXIKLQ8Q71wCvOVZFuucNfYsA3cIYe+9mqUH+s=;
	h=To:Subject:From:Message-Id:Date; b=PWEICsbn9E6murrMMB9cPzbvl3myWmo07fCqDhKLpd1UHV2+uwL1q3QBNAJV4VaSXQDCH10BifaP7Y0LsvQAyzfaUGueCvwOaiJeLkn+hta582BCWStk6rMFIRjnFi3jPhlLyDPyfzxRJuBJZqSZOAlwHdTMD/I7FVPObEO7mXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2ofvQxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2ofvQxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53E6C19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778981433;
	bh=zEArcJXIKLQ8Q71wCvOVZFuucNfYsA3cIYe+9mqUH+s=;
	h=To:Subject:From:Date:From;
	b=d2ofvQxct+1QI59QcyGDDWRrktUMU25Vk8jsqWV93jzosAvqZYL4FUdQC0NfrTk1O
	 Kwqqu8cJaaUtJiW3r44dlKWa2e8hX0WWyrS6ha30WSuKrjsU8srD4zTV5LNJAnv9ks
	 BUjdIIYp9d1zC6Zf8LMQTjhwuQo7sma20QuCag8L3l/ZXUWVDmgJUkKa0w4EZTP7ik
	 Lr9K9oELmFZfbqFSdGPs4rjJ6bbo8X7dqZp+IKv/DuVkTGE5e+RHNzAfnGhHjaaSjN
	 Qc+1lq412M7u2Q0ug0vDxAzKAZ/UNgI96TlQ8tMoT0gnl2Yf7utCsodXhQsstED9c5
	 Xo7aTNsSLeJwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4F6CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898143369.21325.8994739729224055387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e1f7f8d7b2fa6941bc10a9ad8cc3b1d2272202f0a86a172701ac92d3b4c15a
Date: Sun, 17 May 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778981433
