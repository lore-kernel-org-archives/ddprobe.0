Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A35C2BB10
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723287954; cv=none; b=gVTx4x97i9av4FB7AahMXN/RUhIn4/j/aXRLriuGrC27kyxLdkKNRdbI2h2dmcTQveGvXXbclV/qzMCwmWk2fShIRCRvJk/nuzrEJlfW1ruBACsHSEa8FkVggSiz1l4oEHNRn6w9yVEY9Jn5sc4wOLyKGMjg+r5wcpsIj3Plrm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723287954; c=relaxed/simple;
	bh=aH3Wl1tUL8OhxZHhEYLCPQundY4yMtCRtWFGUnElBKs=;
	h=To:Subject:From:Message-Id:Date; b=Pp+qXV4EHmp/CTOmT+OEbPCST8XOH3UUfJ57ghHLWEvTNO0RucNcIckWVJav6Ovb4t1bYeJUKDO2ZFXRB+t5WQ9SsWRFJppUub8mDlM+MPbH2c/UtaB9xL9cD1JvgpIXgdlr8Rcvxp8feAKmbWeWZsQQ7DdSeewkRGRXRaq619A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dk/7qQwf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dk/7qQwf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1E6C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723287953;
	bh=aH3Wl1tUL8OhxZHhEYLCPQundY4yMtCRtWFGUnElBKs=;
	h=To:Subject:From:Date:From;
	b=dk/7qQwfAYa234d90kt2EZ6lV5k48XUG5K030iq04DrV7ZCqC4pT4Zn08gdI8N7el
	 PBOY+4+tai7sSwjsPjDptun5Sj+E42wWk9J388mDL9v6SE7AQJj4PJSYJC3BmOmpnx
	 LHbSDnO0H4YSmrNI+NcND0jmnO0IkpHwdgXXLmS7bHNycj20FsxZG6Fgp2hbdB2Kyb
	 snpTcuct2FFzToN7upbT1CIqGSFtGqIb/xKo2A4cGP6qXqRH9HOYSmTYJ+8klvsEex
	 /DZOq/Hkh4tdj0Yhi7LwjJWt4/cM3FfhdQ5UUazSGegN080mjftgNA3ZyRNfceU0ah
	 FP5JddrDMzkuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C546C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172328795360.22927.12818940544259271439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 268a547cd6dd0c439385352654cb8e24f8e4ab277383ad8ae0708a20294acbe6
Date: Sat, 10 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723287953
