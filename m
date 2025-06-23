Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173DE1C84D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750702194; cv=none; b=kG0Z63beOai8UO6lsi9l6QyQ9Vv72yFMKvJ0V9BI0hXMKv2tEg3p39vBv8PJFsBvXziC5DY0OpMoMDsphycMBJAz5GIh7Tn1n/yoRcJzya268Kx1Qb12E4XQd6G0wzvH81uI3tEvm0ymJVtfQLiqIoCshW67lw1IzylNbkdaOBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750702194; c=relaxed/simple;
	bh=7y13pO0QY+IFKQhmri2A6IuErCy8hRdmTQMSZpT6k7Y=;
	h=To:Subject:From:Message-Id:Date; b=LP0z+WzBI5xkTzvWY1Hjp39D/S3OS8Itvu+VUffn+QDCK+Imjt4O63PRbLCHeMvWvhKtlhHeKaenneI7oNLSpvzvyhyR3Hc3+MTeZzw/l+awa3sYZEyqDouGZ1uRxNypyorxc+NS86gpwPqt8whcJ8/Vfg8ZaegP+QGhd9dytpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCSAquwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCSAquwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEDEC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750702193;
	bh=7y13pO0QY+IFKQhmri2A6IuErCy8hRdmTQMSZpT6k7Y=;
	h=To:Subject:From:Date:From;
	b=LCSAquweJ4O1bLHM1A8YMemscl/SS2MbR/YiPTQlcWDJHqsnZDVopag5BjvKSZrap
	 4gnsNS8kr7QGjr80ygU82Q4BoyDNKSt1n/QLNPm2hYVsoG0f6fB6B8LxQgBE+BE0Aq
	 Gi7vQhDXVyc4lyflEdKPun4Xydtf9sYKH7gGQpePZCA4tGet9H7sBfRAwurXn+7tmy
	 QgPfwU/qRC4hleF+mMXt8zaA72IleE+q9EDKRFckWNQ8x9YMuRMP6pgvfnLSU17im/
	 UVW+rtE9WFCwsZ8sS1Q2q6BPF3aYtD/lV648lEMtI2jW4cMQe2d6vCfWrejPWqN3dl
	 ifH6Nh2ZqMa5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8A1C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070219357.4964.16698855052677874200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd499257a8b1fba0903398f7a1fa354e94b4e77fa7b9550aade6ba027ca3bbd8
Date: Mon, 23 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750702193
