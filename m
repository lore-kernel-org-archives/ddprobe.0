Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28293172767
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728218154; cv=none; b=LlQ4CqlI+HIrUYRCsnoZcC3kqiyOH6zYeRcbERAh9Av4xlmVd6pLk0xIq7iqgYbyj7+iX/T35qjMANcges9C9uIdr3tbqUlrtJfzBcGoRl4Hw7M6b1E76RMRZEVTfCgasMLGHErD0deJ2lOZ5n43eqOpAYeD+cIFm7P2gq6IaHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728218154; c=relaxed/simple;
	bh=qVU8OVbkf5Wa+Q+89I03AWucJ7DkTxuSv+bU5pQQ0bw=;
	h=To:Subject:From:Message-Id:Date; b=i+t5ZTXLYcyh4IQdu4XnDgZ5do6Uc/0vlXRARNNAlU3hHwnOrJwmSatbXamDby8dDs1mHWNivKEhdDqxyzDAD2Uy6zLzDzuEB+LX6PDor3vwe92mBAUxSskJhJ3qyuZin6I4datsOirP0eV8AVp/ZVpGHZ6N/UqdJDlc30wY4/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYB2qwlY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYB2qwlY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10E5C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728218153;
	bh=qVU8OVbkf5Wa+Q+89I03AWucJ7DkTxuSv+bU5pQQ0bw=;
	h=To:Subject:From:Date:From;
	b=bYB2qwlYtxJvNwzLD605VMTOpa4tHIn0uq3PRoZOIUZwDYLBjxhqT2dNDX0qYswli
	 Y/VQKxZPauJRHYOczZFXxmmGpE1qWeVb2T+BDAPzczjC/r9jnrl0hF0WobsYMUMR+H
	 FPvzxYf87Ug4j2hGYhEwCy5kyNujiYkdtzjlKDrXD/4FAquSQ7AiAHAsmYBSE0O+8W
	 v/0rWfqMCdDggPZJXJcrpYA9XAI6OlrRcBMsdI3XnARvoTOB2QQsYeDqiGnukVejrs
	 AGTrmXeni6ImO4B+Tk834HP+u8SB6hkxM5BvPUcd93qCL1P4SmSwGq7pcyx9UWGv3w
	 1FSuMaber9L+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A55DCFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172821815358.3635.8544479422106599692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef01ba4a1e861e3a4d6a628d2a0e60272ca1f62a76fe987037197cf991da542
Date: Sun, 06 Oct 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728218153
