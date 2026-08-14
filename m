Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E18743E07D
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786706434; cv=none; b=sUSLe2mI7+1hWkaKceTXxk9BYpSHI3tO+mcG75q5uvJY6b4CSDmeNUgo7tYWrPXgsHjE/bzWnLpzKvnJQIlDf0YfArmBCtMQYYfyL5XHEV5O6CseagmWv9icjjVg8xZ5X7Ms2cJWOJ9uo+BEX/F/02ghpcuK9G9meg6lGARfT6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786706434; c=relaxed/simple;
	bh=cpOhi+AWHG1qDPz0VQ97PyVv9oEQBAfXx3OGYmdO9ww=;
	h=To:Subject:From:Message-Id:Date; b=D5CvxSJCZx8/ckODOkJKZsXJi3C/iG+VW/m9WC7ZzCdDVip1BxkEUI7V0cC279BB3CSz88GNb6NbhAa62jtqAoEk8sUsEorUluzAbcUDnllvqp7+F/2/EHwm3te2pWbsr0jnLpYQhfTZFgD9lVkdshpaEIqZ49am350qTvLbJds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDAGXUed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDAGXUed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13E7C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786706433;
	bh=cpOhi+AWHG1qDPz0VQ97PyVv9oEQBAfXx3OGYmdO9ww=;
	h=To:Subject:From:Date:From;
	b=kDAGXUedF/dXklu5QHAPOohNMmDzn7oHOn/cXZQpdW8Tw+9vc+6+gm6AzjPys23TX
	 z7hhMxBfqMW1Of6WHVGqRj7Gt0iK+MLPSC76lISVRDjtHZU83CwU0clzQ9pFQ4l7NC
	 NUxb2q0qUV5mZTVWLuLKomgOZp5fiV6zzWMFRyF8aEgGJtZKRW643ebgFbPbyUCk8N
	 me0DGf0kf2sy2Rj9ORuh88jDXxi5c3KPaJxFrLfyo7ZgUhO+a6vN5HzAXXbhge2a46
	 eHgsMidanqTDMCLVhn5QTaOz6MUZFOQ2776xiFta8PYKzqLrT0BDgTCX0/0VP4a9fe
	 hysVXKmSDbGfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E83C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670643368.11792.17666851449827207717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4018077c82d2aacf76a2fdc6e87bc0027d84104909092493d8900086b379aa42
Date: Fri, 14 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786706433
