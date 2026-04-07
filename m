Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86950386C3B
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775601334; cv=none; b=k9PnLcZ4pyFOUMQ5AftaZxLJnqjVRVskKXmnuDquK5uBVWoO4SR42/jD1lfCLwyOJZjc3uOMXITpteFcqRthwKRfy278nlJmFDG1YdG6cFJvAdMteHme5W8aJ+QXj59+fnjyCB9vrU0w7wgCg6Sdj+HSK8RREudHMi25Th0UkZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775601334; c=relaxed/simple;
	bh=yQK8BPhIVpAQyQJQbe66jjzu25OnFkx41ST4S9dD0EA=;
	h=To:Subject:From:Message-Id:Date; b=TfomJq30nC8F+XtU18DUTMzeXi5QNW8FMBXz6X6h4kGMWkybsT9DHqHqRY1NaF6LOnaCy17FReX6iSky0weLPSmULfUniEZekIH3tg0x2HIlaSME3edIJmdoWyaeLfogp7E039fMxXcRJSGqkFAYnFY+wKxj16wQ9HUM8ZYwMgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdksOdF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdksOdF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 285B7C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775601334;
	bh=yQK8BPhIVpAQyQJQbe66jjzu25OnFkx41ST4S9dD0EA=;
	h=To:Subject:From:Date:From;
	b=LdksOdF6BRFW5Ys3aAQVKFKYH/3p1e0d4PLqD51UG7dw56OGW1pbkSIYIK8eCjLhM
	 QzqZB2sqm1yJSYGlu4vsYt16WAOAyZg5pZmb8QAt7DWRGVb4SPzwIUjqnfv8C00tLP
	 acQaKpcMmwsLP1AFA+bn3/6SXErZ1Rbt1IGnRUga1M2C+J3aOId7wHveeekUO0RCI4
	 0Ofj8x6tqPj2zQTU5ZhYTw6m4i7GIieJ2NztvYhxCEAcO/hNaowaTR21fjwo771Yii
	 +cNo6Vt/TRposLNediEyVbn3Dm3npZZmo76qgUVuYLBq0eloSxOTnp2zXaf/FdJUwN
	 OlTvZ2aXBPViQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D46F4EDB7D0
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560133378.18706.17622983303785997098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92946e50d95bfe8a59866e8bbaabc335cb726e52a39f30c7923f11707ba2b8fe
Date: Tue, 07 Apr 2026 22:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775601333
