Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0891039C640
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768404834; cv=none; b=k76boLB1orWMIQ/7DfeB1ihLvFEghmU/FTH2/tHXwgW/RNhgGO0ZiRhtHYsEEJwrng3j8n833GBI9GHmUm8uTUdUKjPh6xN3Ll+iTIBl6YroA/TI96RTCco0RulQfEbrJa+XXyznHoGGZF7rN4ij9MR5uLmywGWpjbYvRF8O03g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768404834; c=relaxed/simple;
	bh=EHujQ7hXP/A6T51VFtMvaskgKoqCnRdIE/PkgqUd/bQ=;
	h=To:Subject:From:Message-Id:Date; b=HSKHbImg5vuZjS5goGIkCQFvcPKADFjQnSJ4XutYEjkQKJYbZP0JNf2wIJ4HQH67rmYqN4AYvgJ9AEYercR/O+ZZBIJdOxDufUD7L+OogYB7BMmgpzPUJzzY+lH9tS32bchmqnCMRzlsaUO41r4neZRT/uGv3D40kYjXfLZcCs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNwEH7bU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNwEH7bU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9397C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768404833;
	bh=EHujQ7hXP/A6T51VFtMvaskgKoqCnRdIE/PkgqUd/bQ=;
	h=To:Subject:From:Date:From;
	b=sNwEH7bU/6/YleGjYxaLjpHVNkWn+lZZFLaOb2twie+5TS9KDpmXav4AArG0QFciI
	 g66BzSQCWID3DqhuoxJau1gTUkZ98E/kxpB7D+fmgkgX3D+Tp2znhbb6Of9s6Zgy44
	 PjzGRhOcJ1Ixu7aQqUCWoIfDZKcM+2fJItkWlEo03SnK5jfzvEGEKHaNpql6ixgXWB
	 9ssRKQRqyeVjAoXE4cMSOpC8DhNnLCjn2h3OdXccUNmLNv9CmcZ0/ZIUkNBB9ECkjC
	 Bw/ivkNHmWaHUc5VaXl75zVlVLubOrq4g0Xl/3KKvNq71dx8oIP2Mh4+fNGzSvY0gR
	 ObDyUtlq0XxxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9859FD37E4F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840483361.16543.16886361002325921357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56edc85e1f6d4ff6f6c55646761f667519650f0c4f73caa02ba76fe29d88a742
Date: Wed, 14 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768404833
