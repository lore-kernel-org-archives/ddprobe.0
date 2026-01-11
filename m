Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F24D50276
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768116834; cv=none; b=gUGlfH6FIOhyY0AdjsZWbRxTm82WKpKHNnUYXeZmsdnHvxRB/do9ASeLp4qOQ7jY7420yWRHWbtlUzlzcN/tJ9cvx/lx2Mcujl+/wEyT92y/WmtE6v9/b2zn3RPolSZ8LCc+vph055+n9Au+k/3kRIhTWyjDEqSMEcnFsIibXxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768116834; c=relaxed/simple;
	bh=Mb/HmY/2JRwJ3QAtwb5ez7O3S7DVMd19k1QrS+qlZtM=;
	h=To:Subject:From:Message-Id:Date; b=jmKLTacrCXsQvvuvvXKoC9NxK5Mmbh9rXktNHPXHfxJXQMiWedpXZX1ItaJL474eLSvAaxloUOGubHNYNltO6uD3K0KZGGYCwrBGfyDP2v57MJQ3iyv7a27C/rACSTC3YzvDm317V2CHPQQD7ltqDN6onxTyIVGMtcqUfr/Efi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaiHqc7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaiHqc7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E0AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768116833;
	bh=Mb/HmY/2JRwJ3QAtwb5ez7O3S7DVMd19k1QrS+qlZtM=;
	h=To:Subject:From:Date:From;
	b=iaiHqc7Can2g42UvlAYbAU8fVpfiP7p85mmYkRX4wB2ojYMBuKsAboUEDWaesorb4
	 r5CwydHyNMz+9dSfCLeamTysGTHOsqNgEm+d0HmJzUhCMucj0byhecByHXGzC9n5/Y
	 pjvU97v3VntYwe4TdmM6jAkIQDfZiq4/gg/caq/eYCA1i3DHEX2Cutp6i/yZii+/AU
	 78PF0LtXFpdpCY2j+2zl8/BBH0UjPUoHGByBRpOycxO+YAJqC4V61cgPpoRjSHay4A
	 sE+are7MFLqeNpNtWRb+9oQf6KtPkSSgZWmZGQpRQexkf308v4MZ0qy8LyrdkWSNqw
	 +ytXmSKETuLiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC2FD2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811683358.18004.13953158476834188467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fbf6ee6a57ca56b5b3fd4d617cd400bedb8528eb47db19fd1972d9a4cf821e4
Date: Sun, 11 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768116833
