Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2370D450F2
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770956694; cv=none; b=UDOa5w++pBCKO6FzvMQWcKdkFrvZ9OcybErBhSTzx4ni4PR8hrsZ7GPExttsdMXXxWTd7lolpUEvkG5LO7qDKK4n5S9T3FAXDk2BHc1Gug8d8omlWWpGY1z8bVgFIe9yskhDj+622p5WV2yQ/oClO5yr314tggLI483+OD8O0dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770956694; c=relaxed/simple;
	bh=qrz3o2yDF2hB5otl06zH0SAh23djg4UAuY4wCw/gSHA=;
	h=To:Subject:From:Message-Id:Date; b=FD9n/ynluxgd15Lp5YMvz+PWCAUsqeZ5P1YLhhe/7Fl0sQAIFW2581eLH8pWfL2wmYuq4jRl3u2Yb81O3KaYpXtF05GAcGNEvnNR6j+4OMV+NGC0MsiVTSp3Pi/LNx9ZjaeiCIXca0JBd9mpfYdlzjAMsJ1C2RoVdC7G4zGXUdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b62DFCzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b62DFCzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0315C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770956693;
	bh=qrz3o2yDF2hB5otl06zH0SAh23djg4UAuY4wCw/gSHA=;
	h=To:Subject:From:Date:From;
	b=b62DFCziipNXoNQSeJkZXOErY0kFjBajBAoW45/1hzTF55nY50XVCzHFrqppFoUw2
	 k5j+aFGWUC4BAoq9ZOV/89oadfVcwl2rOsgcO0ES4yPqYlE9tnwcdn+JF9yoFgyjcK
	 9ZaNRLXpzwkwZQLQ/U4yeXSRdz3U3zwqMK4gi/1ZOdEjeGdEA/P1hay3roX+3mPIzT
	 eZxuxZu+5DZjkYjhi0N5C9usUw6wit8Mi3gPw41pg2P7meyfPgTVbqCaueHUVCKwb0
	 m3Y5nu78oH771T3Jb6zEVEgjAJxLPNAacPWajR3kVPgA+I5J7IGYDIsdeIm4RGi5Jg
	 6j8DpuweGW6Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74ACEF48CC
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095669367.18634.13556353776427842172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47dc3e745d595223900f1cf8ef83660fe8d82211821d1f6c16ec6e392e8a91a3
Date: Fri, 13 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770956693
