Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2123A21D5B5
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746575396; cv=none; b=orDNJ2+zCEc0URfjcW7HGcg/FDKeyPcM2JKD9tGm6aZbHtNSAKwYJFYQDjOJYGcBkwpt//M0//+NHSHpYG+ajmNfo36QA0dNrgEarllUFBExaP7PwXk1FqosthiTHGkO4tyMlyefPTYbTgx0G29LtLg0PsgsNrdpzPotccj/Df4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746575396; c=relaxed/simple;
	bh=QPk2nncEjGckXCjblAJLFRaLvKVVwP+sU+69qETYlY4=;
	h=To:Subject:From:Message-Id:Date; b=tXiXv5uL2qV8KrTzPTkJVxg0LwMAL10QsQ6isziVDxvBiOrgxPxbMJufPdcubv/aKhcDmOFcT6rWeeBeCmsy1M8qAkTrmIi4St+pQXtjsDevcHMauPiuX0hmIr2pdeao+3vbFO8NOPRv3SXVhXF+ibvfaqZDin1dImhTR9M5/R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVT02wKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVT02wKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C811C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746575393;
	bh=QPk2nncEjGckXCjblAJLFRaLvKVVwP+sU+69qETYlY4=;
	h=To:Subject:From:Date:From;
	b=EVT02wKC2rAeXTM2fygibH1x25FkppIsgDkXNmxC2fYUQZdtEqNyc8LVFPeV4tGxn
	 5ZHc5dtbvkXgl5oFGHqdS3NZHq2rMjbLFpsEy8ELc+/uWQWljOA1IjFbSElLqgEyeN
	 NtKDcQ2BZMUP8/za0UNt8WN2ePIKWh7sGDsOZ0e66z9nZNL7DB51VqE3k9n7ON/zc/
	 apN2gONxCgVYBYnCicGPA808WC9RZPbpi0ZgsMcKruVDAuRT5jO9DRmjsB9oDpwX2N
	 YlXd6kJMrrSFrle1kbGWI5ASP8O2p20jnlDCfKU5w/5JIEb+i2WTWOgicEJ280TdHm
	 gunwRAYEUQKgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E45AC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657539357.28614.5856142279058956719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542ddb00e94ce239e1df314132c5f4f45e4fa2b135008b354756966dddad3489
Date: Tue, 06 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746575393
