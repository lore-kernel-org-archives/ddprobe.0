Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBAB337BB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777087654; cv=none; b=DK4NSYS5rD2prFSeQbYxwcPLiojA1tCQBHzvrHK4aFfY1uXIxgdpTnH461fKF6yXyxvlXuLctV7+u+j0vn8Xy9vpeWH7haHOjqqjVRtHL2LF6pY+pllw7a3PQp7uzmdZ7rL73MIh/LVuM5HKeX4Kok9fElAQl1WrY7sWObPeUog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777087654; c=relaxed/simple;
	bh=gzcfhuE8ZPHDi1SgnaSMCtFz98UKLop5fZO9L0+gAaU=;
	h=To:Subject:From:Message-Id:Date; b=fm+IS6Gq6dn67vWWMvBawYfW1df/mOxuRSt5zzlpEhDMywiY8XomqsQTwtJ7ZpEtbKyyR91UpktPqkKWC0MU/FPe80uGNMN8cz/gVS59Qegmyz8M2Co1S0GbjQVwio5webyqijipVRc7ay4YLg+8NMBXU7HRwYB59nvX6PI8FCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRD0nYGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRD0nYGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF54AC19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777087653;
	bh=gzcfhuE8ZPHDi1SgnaSMCtFz98UKLop5fZO9L0+gAaU=;
	h=To:Subject:From:Date:From;
	b=fRD0nYGazfu4oYc9m45N68QHb/sGRHsuYjE9esEdGTZSkwWgdxJUrcDLggy4ViGdn
	 VazTCloNC1sg++RVcx8OXP6PPhsuQpYS3xLqztMiSr8zysI3mx6EcTlmJAJVrYehvj
	 Wu0r5ZIqoYexr5CCy0q1Ycw1cfBqGD1crdQjCpZ6Yhap0oMObEGNy1FKDV1fN9k6ic
	 /tG+mpVruhwKt/p6lNCGMZ9znVgWmZZUqX525YiLy8ou5rKsbxKDw0BPdJHM+AoNR4
	 zRH5Vv1NYXNugZ9F+M61MVa7rtFZfqcxArZf3bs/vTX/ubIK2h/X2l6d9vOmtZSqf9
	 gX9asrWTbLvaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDECFF8850
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708765368.31121.11323848270475427207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42bb11544112c55f112efab7c06c7aa7a916e19b1d0f197002409067b6302848
Date: Sat, 25 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777087653
