Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B4C3612D8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779171634; cv=none; b=UCF5HQSuyspvfrb+AQZzbs/oMiowleFeGnnInHk/PeNrrBhR7nXB8cf0umqC49f4C/Tggbh3Z9uJMpLtAhK9ubNVZ78tnZZtDDeOALw3rosLPtnNdDE+3OEqKnqw/Gmg5woQfpZ0WqH0dqwB911NAgMNWqbQn/0B1+Y0TJePgaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779171634; c=relaxed/simple;
	bh=ureLHFmYme1I1+PXBcDupLYxvS9ZMmerVy1SZFBUR/M=;
	h=To:Subject:From:Message-Id:Date; b=Xck35XoSIABiVIRgQp4YjyetsXfjBJ2thtnSuRpWbOWDRYLyJTZ9mvhPtoU31wpJyRM2E0J8EV/zhedKic1gr7Ijy7u945ZnBCrej3kJVmUaXuc+4o/vKqSfzXS0t2LAOvu5ckaEXcMIljcKrSBeAAmHYcvJ5Cv9+Hs+SYK9T6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IebZ2Q9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IebZ2Q9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA728C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779171633;
	bh=ureLHFmYme1I1+PXBcDupLYxvS9ZMmerVy1SZFBUR/M=;
	h=To:Subject:From:Date:From;
	b=IebZ2Q9c382ZSyZaPltF46VlqRuc0JloMdHnEQfni1k9+mEXKp92rHETo3CZIExJr
	 7EppwUuN8M60Qkl02Ej3ucnizgs9q7HWwco7DKjimzh3m8SNyLOexIaPLii97DqjC3
	 8BqQYPRxNlQM9J0aJ66V9WMiw++kqyrblS0n/+IwefWI67hzh+h50Iaa7Em33AiZoI
	 Nl2aZCtFqZy4ZE4zfLYYH1uZGcsC3UenrJM4BScxfA0cGbfo0W002lrCj7HRK12+JM
	 FuEGW6eB1KTUUytMp+HfnoVWOfsr5QRFO0uSpLz9dNNQSd3yRrq6grGl0AptuMhDnP
	 iPUvJ9OB/VmLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1D2CD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917163369.26622.16809768842346906856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4030a14d08a01f222c1d7ae5de975062c8a5a77ec6c8a67f7d8a5d306d401695
Date: Tue, 19 May 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779171633
