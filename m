Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36724157A48
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734727554; cv=none; b=R45joq6wibdJx5shGpig/MOtqv41fHhTQ2H1vQXnhedTkKv9YigjjR8JOWP4B/Rf7Yynyifl6Li4BVoJ77VnDDsqQjL0hqB0ElVPSfP922/zkD0d3r5mRPY5nPMdkOcEx6yxvEXc1ZtCrKrapaVlvQEDNzW2yoMiBMKJ+4glfSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734727554; c=relaxed/simple;
	bh=TS0OWQpBAO57KacfHCpbel0pE6CRjjFEj1iaxvRsGA8=;
	h=To:Subject:From:Message-Id:Date; b=DQPi7iZbpWLQHyqOw0N+CtLnimP8rpxAPkt7xdXNo/nC1HZDPryKx75iDmZSpTNMzzJe7hpaKY42dwhoMpVyPKNN6B4AlvFzDrfK6sCvj7bVyCBKmfJiY4vCjIvGs4Bhu8kSRjvAwcDK7HupKfm6XKItq6sH8IqqiHD7czG28go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DW3mIqFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DW3mIqFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45F5C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734727553;
	bh=TS0OWQpBAO57KacfHCpbel0pE6CRjjFEj1iaxvRsGA8=;
	h=To:Subject:From:Date:From;
	b=DW3mIqFNT7gQxfhmfU5OnfYu1/qRab9GnUS+yg8q90r3vTBN/X8b9jlhjd5SYFcHD
	 MPcmpMRoV/bOTbL11Skl10huVfcL7bL5czNHor4zQfb+qw3/QL9+jsKFvR+DWEnITM
	 dq97nq4HWhkpc8GjTcBZsAZRVdNIQe54XbmYnN6POUZBUYqtykdQySonM5fIGQwc2R
	 5P1IBkmNIrC1jgEWB5Qva2T7xdkeHWP9EAPCxdzAA3YKnPQXlUyZgZ53nKTZGU+UQ2
	 cG88mSB7t/H4lRe6usVQJ5a84s2+VFvz7Eaf9w+ICT46OHgT5do8qVMKlPdzTint6l
	 LPi706QWuXjOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A382E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472755362.29281.13243522823349204912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168f10326fa784000ea55b65f9bb0153409bdad93e6e6e6d7d197c6eefba0779
Date: Fri, 20 Dec 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734727553
