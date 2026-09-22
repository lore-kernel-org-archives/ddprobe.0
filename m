Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A4D39A806
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790044235; cv=none; b=uhyoR6JiqSg6r9rQDVspGQkS9w0DsJvJJPrsBKK1eU0Yzw/ySV7xLGLAgIIgCNieBzyd5+Fwh7z8Ti7p62+cRW3VxXphT6gjZeslOVSMw+9dTyg+9L9WWpFmncdksH3Impb1xdb55Pc3E0hGp92CxVQnjWKbbUG77s9b8jEt8zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790044235; c=relaxed/simple;
	bh=WHwaZ5lWJzsm5ZePR0dI+IPP1jUUuu2V6MadsiFaK/4=;
	h=To:Subject:From:Message-Id:Date; b=eeW0rccRmUf0HjOA/EN2v4tfATaBjNQ+8YNEz61R0VVPi7aTAB9TM0nGjx2jA13nkhcS8fHabFU4OTZXaGS9ZclekackAoroT4F11OX6zZ37u8SufzPqzLkafXN95n6xoAuUBt70Bw+uvvu7kdW+YtWg+d9ZsIb7tjm6ROmEGpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZypKoKs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZypKoKs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FA2C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790044233;
	bh=WHwaZ5lWJzsm5ZePR0dI+IPP1jUUuu2V6MadsiFaK/4=;
	h=To:Subject:From:Date:From;
	b=ZypKoKs5IyW2Eln0xa1JMFhEvitWfWkEkJUj8aSuuyXoBtGtSO8AQDObv5e6/pJOR
	 zXx9ahUQrLmVRONGnoxsR2SYBivFObeNPe4fr12JOvoqkUq12s3ZlLH5X8xXVFasKQ
	 iqcH+aKYVI52nyVExAlCz9oTaTXjL6dscM1KoxcCLGQ19Y2grJbcq9zrZwAP8CknJl
	 Pc0In946+28ACvy5hZPD2kObhJILoQ6JoMgqKhSGnPEoMNlxa7kUr8FJNLDqXpKWpm
	 t88EOuLavqB+qqOkcQhCkTk1G71rYhGiyd+u7KaHbcfXmvA2hVxIqrejoiFv2lW40J
	 wDgGAy+ICyX6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BF3C982FD
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004423373.27101.4843631187279241192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1aacf6f800c642ef5c19d1956f80df57c1a5ab04a8cc3041342e0b23196714
Date: Tue, 22 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790044233
