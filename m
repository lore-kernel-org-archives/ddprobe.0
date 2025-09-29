Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33047139D
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759183796; cv=none; b=VVX/if8NN4ABtmv82o5KpRAUXcOJ+bMEh58rDqZ8oDpIh+0I9CI0/gNKgrce3OipIlRSrvjDsd3xSCp4Q0KU5RD1/75FFUlKPAjivJwoqgZza4zKoYLHiJQocUaT9BT/S0CM8R0jxUxUGCnDS2NMmfx/zGPf1izalbr+UJ+Rp60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759183796; c=relaxed/simple;
	bh=TTFVWYWjuJ7RGHOjITTjPraGQpdiYf87qfxolwbgK0U=;
	h=To:Subject:From:Message-Id:Date; b=XiuX0liWuCXGJdSeSdefqnJ7WAS8G13TG8p135HrDLhui0XilWMpA2cngPZDt1jrB3zL8wnh4JFIQ1ZgAZwbFj8bcHPc4U0IN73Be7mTDEQAqF0LRW/3d5WUpi8sgC410Nu5GuWcFFR0QFAjXAqbS8Cox2MHx0PBLoesjnXoEHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcrLdghX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcrLdghX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9D7C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759183794;
	bh=TTFVWYWjuJ7RGHOjITTjPraGQpdiYf87qfxolwbgK0U=;
	h=To:Subject:From:Date:From;
	b=NcrLdghX9bHJKnkPcIFwa8rZA3JbfVo2t8QWSICJk4udzO1sT1RNxh+6s+f7mwPSl
	 UlPoHjQSU9ojOro/vyv7EtbFlR7gMyAb2qP1Pbc2ccgDG/TAr/mOJ7ykHQ9rmRGO/y
	 DBVGqVVDNyWBajOODHa5IxVMYetW4xRYfSdV9jrwbrkpAe1F3JUv4Jm57jhS6tU6LU
	 1vvLqwB91N37YRpQwOGMq8aAbY2yP8E/AFwMmVLkeQqg3EJO7XL3iQO4yQ1PSa8vWw
	 tIyd83mUgZGWdVLIvJkOKPcG3xiSbyoMeFKN4EwZZjvvS2ZesvmRaiiynLUZk/qds+
	 vtLhGmmdA1Ubg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DC2CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918379359.29573.14076743964143554017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fe9d8568fe6f0d5a7c52dd4f4995d74c46aec4c81605faad3e8ff8f9896435
Date: Mon, 29 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759183793
