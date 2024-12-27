Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293C615575F
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735341954; cv=none; b=JHbT4rcoQgN1bD0OLmhkHzMDmvZn1efqitgZOYr3rWryZhu07ujY5r9urUXxcZBEWu99g/qQrQIOeNPgwbquA5PuqolsA0pYxQvHQwJVeO1EGHiyRAtHUkkaRStrzjdS7Hfc263aT9s0nbtqKzCXFEBI9/HOgL4sjumanMY/BB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735341954; c=relaxed/simple;
	bh=7B0AiklG+MRW9lcrbxgS1QuK2evIIvuL6IDKt2L5jWE=;
	h=To:Subject:From:Message-Id:Date; b=IDLbu7k1FLgLcxTsrNOHf5DFasNBDNZR64B78u6rOTMH3NeNemHTRr4uR43vncKXx2vB5x83bHJIiLuRSaY4PhYOTF9qFkQr8q0pB00hmGCjAVvXyPipl9uoUwp2k9WHB114U1amaM+0VUw8q9W964aJcykBDEpyi2c3kCVG8qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOGIdBQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOGIdBQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B8AC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735341953;
	bh=7B0AiklG+MRW9lcrbxgS1QuK2evIIvuL6IDKt2L5jWE=;
	h=To:Subject:From:Date:From;
	b=VOGIdBQCZHzsMn/z95yblNGwGriEwtq/4h32dkbQo3MZk/ALzMY4zvfVjSVbMLTR9
	 9KuB5h6ZcrMLQ74O8GfM9pgAiYCAi49lHaBBKKKFbEEFBj2TxzPsZSviILmYQwvzwo
	 HddZbwBlG8dxrGgolMia+EIq3uK5m0mt8P9WUh5vPj8ATliKCnB25PD7n8G87kSVK7
	 Gry+lBF3fpMOCOqvddulPtHhFbNdsGeWhfBeAwCX75mlkTt63kA+zFx9bQ5M75kyc2
	 JAJOY8yyrUgjdf3w/D+YvsPgf6/PO8TV3OOyeDv5ctIeF14cejff6UXZatncX/h4Hu
	 PFU8axRM6Rzzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB31E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173534195363.1543.14665264610664631516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd19c8711c54d5337eb27a80810bc741fe02e835b6dc9a5bba396e4e92c2037
Date: Fri, 27 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735341953
