Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3CF125AA
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783234114; cv=none; b=M86LI9sJ4oAmel2XSM+sfJ97gi61HJrnq+Bm3kf8kYbc8A4r6J5aeLgTlhviJMwAEu4DqTcGMNT3NGy9SEC6foqE5xEHPbxxPtC2yhoUucovDxIoJKVUw6C4eF7loKN/kPDhK3ABx2dtrS8w73SbG6C07NY3583QbNXAAhfdgl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783234114; c=relaxed/simple;
	bh=uIKNpHAv+AXJp3+w7cbGQ25KkmC2UJ3hdXhJAN32Icc=;
	h=To:Subject:From:Message-Id:Date; b=M3Al7Zb/RFVqBdrhT2kcaYUaRgoNBDkvlMg5rdAXAA4lHapYWk0Ua5KNnm8+Slf0Ua+SGtyranm+CebEcqDo410Kd5YacIYq6j+Ppcz4d9N75gopleEp6tSBqVTuWa929NKDzwPwkNChOBLjf8tBEfXjAf4SNREFg65U60Qbx78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsJuAEIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsJuAEIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C732BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783234113;
	bh=uIKNpHAv+AXJp3+w7cbGQ25KkmC2UJ3hdXhJAN32Icc=;
	h=To:Subject:From:Date:From;
	b=fsJuAEIJu6ZgX4vzkV7Q1xcU9WLL7RmGPNhMNwrDCHQyR5zZOOzprz8Lf81bokNs1
	 9RGTkdgu/a0zDqhvYV/2fo3evlzTnEgv9NKAJaRRTPR/4IlmPwNO2zk04hjpp0eELK
	 DK1K1CVZhom2l9Kx9QHZVoprPEWf8h42oUaPLy0fv1iUs+wbAhA2oTzqhRXOKDODUX
	 IS2LZzmaWCI9ftjkxb2kFL0xLZjLsQmQ+Uzh06OJs6SNRPLBy4XG7Shj13lx+p1Kk4
	 ASyRIIEe9raSUcObzH0QVqB/cxLRX7JBsbHuH7AQMXw44R2kkTMqGsqjyFXoVUXG6Z
	 nGqncGdEyA0aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECD3C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323411368.8383.6755225037198178500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464baee586bdd4fb3df5413ee66c80c097c781607cbdb530d52dec622970f8d9
Date: Sun, 05 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783234113
