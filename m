Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166611E832A
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760863194; cv=none; b=gic5y+tl/34nQd/L1YMvzWS/kOS+5JU1yPIkLMq1FXulaAkCcqB7DKyzS26iwvX5dDq/AHiUGjSxwIoulZ8AEgfjIMoehlLFZDhdyHWUwXHZk2Qpj7rp+VShWWSp8KP29UlzwHLDeegOZjCztJsL5P3pw1x+sdPujm2sWXA0GwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760863194; c=relaxed/simple;
	bh=8xzpxlNwJbf5SqKeh1vgVO/OKUVhrxFckhHg0X75kv0=;
	h=To:Subject:From:Message-Id:Date; b=Fq5LYD443YQiLJHxmBOnwqs4dhAyeIhp//zpsih8cIDgSSDGKnyBzSlgFLpRzvTnJFygbORNObvZwjkIOzcMvOafyCvbNpwcXSLE1+/CW7152j/aziISkKXF9dtklIKYJSZxaCmfR9VeeKvBG5GLkdb5SkpMuL3Q4FCC7WuHwxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2+DduLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2+DduLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6219C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760863193;
	bh=8xzpxlNwJbf5SqKeh1vgVO/OKUVhrxFckhHg0X75kv0=;
	h=To:Subject:From:Date:From;
	b=R2+DduLJrWO8XbEU4CwRt30i/RVyVakCt9Gb05lf3Bq7JB0lDBT36AK33GICQTYd0
	 INid+GC4pjUMti7UN6EoNEbvK3V97wGeolwRpS6lBhc6LFTvtDk3d2PikBNfMnwwx7
	 36lOUjFLxKXQY6B9q6xygJ077zPLp8sikXe/5JfCz3xNIDOTu/TYikL0AH0TLNGumE
	 3D+p+WhcuudvmOlbDCZRtV2W9ZPF/0CrYhqE3JLPL7M/sEen990OrvJyzdxNCd+lBD
	 CXmfyviM7jMHFSD4N4ByMbkpB0Tj+UyURS19+LyzVTWLTEh4EWhgLEp9lD/3hO8EdO
	 qhGSvOWqTDBLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C9ACCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086319358.11662.13906957638190121976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52870fd443a9754f7b3b8ea55fe5188769ff09ef54dc477a6a124953155fce45
Date: Sun, 19 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760863193
