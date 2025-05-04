Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2B91A2389
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746367795; cv=none; b=NlMKIsgdmjY/NkueiTXbBqNAdM2xM6arf82gvYpZLcZnyP0QJ/VROyTfoYSZmCVQGfo6CVy/VkWdX/jeNxVIDCdZRaVTKjZx5S3CIZqSJfLYdFAWeYtvfOlDycikp38oc3obeGfYm6aKyeTWOUsh3V/zNRnysDCSBzSan8TxZ2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746367795; c=relaxed/simple;
	bh=9Ecuuk7xoKm1UAHo0pNZMxwA02b7PbN6W83jTkAD/9Y=;
	h=To:Subject:From:Message-Id:Date; b=b4WUsfPw8k7cyc+F/w0horF+X/xnxc2yVT3QDOPHEqoMnV0NP6oW20FokFPkEr9S6LqdEmjQg4sg2EilM8MLPQs3cWOBMR+QzRB9wZrCWH8Pn+iygq6yOWZ2eo6q2HiNT71xmujADqnonOYpDlQ/BL5Gfulz3nIfsuYLIJw6H4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dp0wWQFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dp0wWQFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7587C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746367793;
	bh=9Ecuuk7xoKm1UAHo0pNZMxwA02b7PbN6W83jTkAD/9Y=;
	h=To:Subject:From:Date:From;
	b=dp0wWQFCwDnOnabfRtzHr2oe/wMUX0TfW5zEjTvpl+gTL75z+g/T6fcum6oZPLqJ/
	 nZhHtwp0XRBtgwD1SZPJpGyLNfuPJTNGnwH7zzaJrWIa6N9VKKeqh4lhFJviuQ8oCo
	 OrwUMEUzQw3fIffoDmdKkjNuJtPLWbLOqW0Ie1dZhjVSOL/0h6SrCL5LYIzfyomOzN
	 iFHQ/r5nDLFfQksJ7VWc0RtTGlz++xdzShAi2bW+1TXHLs68c1wWukNBL1XNVSrXfA
	 CTWGT1Zw+ADr0lVFFpb5v0//2pQ6Djy4nrVPs7U7BnfX0vao01ep3EC+WHQRU3uUVd
	 Xb19nQLL5gSIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F38C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174636779357.25008.17156664564125809614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae53f141adef1f09f0661bdfc4d69888e586b9bb1644e4c34f76faaa2b6624e
Date: Sun, 04 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746367793
