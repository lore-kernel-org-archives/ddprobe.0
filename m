Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FA5222582
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771892694; cv=none; b=polQTRHpZuSd3UM0hE2fU4lqaAv1rKTLAfJQd/LplD3OR8LaZkVWih0AgK4daz/L0wsrh5S+AdcCfzgsvzjCznOqH/d0qrsITLUbWHbKJFPJhrPlnLk308ciOLOOa6Bz3eTK1h22R9oS/aaOG0vV+EoohMy8s3PjCG5u7d3nNJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771892694; c=relaxed/simple;
	bh=o+Law4kEduWdtfpU+/K41p+h762bsBKuuRHsmfV+K5M=;
	h=To:Subject:From:Message-Id:Date; b=XtfGsoq7MidoDKMd+spamBSHk76jF7MnPqoZoXIxU/dXaP62f4QQsFTiDZCMTjIoUsFKjbUANmiMQbmwfy28blyr1/SChPglDNUqXpEIOdDkEJelY/+SrxuT8AoZ1RkLQy3dllolcXzDOgrc8TrHzJ8DSmUeTjEs7gh097vrNRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWBwf407; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWBwf407"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC797C116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771892693;
	bh=o+Law4kEduWdtfpU+/K41p+h762bsBKuuRHsmfV+K5M=;
	h=To:Subject:From:Date:From;
	b=pWBwf407kxWEOLNbl8v15BkUWpHyixl2JykOhnXjifTWTdJHY1799JkAZK5ubboJ+
	 4jkeyBj+Nd+KEDpeap17DLF2BP/o0CUsESMe1FBlFMMgUEHZqaKegXS3wbisqeXIit
	 P79cc044VFVaTrMK04jP6DF6Q3+cJX9w9FnM2wIayEJBx5UCSQuiypLbksGH5uOLFb
	 j1DYtE1uvUpY6gP0LTPFKdDdHxBzpYOVnl20EwpfzEh2A8vqo5LG8KKaWMalMS1ibn
	 KfM2ZXp6Gm41nBfL/cWWDikY0/aomXimEAqXgBwhN2qF8ckKpEUwmvkJ2eYJ4W7m0e
	 yIskzabidsEnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BEEEEC2B3
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189269359.28517.15248046535252745582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a92f42cf7ad971dac9d225310775fa793fa59b0a07b47f7cd0e3dd50df2346
Date: Tue, 24 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771892693
