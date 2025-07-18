Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A775479B
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752881994; cv=none; b=DX4+DcXf77LXyBnotl69JB4bve37pct9PHYJ94NH/yry8vo21jvsoLPkMkbqt9T7L0d/RgNQscZxPlqx8Caq+0qaN8BAjGZy+5nBm4mFFSXIdHzQWxcxeHk7q2ho5JNpBdh8t4RB/yXWovL1QfsTvTINI55wib5UrLqAN/IEM8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752881994; c=relaxed/simple;
	bh=OankzOIT+lZev1BzGKrHkoAXQL9UBEiC38C1e+jwMmQ=;
	h=To:Subject:From:Message-Id:Date; b=tKZYMmiSRa5FtGqQMmcFKonM7+NDljMjbKZVy3v+LCl9HlHeAK2dwh7fjmSdgxkuuRbwPeBnWes6d2V/c03DSn6+RkdbjXVmYtW+fodet1L+HDx7oB1ZJRXJ4c/PkNmwFIPC3iS9TG7P2knKTK8Jjaqwl63RnRdfNkxSswuQzGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzHU8sKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzHU8sKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A266AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752881993;
	bh=OankzOIT+lZev1BzGKrHkoAXQL9UBEiC38C1e+jwMmQ=;
	h=To:Subject:From:Date:From;
	b=nzHU8sKb+lkXlZifV5u60Pw2dtWblzD7YfvyTDzH+cssrLgvRDXce/UoBKXj+aGDh
	 Cthr5T6bFD8by2UyiWsbPza+hR2k2jiDH3gg9Z/CMrjSGFbKybaPJCSyM/LNY+bwHP
	 Vdb4wntj7D+9s7WKXeLtTuoYf6TK6L6v2ktKjL8OdYfn6JoqwkSpXSEiao1vjd+sVn
	 rCDvHM5bmtmezTmAeui3jrGQ6tYfCbf4TVORpRrSFeaFQESz2ZUD7ZOplcB8JXTQLs
	 4OA81Tjv7PX+Ji/EI6JlZRaTzuqDC+cBjY66ZZuSUsBQm+nv4mmLijK8LI3++gZJLh
	 Hv/PWAtzUH9Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FACAC83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288199357.6476.1169608489530339792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f221f2e09ba8650aa8eeca2d684ed93d8c4be48dba77c579438d2b29e7f01540
Date: Fri, 18 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752881993
