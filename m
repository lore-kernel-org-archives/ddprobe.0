Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BB11E8326
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753507794; cv=none; b=cufRMzO4TYJeeYs/9YlJYLQOveqIYic77nzU/L+RknoTvAuT5jvoDEoLAP/u2ZQk5WI3DK/g8IlLv5fPIrHkBvKWR0hcawvqe30B3OE4T97YUZrXn/PQ3enJIj967CBlTpHg1UDkQ70fc7wwJRVZZUXEuzTR091yn6lUA3pm6lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753507794; c=relaxed/simple;
	bh=QoHO7j4EaSGUHjLTAJ2BlD7kb0puwcoWhXhwcHTe6ug=;
	h=To:Subject:From:Message-Id:Date; b=MNaxhbWcwJnOzZUXcH6qMB3OAtG+fluYNPV/uaxl57Cj1adcjExG6F2PCwomK8jsH2d2hLay16yl96qgGDHXgmQzDWIr8h8nnI7RmuddEsUTEk4XSp4sPUn6/ijRTWL1eR3F4g9AM7phWGUTl0UvuvC2b4i1WqCHF3MvSjHVs2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccdsrRd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccdsrRd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7472C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753507793;
	bh=QoHO7j4EaSGUHjLTAJ2BlD7kb0puwcoWhXhwcHTe6ug=;
	h=To:Subject:From:Date:From;
	b=ccdsrRd1245KOc63EP+kFIEFp7mtL+Ggp1U9mWgcOpCGSLrL/iKZI6PePu8CX+SD3
	 VLl44y4NuwYRIay3JQ920tS1VMn3q0JafcsJSM5joxxly9Hsj+gx6bNQVSkvJOJRFm
	 /up2tiIj6lqREv9hW9HwFKTbD9WOScLOskMPTZP+Q/eAVqomUFN7zu6WGBEKY//Q24
	 Ghe2yxs+TFYu4vhouNnwZlk1dKIfeHpQf8YGWP5O4PDVa9lpMxU2KqE8pbaIvoq6rk
	 WKzMukFjcYh1auWIRo82XSvBum0DdKAkQQvibFsDPRH6FFFysOqhlgv29/79uny0u7
	 PGBumSHKtZpZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956DAC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350779358.22364.10799677753730372452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3972811a037e582156837be55aa49211c059c9ecafa771c46f81422e2faad7fe
Date: Sat, 26 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753507793
