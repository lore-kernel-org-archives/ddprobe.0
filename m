Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279052E172B
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761308994; cv=none; b=LFcD3HPUIkxXi+p7BAOYxg8cHewmClVSoXB/R++nXkBIbjkXf6pa9QNB4HHD6eE83ebYHlKIb0f3SKwMKmu7JdV2Yfh4w2RD19T/6MQfzDKYK7yIZUJvH97i5Jb+5mhQ2d/qIBA22IfbjRQeEdXkVEVxDYoT+W+FJTTt2tiAmEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761308994; c=relaxed/simple;
	bh=pdZEjkSkWUMKbfPaX0/WPi7IhyRd82ukOJSVpqtVdnA=;
	h=To:Subject:From:Message-Id:Date; b=bU9fO6cwVk46W/EWLLSTiuvXHlLe+riIs/MPdVeDIN0l9AG0vqkZZY1c5scburtIot2pLGvGzsK+6YrpokJs4y+yvAWkUmVLsPrjvJS0JMxQ9/nibaBeL7jlhlGXotbjzeM1ulwfbwO8OQfR9C4wGH6jTLBVUjKGKfRw7JH6UXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiUbUvzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiUbUvzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D9AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761308993;
	bh=pdZEjkSkWUMKbfPaX0/WPi7IhyRd82ukOJSVpqtVdnA=;
	h=To:Subject:From:Date:From;
	b=TiUbUvzMHEexdIzGgZtNsIXzSW/NQqh9DIKljFUvVxVLWep+e3WhTnNcbE63jbjkl
	 QYxI9F8tBM9gE5JZvtiW3HGXry/Ml1+aOjlff1Oa5JIRMZr0OEUX3IBTLUicz/OOUW
	 qj297XmRvqAKwpHSFdRcGlZLvK62OK0dQxDRK2UXasrtPNz4EjjJ7Y5IDLdZgTaCX4
	 4EUVnNfpEBezGF3p7oDNZbQFSaHLIrYcMYdfOZ25QMwBO0qkp6QZ/73i/mu0n6RZWG
	 E5mIX9ez9p2kUB2u6wY2ybCQ6PqCZ50RlbAW7eqhjLhG3wfpDAO2O+0dSKcy9KyjIi
	 L30i6lWImGaUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB90CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130899357.19877.12881404703513785253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335193b9dd1942df36e74316a1e9818d10d51183e163a8a8319492f2985b1059
Date: Fri, 24 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761308993
