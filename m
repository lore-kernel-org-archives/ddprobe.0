Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BA9286412
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765674174; cv=none; b=DpfAgypywZE1nDi/ZxLEdzsuz9K7gaEylI3l0ZbZz7Af4hNQLLuzxg8bbhE0RqoKFmt15E4ZZqNQ5YdW4GcXyqmPkhnva5fEwQYclMlq9lBZKowz585UDcttoxp8zI6AbaegFszmms1J4RhUJIWMG29h4Kb2h848O1eqOK2BA94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765674174; c=relaxed/simple;
	bh=xd4WOlfkKEuR3KOYOloOCTaQanlnTSsyfHKvxzj1k9I=;
	h=To:Subject:From:Message-Id:Date; b=gHZYthG/kmScxUg6Iv8/D8p6XIIA2dJxNQZkRG14oUIIB5UCfSXzmzdAN8qC4ld5Y/bkeSPZbJAsUXUxHz5nUdL0zRa0RHA9Zp6XJnBefhuAee7YlG/f4kastFyeTODkxz7o8/tVjmdyue5HuMrw0NHHL4f5igsf47Ebf7AkMdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ky1p1ANZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ky1p1ANZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AB4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765674173;
	bh=xd4WOlfkKEuR3KOYOloOCTaQanlnTSsyfHKvxzj1k9I=;
	h=To:Subject:From:Date:From;
	b=Ky1p1ANZeeU7nh31Incpw/Jzl4RqXMGaS8RILsladgt3xvEmNWsxCyzIp5Kena+Yh
	 uJX0qpSCjZix3SKzGv4kQHRNCFKkfU7jE9vFPGhMF1dtWnsw65/G8fvUbd9bK+Uo2F
	 dz/jF5vRtjwVEP0p1MPTozQQDrjzwILHUU5QZpFqJ3YhDxhgLFW+A0pJRJKt6Q1lQ4
	 chVKfYW62Ac8r9rP0V97pAQWZlWmQ+7DpoiXIZsd8ZvZLiP5D1RdXdR4y54DA6kMEO
	 uX/5DRC86Y/0KHaqzkwdL/WaI0dzGFMPj1+BaggAWzCKx8VPbkDmRrRHLsf9ZO4LWE
	 J2rsIdRsaFyOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968FDD5B161
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567417358.19785.4180543614089548582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83239b2510009459902bc32bac92dfd994b95edfa21649683669b395b0e74f3f
Date: Sun, 14 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765674173
