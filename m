Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D84E352025
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786774234; cv=none; b=NEwX17Nb3lHw7YT7swNI3cjN6rMQHjLc0IvJy3LJBrhbubVLHMzPbWRlilY8wpBlMkagOuGHx7RhJHZhcK9Hi/ZUcLNnKiOOtmd4jJw5Gw4kuHgQ1HT9XtCWpioyouD0uolMPVaar7wprlMIuQWzvh7g/YATYHUgDAnInj1OEd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786774234; c=relaxed/simple;
	bh=aTctCGS9TiISSvb73oqEsG2jR2kaPR56L+jZOlju1Mg=;
	h=To:Subject:From:Message-Id:Date; b=nzyzLFz+8fNHUAh8ByYXx5TI8qVRJNf5GgOZlXsYwormDilz3TtOsPN328Np2qhtRLQknaqvQzB5D2fbuakb9seU6MBVLnV2RIhCZYFyGkgUzxim8aS7NmizW9jbICgvWCaEwPTfe6CVeABkf5lXo/pFt8++u48zSdBScsPHVw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdfGdMq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdfGdMq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A52C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786774233;
	bh=aTctCGS9TiISSvb73oqEsG2jR2kaPR56L+jZOlju1Mg=;
	h=To:Subject:From:Date:From;
	b=OdfGdMq9UW5JlaE8YjjPS1yZjB+gdcdwRSSmxiOgZogSeU9Yo1XHNx5dhy6SKGhwz
	 ySN7jy5IvdfsSLH546Ab1jZsJo2MY2y4soOyxFKQaDoA6+au/4uSzlw9jiLX9JWg+p
	 ECKU7pgsoD7cMR+6hnjzrNggOUNxmjVx9q5SSk4vrccktOOSIYsG1dIYNxgLxE/4sV
	 WB0dih5Gxc4SDVbN48WG7o985ZGr4wLcNnkP+vhkd3EnIOEe9eqw9fLWmuWbCv/DMU
	 olGS5LtlqSC5oRgmLS43bBQTyMgHaKYJqdSUKbP/37sZdbHZ4Qgjd+wlUx2wsqdNF8
	 LIDROAPvvHXfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F5CC5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677423368.14803.14922191063951229766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97225e82d847a84bc5cf7ab521c7ebedd7816c35011df1052f4e68fe09b143d
Date: Sat, 15 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786774233
