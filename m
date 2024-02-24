Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EA613FED
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708748897; cv=none; b=sEEgRDvCeMKIrGojCt7g/egxQIyFif0iFPg+m4b06N7c5zbq7ZjJcZWHuGEtR3r9tkj0TayCPKyBdXmDTERf+l2S2A3Ba9znwNsT0VXICQEg7K0TCImdrM3qfTBjdAH9gF5wBJV8RnfoztiuKEszgn79TtMtfE3AlL/fmuxZBgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708748897; c=relaxed/simple;
	bh=MYodTwc6SbbQhDaU167vok2QsY0/blytnkwY1YvlulE=;
	h=To:Subject:From:Message-Id:Date; b=ZCSUYoGadVtPc9gB11txxwH7Peo1VZ7daLAWpkEymDr9TlrJjOGG+iAj57GgBpCDiNwbLbpcNROED2mVetwuw+vBc1EYpqBhifWa0SdaZl0MJ1VFcWl++Mniyw77Ayg+hMinviEui8TlRyR7Ghz7vHD2YIgHKF5y8uUxAWJYB6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=taJOESIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="taJOESIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95A9CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708748896;
	bh=MYodTwc6SbbQhDaU167vok2QsY0/blytnkwY1YvlulE=;
	h=To:Subject:From:Date:From;
	b=taJOESINKguy4o90yCT+/kfRlJV1MReqSqxlzHikrPJxiFyS0L1DdRkkK3OB8QkcG
	 K79sdI4dPkcFtq1aOxdhJBi72bDYNqm0ts8dolofTTF7lM+Uv8KMzxQaAfrm1IHwvc
	 av7XO69blvi7C18m1EDbg9OpE7Tn9G4ATJpBZ6MKkFTDbtAo6i1xxMBZO75cNl0e+v
	 US4lRJlvXXBwQ2pSwOfe1Ni06A0ysA2jriJNlhE3g/J4emCGhh/DwRX6/Fvo4fbvH2
	 oqMGjGwlV5oZ3R5/lKHWydQPKjrvCJ3X/yOpLrJxW3c9ceSk0g5rT56EtXBQHVWYno
	 /dNYIjtL88inw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 778EFC48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170874889644.23938.5336009295020160443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343f9e52346f09042c5132f910be7d619ea2ebe930fa6449ed6b855ac1913e25
Date: Sat, 24 Feb 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708748896
