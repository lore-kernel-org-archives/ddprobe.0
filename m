Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6CD393DD1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755903594; cv=none; b=WVnOun3XPnBUlB9FAgdSa+WtkfHJDxxiwAFmCPcFc4dfFnI02E2YFzOpUOaGDIFQzsRYWGHa67cuXs/kbZYsTJ0hnJc4pSdcpTs/rlyhV4J/LMpVF3mrjGGg4AMGLO18sMH+l1/GzQx0pmpqkBNvhz+15kV/zE5WFe5PaKTHIzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755903594; c=relaxed/simple;
	bh=e0TgaYcS+QM4dgACqVWlJV0OPJpmKQ0PU9Q60jxM6Bo=;
	h=To:Subject:From:Message-Id:Date; b=Fql8tFnyX+Mc1wuDALU8Y4vlxvCrQtQO8uuFSiUSQW8r8TNZmQlFzUv20X8oL6gwHevmAutbgjYHMp/HsDCL2xhOGjaaoX1JbCPDmJDyy+GesVASqv6InG/kDpdgFDhoL+p6hKAcM0Z28GSJNOMrqUo/4P2avC/KWaoieyj8A5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEdlrgx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEdlrgx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C3DC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755903593;
	bh=e0TgaYcS+QM4dgACqVWlJV0OPJpmKQ0PU9Q60jxM6Bo=;
	h=To:Subject:From:Date:From;
	b=cEdlrgx8Jko4loexYgeA4wQkXuniUqV+/q8A3YmYfpbiyHQpXgdoaoMhGPLTk8kPQ
	 ET63Sp6TjU4mQy9rZOY15jEWVRYU/adt8cWptTTQA9kTz19h/20B5SaNtahXK98Pv3
	 kf3MilvzXJSIRqeUCUlKhtuWgcalqhRHdUJFBk4TUSp3f5ExXhQDHHApWfz1OwZMzu
	 uv3KMc5/g3iI0LMsD7HUvsQUPPu0QWMewdq1/88h+rP1MY8lzETtS3k7kgvzL3+0w4
	 lKF64aMPjTT33eBnLw3+maW8QO9lZ5xjljXQRsdXuZcWW0NoLNy0qnNj2rd1wFiXxo
	 jx+xs4GJGzfeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E12CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590359358.22100.18359461307010631520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff8979dbbe083680b2885da72ccc839911b80a842dcb25a4297e4c4cc53217d
Date: Fri, 22 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755903593
