Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BDC23F291
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747399194; cv=none; b=RX5w5Dqd/iFEoldN7s6ZgjvvhAR/XP8rWedD2A0RVpQ/tRtiF6Mp/wkPskg54NuM4+PRW6rVDwdk598wqrgQU8W9+29m3cZI+GDUG/qYBt4bFtWjdMUmcFejfVXYbMraoCZsUZy6xPcNws+CZ0yhuAYs0ggIBtAY3DJqN9pM2ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747399194; c=relaxed/simple;
	bh=ZShPvdlEqE502LgViY6cWb8FG42LUmBJaT+KOKvDMBg=;
	h=To:Subject:From:Message-Id:Date; b=N/TSUzgUYUwIzUTuXRq14LEhq62LobZAR/qw6q8Rcn3VY0QrD47qBDhEzbQd2ukA9iqwi6jm4rRPY4bXWb8gmLy/vetva9WBQGqtz3YOcJI0TkH3o7nF+pZT4WZfK6GTH15v4wDD235GT5W+wqNubcXcHCkNNGcIe7+b0ZY9ysI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0A26si6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0A26si6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36F8C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747399193;
	bh=ZShPvdlEqE502LgViY6cWb8FG42LUmBJaT+KOKvDMBg=;
	h=To:Subject:From:Date:From;
	b=A0A26si65M4vXRm/u3cc559uBcNBx5wcUwhcfyrUYROliAGG/GxoDJ2R+u/TjrHAe
	 WERqjeXqmJVPoBM4cz68ssEkovriwiV9tXJE1xbeefwRimeguLOOTUs16utaN8wQfA
	 SzfuQtYIWoBtParXIAaigFYi1uX9InAJUDtTrfkBR3f4i4qJ3r/dcBD7EcD8w4OqUB
	 XADjKrQfaiZpBXrMiJpVWIpAkBayeegwDQfbeQG/MNbFOk8J+Jdg0aOCCw6alpE/kz
	 hlLWxbcclWqE1PDcFX0mvb0lyG8ovEDuZq9+VBu5CwmC8e4KkNZpBO60ZVZWe1+pLx
	 MAG/lMCqob17Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C9DC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739919359.12651.11906682171853091422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec580ef0b67d0df2e6b8c81efb520080d8ceee684a1f72268fc2c2f2b9c4d351
Date: Fri, 16 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747399193
