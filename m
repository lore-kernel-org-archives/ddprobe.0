Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E9650273
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707575297; cv=none; b=ALn6nlpSbZCkgT0H2X8HBb7R3iJ19WPeQ+PX07pUDig9bJ67Y8PNkESwsF8E9YQOvtglDNCipo0owL/slUaprs0MRJcg0GMiYIrLB9xxR0hzjSC7Q6tN5Me00vunwPoZwl9J/XRYZ+lC6igcAlfnEgJnfBB/IG5Vnb9zveVT9Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707575297; c=relaxed/simple;
	bh=E96dcP9Ky0FSOmPN2MD+vthJxfQYhLfX36yTaqTBVTM=;
	h=To:Subject:From:Message-Id:Date; b=X/ZhTjGlKOXiVpU0QTdcqxACGFpSzgBCA3FxQyH1aaDP+ZdlE1ZwaHlMSw3t5GvOAHsGVNnadtUSHewKpFeOPV/xhrMzlldeI4TLyk56U8CdxiF8Ylxvfhup3j8nC/7Jsny7zd+JfrqqUs2sZ/icMc5NP0Va8c6vISNOhPF1rs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUKkebRg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUKkebRg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81F4BC433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707575296;
	bh=E96dcP9Ky0FSOmPN2MD+vthJxfQYhLfX36yTaqTBVTM=;
	h=To:Subject:From:Date:From;
	b=QUKkebRgmXwS/yEIiE45z6QkrV+SRkx5tmnBwRB2SnIiMgKvioZdJ5peiKNjAMl0T
	 UGxfgMBcPYLyDYADhY9b88hN9YAoQ+XcGXPEu6MPoG47D9d25g69fR9BXpyEs1O/Vr
	 HHJqC9FRzFIr/rs4ZX2dRviMx46Q5H0ywV1GxvF7WANee5MhNUdTidSF1deAAcD0ob
	 CHgl6mvYE2gdZBjHrgCSAcE0MvyI+EYN5N4TMZLigz0Y+aPRvrHvoMgM/n7UVjN7uk
	 uxNAL2m5C8hSfHCPftvIi8zVLW76X7z3tQJlkZdicr3c64hoXXNDqum8xBwmCk5jIv
	 Fman4uNDLAE0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6608DC4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170757529638.22954.13414715028266536814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e143aab8d68ee83d221ef94fe4bf6570ce5b5864be7ba68938167ac260b05c5
Date: Sat, 10 Feb 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707575296
