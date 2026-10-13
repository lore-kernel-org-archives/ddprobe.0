Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDD8518125
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791897634; cv=none; b=E9vVVF9sAqLB8ICoWOcqewxM209WgRHKrQf5MGaLHrQmOvUwg8v2A/WLOVpjaz7pov8zLUHj3NW7tWXM2Xuhi8NXXcmjUhqh+Iwl+DmpM62j6d0np1hdK+msIDBCrrWf9i0A+DHTL9dzGrp61dMD6TrNpqQw0CizoKzL2T1V82k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791897634; c=relaxed/simple;
	bh=ItEOTEG1OMy7o/opV3rC3FbhxOHtSZg6UDsJY8lLQjs=;
	h=To:Subject:From:Message-Id:Date; b=jk11cxvUctBC37+PjjMIRzU1TBZJLc/suUqAuwdbrlCyxLWOHWU6zgxh1Z5CtChYBIuC4j3SlRQRDaPy3abRWC9VmXZEOzZe5Xofn1yL9QGM+yFMpU4MT0OGya/pEAjyBn7Pv1Voe0i/AkOfAayWZTSwDkn3sa9hdRYtW+5MABg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJVSweuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJVSweuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7639C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791897633;
	bh=ItEOTEG1OMy7o/opV3rC3FbhxOHtSZg6UDsJY8lLQjs=;
	h=To:Subject:From:Date:From;
	b=WJVSweujWh3jK05kqd8SO266yKHkDF2eSu2q4m0bmsianEfF1jg4z63CCXDckr4Jf
	 lxfZ13Wn0i7X8JDMYzxA3/mrfhPH622Dwsk/sRMkxPK7X5603wlewmOJ3ejNwpieMe
	 P9BYQB6MreDuWa04O6W4GSCy4IRaXbUTGDZXrOEzz1zL9vy/5anV5ObBKQAOUpNGc6
	 IegvT7J+yTWQpbwkDovfv2clG3LKRwrLT5tPI1EMVOUGq1/iRFJ58UCTTVZeiUSR1S
	 kF4my4qKVtfdvte0rLDnsMCMg8vdo9MYiZ/TWx2VJwIH/ToYCFe0831D7IKaeVGV5N
	 dzfn2KycUSAUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B599ACA9ED2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179189763370.32498.9727482807010274929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85def55d266d2d20b7446f7da6655c7e7f85a060dd38d4badf7cb09333659a9a
Date: Tue, 13 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791897633
