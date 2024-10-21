Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F77B28F7
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729485954; cv=none; b=AfWFvCDtIapLWjYZO7KauNIJfFGoE8g2GMAgv6dIFElc1qN5PPghOPWVktOkWRu5fsBmayWgxPqn9XxACWjlA8GXYAMNopP8Ebo+JH6s8094zY1W0t6q7e6GL/BBGRkrMr56+DTNQl4fOw0ND8R1b8RTTOCrNuqhZ1ceWEUu7X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729485954; c=relaxed/simple;
	bh=Dyj44qLKZr69YbOK5BslpbOwrKU18MTyI5s3dkCnaEs=;
	h=To:Subject:From:Message-Id:Date; b=Nez9l53v3uqSRqzUYkT5o3LWT7wVVNgN+54hLyqa41QWhHczM1llrr30nPTY5xX9KXdUx5Ilyxxs9wprCorsTRoG5aU5jxqiDA8l7VBeWhDzWNoIlYLjYE5q7MGNwzIFNgD37YRYS2ApkgZLr4kfBJAy/6nXYMqCrldQUREetZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfV7fPEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfV7fPEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA770C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729485953;
	bh=Dyj44qLKZr69YbOK5BslpbOwrKU18MTyI5s3dkCnaEs=;
	h=To:Subject:From:Date:From;
	b=PfV7fPEa+0bzyhPa6oDI97gv0SW5LTmdzZEijYnqvSXnssLPH5on1yhNY7atdqV88
	 YyoCzvc8KOsQQAlm5jN7Fx6jokFuEe/GRbx/ZaKD9aRo7jILgaQJk81GaC0mdFB4CR
	 ILJYGsOdYhzB0elKDTI9JCb39EO59aH0K9pkOs7wNXFFfsWFP/eicRpIatIFnoWclU
	 cfe2JLaUEKZgaoFjD004rQq/GvgVb2siFqPf2NxlfuUApCMGLSiBZ3M9JmU3zBS5oc
	 3jxhpN+p1N171c+CdewbVDaOn9W/d1XTc78Jk5gR9CGecRg1rYQOoiyV2C1XDvqeiJ
	 /2z9trtjdxAwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1D0D3C93E
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172948595362.22774.13004518010655579937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef43f939f0e74ed754e969fe09f15c27aacb55f6a4e2d618346aed307be47b4
Date: Mon, 21 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729485953
