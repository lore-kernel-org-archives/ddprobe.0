Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DDCB34E74B
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764947574; cv=none; b=StrbAUnU/48b9hLKc2dNqSvvUm4PPG67Ohm3fEIYbgl4k/Jcu6pO1SNykDnURo/ms/QQbC9KpXPYcsftd8++ZUouamAQh2meWU0js9FUgFybY5zo0tuv2oI96TvUsaxojzgxPESJy6sk5HqiFL32N1TEEgZBUhLXxclTHQPviyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764947574; c=relaxed/simple;
	bh=H83QLpSzexXfqJ4aQEddMQoE6Ltj7zZzr53+efO5Y1E=;
	h=To:Subject:From:Message-Id:Date; b=lMU2iy2vfiDIwq1hVmAEMK4UaZp8BrpaFPiM503uXSoVvJPAiLe+oe1lbMwrx5QZpGGa1ssJki/F8HK/JlsZ24eNY4ZK45n/oguXbbVvZSAV1f6Pw07TrVeRb1ZoR3Z0pPeg9WLJZ61Pk920shZUuEJe+NXznjFX/Frs1aBseNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3MPEYwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3MPEYwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DEEC19421
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764947573;
	bh=H83QLpSzexXfqJ4aQEddMQoE6Ltj7zZzr53+efO5Y1E=;
	h=To:Subject:From:Date:From;
	b=g3MPEYwH6CwUJZ4vj/i+P/WlmbQegEXnRBAIZfyiXhmLl3GA1OpYnRXB/GPLA/fc9
	 IlwNT0CEzREWvufzIVnviaBv8MOvB5vgRBUM1vRMfj/lekIi7QyymmCPHSvc7Z5U92
	 vHWGRK4LCrbKElOZJrYFKjydEIreAp2pjSD/rfGEEpavGYXKEaULX3ACq/ZH1AGL6V
	 e2rSa+iatDOjSgJK0Y2B226O84YCsQtI3jWvsjnKKuvWFwwjZkXmRqJxEOx96rvtOh
	 pFBhtt/57LfBZ2QoUPaTmRgx9/Abt/SpuyZ2u4+zIAGXDs8lMAf6cAU4Ho7bITgCru
	 SgP7T/DtyTuvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F796D32D9C
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494757363.6120.7399350217180893921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4441f9a12d58d081b0f01a184ef2e4679b36d13ee6913592eb1db8197588d3c0
Date: Fri, 05 Dec 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764947573
