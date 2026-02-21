Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219DF246BC5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771703094; cv=none; b=C3TdiOlMES2Ty2641SX5UaHzlstXi3q4mfG4+s/TjxFdG8ll/nI4+oNEhuSXlBFKHGD8vlB1GL8hJKTOfUBVHptdccYYu4R9QeBJOM01FrFe/ZeurW2BBjHzd5OuRkqFvcSPWH38szJBqKlFdoQI7H7GvOVNuYRV2IwAdBMmHzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771703094; c=relaxed/simple;
	bh=C+GKlwasn4c6mM7N2nXBHwfKumL5vblzHrJA0a5ssOk=;
	h=To:Subject:From:Message-Id:Date; b=Iq3hzGGqaYMxWBzX+AOSkTD0iMVhCAjo4lkGNO+0DdVOm79knUbIuTBtZEYE1z4rYRts7Nyzj2WzBLvjBA4UVAundVckeHnCjwSnKSRWI4ymnDsZlIKeAynjAHtfJsOnSXwr0dLsHufS7Ymkd/v86mhaMvyYWJzgLBjmwDOVkRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gfmu5O96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gfmu5O96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA225C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771703093;
	bh=C+GKlwasn4c6mM7N2nXBHwfKumL5vblzHrJA0a5ssOk=;
	h=To:Subject:From:Date:From;
	b=Gfmu5O966yRFGMe9TF/5G46SVcldanOpJU9FG537kgU3KvrqU01Oigl/Ms/F84rcu
	 z/WMa2q7o+FxT6s37ls7HE+FmzZ/TkDEsRgDpaMsBkD69V/k/61O8eIXHtK7vZgHTZ
	 Ox5Z3ml5CZXBq2C8akhdvSH2E+HcRU3uhdtEncWpRKrolTfF9q43cyBlfrhguW4kKD
	 Ifn1eVaVsmrn45wACXxZwpXbWmqwhkOzt2QDnK7dRDjyyU2zpMtK6HXxP/aZ/dKuhp
	 5CgSBzSUZYbPC/i3RUou580uLiKf9t/Sxd7GRbhHHP9Br4UejWxU7a4ZcdpMUnvYgB
	 rM/apXlhIo4Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61E8C61DFD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170309359.14081.11769581398935864619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d5afb8307a3f420b4b9aca4656b4c3273674f08b5d99c96bb94f5b24fdb4b9
Date: Sat, 21 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771703093
