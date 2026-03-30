Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB4D3B0AD6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774860894; cv=none; b=iZb9F81ClIJJ7QUgZ5f8xKt/6UUoGG0d9FpyHXZleax9/2pUTdJ8j7PIG44qCnmDWQsizEyjX1ABy51Lo9rawbIGrCBkmoVP9cPLyLvrRsO7iiZuTpeJ/SFOWJDTtKBZ90UVXGDZih/TYuIkA6CJf94xQC1RiIjVl9dr7zl4DFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774860894; c=relaxed/simple;
	bh=ozjqvReAu+3dfvF69gSR3mOBCdUYAIq+2C138grTg24=;
	h=To:Subject:From:Message-Id:Date; b=hJC0jOogm3Rhnd7XijVH9KBXi1/W3uZmn+FfZO750PpxKKrfOAktfhf4li1j71HgU1ETtuKBBOC1u02csg3CWF3afWeeOXs353NZR30fbZEI16pGTAjxHnvF6U9agQylCLnjxtL9B08qOcUQK8zKQAeq+b6ll1Ti/O9+ecyUppA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXFO89ll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXFO89ll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E468C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774860893;
	bh=ozjqvReAu+3dfvF69gSR3mOBCdUYAIq+2C138grTg24=;
	h=To:Subject:From:Date:From;
	b=rXFO89llYHfrq9EYBnfvG6VklRdQOn3BanLg+WTww5UOoD9l87wscgahRsx3QLdUG
	 npqauPMEAC/kdzpylY9EG+XFKL3LSOyWm6Lknu/KLLfjp6xEQA4815yi3frhepfUM3
	 iSPVGKcPtHWKQ1YVkkdTNR+yQpwhuBZcFej3NbOtgwqMEJdPpjBWQ8UFYUO4x414ce
	 usBxgPP/Ncrwv2vxL51Ai9PAYPRwyPfYCiPetnPSHRKiwFl7vOwGSNd3XW1jzntQcr
	 VT5b/10ncZ5hU5Dwsk847GtRmSo5POsMpVHcJTPHU6I02nis1ip5Pe0qm0yzKWmEzl
	 iAuVv8II+0WOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF1FC981D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486089358.11225.94254172066544390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c36e391b1094ad7c34a402ef51b6f4ebee870c013b5b8d7284ca99687deaf4
Date: Mon, 30 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774860893
