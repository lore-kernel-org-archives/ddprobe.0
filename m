Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371001A23A4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747621794; cv=none; b=XWBfXTOv6/S/iOnygkvPz31USMDFEaM31sAgGv6kGM/7zC7H92/RyNYgo8J3estKaY/uMopb3Sa3DnXrGA6w7l/CXDvFE+qqK3DLPikktshX+X1RigJ1cWOo+ifsPSQoxVDXokmqF5ngMZhArHr2pU54MB7FFSv+SmElLHPxaMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747621794; c=relaxed/simple;
	bh=ZwBp5JS0UuBSUcEtmzHgTHMOnqF8CDf7FBxkHen3NLs=;
	h=To:Subject:From:Message-Id:Date; b=ZOvXa5N+Q2prFOdHXepmfP2gQEt6ycBakd5ElZD6dDYo2tl72VEyHvqBunOYrjIbOJc9BDpU1VbvB1cdLGIIXyd21IK6Kf/e8PcCUMT+r+5zU1n82/QaX4h37aq9QbCeYwe9RjpCBClOsvoNp33J2vQ68EmkROFw9Dgdm2yNfsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCMCvP5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCMCvP5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E85C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747621793;
	bh=ZwBp5JS0UuBSUcEtmzHgTHMOnqF8CDf7FBxkHen3NLs=;
	h=To:Subject:From:Date:From;
	b=WCMCvP5ERupVGsMGWLI0wCxNbV4npdBIRyGW4RugB0nV+pYSyyLYOHEP3ifongR9D
	 xY5rv5cnI42uQfH40hOMbr8/b7EuqaSYXdptvYjTGTu5W0JhVY6V62CI2WV5iCi1XK
	 QgznV19pttewvv9K/Uk33sLRweZpias7VgRWtOttsAwHcen6Aa2+FTe2m1YwE5zXXM
	 E8vV4bU7QoM3hG7NTSDvmKHtXfFMJkkqKBiU49pXqWGlxeb9mnroURXvdHr9/qRHYg
	 YtzPf0KiSI/2Jzt07Nb1QSGa3ntqV2hBma7ZpqEQYu+IPmJ8ah6N1PReR/h2NyVoVZ
	 PeUO+5y/ujmuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB90C3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762179358.17404.12220105636019315950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fbb732c7559dbb14dbc81b77dca925b2985a5757313b2632f4b37931c32318e
Date: Mon, 19 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747621793
