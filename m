Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E48285C8A
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758808194; cv=none; b=DYdDS43YxI1bTWQzSx3P82MhpSNMREixKoCnX6FQfapt5VQboUxOBDVbQHsodiQyhfq8ydSC5v9tTqeihwB7o/EcvKqEgHmmrXXgo2bLZP9XSQWCLb81vP5+AQ0B9U1yesdEnJ574FEEtzRgDvXHr/4/E1jbDGjafoeNsIMe7x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758808194; c=relaxed/simple;
	bh=egB9LzhKSGDmZj22WZ2xasle8BwXWzcTsISMaxMk7KA=;
	h=To:Subject:From:Message-Id:Date; b=jKcXjN+0SiTa6f3ZCZZNMSv+s+AhiF67ih6qGTaTKCDwYgIluPLkFUfyNVVQKW1IxCKRffdaKMT6ztsVTwa/1swJbxuUoMgKeUoYjVTeYTtWo7UekWHMwz3GUHzm0zc7x+XA1XNJksXCz7TjjaCWn3R7SG8W58NYNTYDxQxLKkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmqS6lW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmqS6lW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1136C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758808193;
	bh=egB9LzhKSGDmZj22WZ2xasle8BwXWzcTsISMaxMk7KA=;
	h=To:Subject:From:Date:From;
	b=bmqS6lW91HzW/koN6lRY5fNdpRK5ESMDDRgV3vQxICG0MWKIxGWBbWmrGOyULaF26
	 v4F+m29tQ0h9TFghAeV+94Dar4uxsYI0DU0j9LRts2+iKjKE0a0C4LtzDD/Zb4Yifz
	 UbhNaJraQamRsimSfNcbJiZ1cHLDG/T4vD7E7x1b8UP6kLLZRnGWjZrd/oHzTClL+m
	 GOJxJA9CD1kqXfPYKxy460L9DU7nWHRHgjELi0Zjve791I5FysPRzmwfI+sWAYVmB+
	 f0EdzQbJftQ76kjoYDLwVRSz5CXiqdLEne2PlQrAwMsuyNyOPe4I0DqeTqd+dU4Y0w
	 Tj3hp2qhipf1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F4CAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880819357.5439.15361699741161481205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db652b90326fea0c9ff5d9ac4a7247c273e318d79e4fd155b302d408129107b0
Date: Thu, 25 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758808193
