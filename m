Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D4B18E76B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 14:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720536383; cv=none; b=iZ1BVYsqMH9VWzbt1eatVMba5zOJ7DT/wm8Cp+t7428sQueA0/kY9m319USy1cWUDBSIBoU+bZGDcizynx39iMeqnuDcIXNDIekY6MmGLYqr8zlsH7irs85O6SgZPgN0hyWSaYD/PDILinYIP83vOfVH4XvMFyO63Nij+hLqlb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720536383; c=relaxed/simple;
	bh=L3r+7fOdCo/5ITrGuyOxUUDTwUg8jpjZHDmes1t8Gy4=;
	h=To:Subject:From:Message-Id:Date; b=QAWmg0TKJ/j0vUV0TnNV4QRSRtcQ+VAVru9LmDcl/r2g5oWC70Qe5QL/d6b15iQX/qUr5tDadlqedA8p/UG+K2I6ZKTyyDR98C7dJzRQdpo/UG1vsod35s7Va2JMHWA4nhJBzMbb/Orj1O3waW/QjdLNd7u9kLYK8aM8b6Uc2so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afOx7aZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afOx7aZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3239C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 14:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720536382;
	bh=L3r+7fOdCo/5ITrGuyOxUUDTwUg8jpjZHDmes1t8Gy4=;
	h=To:Subject:From:Date:From;
	b=afOx7aZfvwKIcW67fmHJZXX08ZymPIHvNDsOYaUxQ+v0HrJqr7UbWxN90rUEXs/4k
	 dhXa+ppPi4rrQdBZddx04n+hUywfqSrv1uZ4fQFKteF0KDIiZzqtQ5U4ASAtyCV6aM
	 sP5TkLUY+SbE0HmHckFZ8gXMtG7/99pZPacYdW7D/nbWDu6tRgmUkTf49uM6/eJL7k
	 heS8aHdhYuwc4rLKbA82DY9P+Z6Nspq8+r/1FeSm9Et0wkBuGE0LdjvUfCTcnuYPhk
	 KTiEfo/IGk8tn0mMp4D4P46zoP3uLAifV5EtRYbie0FuuDASDDEgaKmk3URQD5IHw9
	 hPULw7cdUgLFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED4DC3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 14:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172053638277.12071.4502676396781632714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a053d5adbf69f7270807aab7cf4ead0b64d832f2ff19727d0f81b83237f92b
Date: Tue, 09 Jul 2024 14:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720536382
