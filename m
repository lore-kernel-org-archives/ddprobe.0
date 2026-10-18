Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 883E23EB10D
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792297834; cv=none; b=bOBlKSoSCg2gXIjtHotDY7kjzebgRZRdFILT68b+5wUlH5N6/lo0+9Y0sHRzHHgQy7K4ZfFftmPwi4JI95wVZ66AkBX1UaYoAlTQ4DhZDkq4QMYxtrkClLzWh/ErOv43XOEOdqGTj6QaPpqF3+MccI4+U9VCHCL062FIbxb+A+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792297834; c=relaxed/simple;
	bh=35amYf6WhCfUuhQAj185IbeBkL6EcOJcHGm7A6cKfdA=;
	h=To:Subject:From:Message-Id:Date; b=Ab7XEGifME/7ftphEKwwHiOU9ANuknv5L24zslWSpHR1XUK3in5lhOx7TA/4b7cFyEo/RGLkRePBtHhGQW7d7bogbGSPlGue4HRQ6zApdDSwxSZVrahmkEucXbyTfEA9T4EfZKWvgkiCl5aTkwmLIV5VxFj1106/iVs1lWPl02M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebMzqpx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebMzqpx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC77FC2BD01
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792297833;
	bh=35amYf6WhCfUuhQAj185IbeBkL6EcOJcHGm7A6cKfdA=;
	h=To:Subject:From:Date:From;
	b=ebMzqpx8X0QunFA0RlD8pm26feL5auGrs83dmScCP/rC5BFDWbJv22WQdYpf8jcEG
	 PgRjazA/7TssaZvraHYBvZ/AHVV6G9TPwUc5LfezLPipju4D2mJ/xv9T0HTJhXRV4K
	 6RjIRX0i0SOS2QNsPc3HrBnpc5WPoj3tI7J12J4L3UdT0kUerxz4HKjkcf8IEi5Br7
	 WQ8+a1IC41ZNhlg3ryDTsXS7TXh+dIBHPJkiwojg9Ex7v0gg2ta3EtqLbgBlCe5JXg
	 Q26DyEjeuf/hUZz0s6dVH59Z9MGwIdKT4iEnALpCEdhSoGSNtemegwxitikpgk6i/7
	 hQTfjLmcmCY2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D96CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229783373.24071.11102804269793103251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09d48dad81646d30a6ce4e2bbf3b9b0552fcc2eed4d4048e7bc6c2420610b5b
Date: Sun, 18 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792297833
