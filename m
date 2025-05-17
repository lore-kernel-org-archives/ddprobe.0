Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431151E4BE
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747484394; cv=none; b=RslAtaHKkOPfG/e3MuGHEFe+owC3myjcXE0khqX3RzRJ1QSjwoDNI0FupKVq9IAeGDvafQ4LZrEtEvMPVN6RcdFNmDBTllE61/Ob6psi6tkvYilKB3SSG8TRnU/c6nFPJDI0nDooSPnIySk1tQ0Y0q117JAEJiztNXMiLG56rTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747484394; c=relaxed/simple;
	bh=2LMwkJRZCXBADh6ZRVAcftuF8AQNIco9NtDQXF8F2s8=;
	h=To:Subject:From:Message-Id:Date; b=JKsnGXEyzxW9ovosmxkxTHXJGALl/ujoqYf/htt2lDB8QbVw7UlqjVeLIDHexy4W5XF3xrvDvtIde6nyBvFuRWTbOB9h+e/RzQUfg+uJpmV8dgRZI9HhnTmHB08AYMsOLUkUaxuYb6WaPUe4VZIozwo4fvwnhP5WWOiCA2kTj3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuYIZOrt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuYIZOrt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A691DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747484393;
	bh=2LMwkJRZCXBADh6ZRVAcftuF8AQNIco9NtDQXF8F2s8=;
	h=To:Subject:From:Date:From;
	b=YuYIZOrtOKFJ1S26JSzPgOnEIVrxm6+q7NmtzHo62aF17mrky5EsqCDZjhyiAQG/m
	 v/+9Y83rBF5EvE43VcD9LYLXje4jLlCuyKdKOuL+DbmZlhi2j+mM//vzbbbDeDNsqO
	 x2CN2p8Z3JhDEoEUmYMutKLdMuDoWT7Du0Pvq4dafVZWTeLpV5Ep7pYWM9AtuZ2eI3
	 ZW3aGM1xB+m+KbZqmRvXqrLWGwEyGp/eCTeDpbsHENutuJ6r0L1xtRoh0rxTKs8+SG
	 f38u384ctd7OVHK1yiFKccEfO7gU+867o+t5ZGzveOTgkSGPwwS+RM8v40pI4nKou8
	 3RhaPPV85qQZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F40C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748439357.26248.14689283263795101977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0064e9b50377fb1fe876cf9ad1fa21375fa3a8711242425f7174c41a3a0346
Date: Sat, 17 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747484393
