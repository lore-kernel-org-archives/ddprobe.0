Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2461828E7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722386754; cv=none; b=AHgthZCaylMABljmoN90lzht6DpTsB2BKeYiETjT5kP6ozqcIJq2IClM/gGqC6TZrtC13bdhRs8aVdp7c8QarFwHTZW86oLwzs8D00+w14rniXFmDs4YNNr4mcTsvE5SosTe35IBNh8QQmu4nzrI1iaXJTbQ6FY/VzK5RH/Ew/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722386754; c=relaxed/simple;
	bh=uYjNbGGbhzQ60IWj8kVH+lRO0zJmIInWVoCmwEYvABg=;
	h=To:Subject:From:Message-Id:Date; b=nJ4SYvCVwKwAh5xnsnERrV+3pzy693JHGXEAGrfLZcI24czcxJuhKEwwwDZ5iD8kx+V0uCR6B5H+IblTDVj7yE26KKViqaqeukw7EdHgWDTkSsuFC8SZQzjVG9PRVyJcMsay3Nfq87JOcWcQ9IQxH/3xYAR6qREE82tfDosmfO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRefMisq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRefMisq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A393FC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722386753;
	bh=uYjNbGGbhzQ60IWj8kVH+lRO0zJmIInWVoCmwEYvABg=;
	h=To:Subject:From:Date:From;
	b=GRefMisqglpUO6mzltVYLxJTw9V+x8klc8SvgsEeSfdf0Na9KmPEbh2AE8cm9vVtm
	 QEp3r3bCS+QuKl3Tk8uLa0/OdoEC1vSbzax4JjuilV3OIyAhQAH1qwi5Jp9ENKHNgQ
	 YSYztucUxTFT1jLmH6H8k0O0y7q9kZeoIjFXJO4CGDdRtvwceUSOROBc4Px2T3wdFp
	 LKFW6xg4mjrL5/xL6oFR60tvUc1mkM04g0MKJjImlzPVGAeiLMqPM9zketrS0kpNCY
	 7Z0cCD6rQ676srNaTdh+vkJhYOOfxKcLGSaFh2tCGtJ2xYL4D2Bqa3KqWcQd/KVYoW
	 3K6L7xSIN9fBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FFFC3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172238675358.5752.198647068030891780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea48b3a663a05027ace75fcc2d67d97ec1922cb1d8b33cd770ab77636ad97c2a
Date: Wed, 31 Jul 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722386753
