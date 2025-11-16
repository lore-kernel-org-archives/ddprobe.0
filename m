Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23618EEC3
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763287254; cv=none; b=rg7jcMiG38r4VYDr5VzsDpiwCGuCrHljckMkeLe7LK92DHTUmHmRbdUHRxn5CeYWiWA2wMdAG2+BOW3uqQ/TqwWMYEJNP2YnxsQKgGvLOIwA2G6u/BifqQ7qRyRkGCA8lL/GsHbAIDzGyRi4i0FoEZxPohPBJQ+rANl6QkRASmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763287254; c=relaxed/simple;
	bh=GptmzcLJoFYx9TrlWENfzYkWvR+HZcWXh6w/ObTCfrM=;
	h=To:Subject:From:Message-Id:Date; b=lnFDoF6H08Iij3gEMP0KUwR7GpTp9+3Zdvy/v8eWNqJvYaDRcrr0n0AY0QlYS/QWfmzb1S+y6DM2vb9vIi38edvFJmS2q2GJ5kvr5ozAXj+M/nJrvc2q/dJh9IN4zyqD1//H6j23t8GKhO+doRNmS1MYqq7BlaMexAcH0r22E/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKW7jBLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKW7jBLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F0AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763287253;
	bh=GptmzcLJoFYx9TrlWENfzYkWvR+HZcWXh6w/ObTCfrM=;
	h=To:Subject:From:Date:From;
	b=qKW7jBLOPw44lj0+MI179kKC8dF41G33taKR/lY/HzVVhhN3KKD6y111Zo6D//pbK
	 8e0KDBIf69yTLXKh4r1pd8vtKuUc3Rjp228u2Ly7Hm0hp/CEdYe9KDh41x1hbazc+a
	 Ttz2itINohtrK3czUVMjaOoU9BiB6gVW911YWPFWle3sR+z3JU8Zk6qSmEEh/bFXsM
	 gr4hsjtvvIrJG749VwIHDlvfjbxpVrI9a7xxOw0T5t2JgCIzD+jb1TEBO+vlH68gpl
	 JBBrhMPrEcSzMA0VmEQhPX10xQ8OLP34To6ARGWdvno8tIYQEK4dYdqxNltrY7k0cP
	 Y1s7RX3hVuHoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC0ACD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328725359.1848.9789676463411106541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94de3985ee4fa4fd2d67238f773da2e025e9137be42130e77fba91b48a7dfec
Date: Sun, 16 Nov 2025 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763287253
