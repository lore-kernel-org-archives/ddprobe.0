Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200FC2F23
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723877754; cv=none; b=V2mfITiL0m5Euz6O8UbWPsu7qSepdt1g0CtnzIaewWXM7ch+aoLmOCmIVKZ1hx34byVKiPbAFKuAuZZ81K6hiCSPaqeLwu0YCtx8SYZjQe6vQreKLN0vX1rIsVSQ2EoBKKy+y6oCot6qjzQnTcSoEra5ONz4OdhIu3C6Bh0P0ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723877754; c=relaxed/simple;
	bh=B+qI3H4CaTAh6BD1DjnzyVlKeYWg2Punvw+JvEWqaeA=;
	h=To:Subject:From:Message-Id:Date; b=r4RTg/KNjLm6xPODLXIMLDMUvgYkAzXwldfqAwn683/LzE922fq+wLWJglf+wKk3l+QVF0x6cqXrP7KqsoTtS6isNhI96e+yMgMZ7p2SKWNcQHq7ttzdCJXfJSAAe5Gi0pV2u/eL2XYYjFTlhRSY+VmPoEOVQm7rkH/6pbEZr0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGMy13NG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGMy13NG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95FFC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723877753;
	bh=B+qI3H4CaTAh6BD1DjnzyVlKeYWg2Punvw+JvEWqaeA=;
	h=To:Subject:From:Date:From;
	b=gGMy13NGlwT58nsbEicR8cZbqyHx9VDPOwUUPA4F+6o9BfpV6V28KPc+xtVzxujVG
	 0WGEhhZ9YQ7lQodCMAfD3wDmJTzJOF36fRkYd6l3F7vjWx+6KcU5w46be9wqi45FsQ
	 FBft8VDteJXu0WV8tQNV37EtNnMDYPPSYAqxC1OdJgVNLLjweCmoUWzdqon9pUf/yh
	 9fjkDboJIoeQXz7JJGIQK/Xp/VxfxdJtSQ1DdC2vQORSREFi8QWyWYOCcSesqZ3J0V
	 k6mg0qp6WlPZi3vtQgsD8htUWMd6UOT72BeKxTkrhxEm54CbrqUPOFVp+6NIRDSsY8
	 hNVyMNn+a7/6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97119C52D7D
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172387775358.25548.13123348398594981113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607b127ba52aa8b9063f9fd562b3b688081a2a0a9e18d1cf458c8c0e88bf564a
Date: Sat, 17 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723877753
