Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19857223322
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772198694; cv=none; b=T16agw7O9drmtwQPjNT/079F2Laz5W0VyXOmk9NKQ6/P2vWe5AAsgAYW+aXMWEb7FEdnw1usGJ2jJ8WJH6ZK72p3id4GbjuGfmwV2Z81DYQVEiqyGaK+7Rf9VG9XZeLba+mKzeGJKZPspu5wN9KJq2yWI6iFM0f07DnJGyfBHuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772198694; c=relaxed/simple;
	bh=gxSxLINJeCIKhY/bOGCgp9BqVUf/l+ziIK8qcKReiDY=;
	h=To:Subject:From:Message-Id:Date; b=BoH+IsJt95s0R99aH9Sqr2p5WozcoYtkgL8oxoSSYhU/1P8khQL6raK5KvTvDWh9VEwbC8wRDUkGgF++KqOvVuN9tUncj4ysgqb54rnkM8t6fxqxEsRvvy9Rf78TmuWosAHvYUDBgsBQNVn9LVahSwlSpDFgTLd0xqr80JeP5pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKrfhjvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKrfhjvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFD5C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772198693;
	bh=gxSxLINJeCIKhY/bOGCgp9BqVUf/l+ziIK8qcKReiDY=;
	h=To:Subject:From:Date:From;
	b=pKrfhjvlCDn7msYeI6EqJZ31kszdDNz4qk5DxUnJ1XrgQ+ebs5Bz/hPN8EKEW1FAE
	 rqCqqSABBp9Z+1lmaK4xkZnHpKRikvRc3H5s79xU93xgsEKvkkBuNdTxJWPtIlg3z+
	 +diItoHTad6mq/kQacgmf56n4cboqmW6Q6tkRAQlNU0AoqjhUwfRAVeK64QC6GVYrI
	 G9ursxf5EcQK8L8QbFgU4vzMbpq+Ny+7fnilcs33+Zrg8ppNGVmmjC/nDIRgC79ojS
	 iey7hsivvtqU4OnYXfvgKxh2GUFOntcvhB6N/fQgj4MIW+U6YFEr8rzqHvHGGbNPg0
	 gil8lJ/IU4Ojg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D94FEFB47
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219869358.1599.12421646598951902233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b482c35c37215e0f9a761afabb24d24d8d3937ba40e3bf1a8bf4f47413fd0b
Date: Fri, 27 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772198693
