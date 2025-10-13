Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2345D2D6401
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760383794; cv=none; b=BHrDkXgaJ9SBnDMfaGtr3QaHi2NtHFhyQ4cg7RqNwO4DhpLdxGWeFFtDzoV+lI7kzdZ1mbMEpZdqsWD4CkH7WD+2DB0V16U+U/IYkJPyEiOFm1Rgir39DPThIDC9kEXDQrgh3WpZBtertDJO7voTqJRB4j2TG6nJ3Ywz8qGVIvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760383794; c=relaxed/simple;
	bh=6sEkxmaTMbPFXuFD+0wQ0+xWruRtncUv9u83DKDoEwc=;
	h=To:Subject:From:Message-Id:Date; b=SOHon+YdHDSBPw9s/6jIiA/acv9jUWh8jbkOdpYgvnXVGq/W0ZMhpWkfi1kiLQxvA1hdk4irB2Idhf1R0gVJ4dF9SuLwOW/684sRcuwRWbTJmsWa85p0UE7NahPenfAHHPgcWZNFKXlC+/SjTnQJAeoZGRuBVyYVroOjNtfenXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4pu9Ohw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4pu9Ohw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7C8C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760383793;
	bh=6sEkxmaTMbPFXuFD+0wQ0+xWruRtncUv9u83DKDoEwc=;
	h=To:Subject:From:Date:From;
	b=i4pu9OhwUX3+nyzSHbhStvjj2DuL7wzZZH0Mk2P+gt/FZL+g6aL1kAO5LVryvZhsP
	 Ghflzl1WjdUZKy1nn5moHSGDZEe04BkGQNQy720Xhjj5BYZgBdQmhAi78hUzWvLCAu
	 hf3vZtUWGymcpkUQO1aEyMSF+XR6O+qzjDmvaD4XlOXlaRDEfTNdTpdrcq09Q8AZ4z
	 Czbr1jsZElVxjUqDEADFDNlH3iOuUwlBX9fnElOf1vMobyGi2ZHK9fMQMKHArfpBzl
	 4XdY/gxN1fsXpE0pr0F+2FZ8NGXo2xwNAEmmKJZ7xeZp0oxHzQuL84ZgTSXDv/fACI
	 fDDLtRrZfz/6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA4CCCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038379358.30516.2965258589471234115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad41c6f8e6e5ea945c3904a51528775600f2368b55895cac13a5b4e0b9fc668
Date: Mon, 13 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760383793
