Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F907385D75
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791603634; cv=none; b=HfO7CjvzFNxSZ1vfG5v0R1p0twXaRSIhEOOvSjqzqLdM2WDui7MxZ84HInHhGujDNrKt33fDRlx9Ec+EimbZuE7ZlvCOvbeuHkGmifXGwNoB/40fYUzd1EN4qhU5EZUXrdZjTnb50yQ6c1twWnrfZaPtfl6cftBn4Nkr4ACq8Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791603634; c=relaxed/simple;
	bh=cBaphhDa1Aou6EVLTlG/HJD3Wimfxyj/bgh4EdxSzY4=;
	h=To:Subject:From:Message-Id:Date; b=I4WG+9TsYrQ5JVox+bhoz5EGhYH2rxS7o/5j/QPpXRaIqlEsPW65QL7RhFOgkfLqh5qWBFjZfRHJhrtZiFmkQRwNzccU3xBaHhdufuzsru7Ax4Po5dv4S4s9Nq0XzctiNZmxfK0nIFUT+/cE3MOOXUhGuXBqdp7YCoUOj8uhm7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoYbcpMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoYbcpMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB15FC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791603633;
	bh=cBaphhDa1Aou6EVLTlG/HJD3Wimfxyj/bgh4EdxSzY4=;
	h=To:Subject:From:Date:From;
	b=EoYbcpMujG42ToJHB1lrGMKHWFQmkuk1/HnuUFXR8S8vKHWIbhLSTiYPKTb1v0Bp6
	 BxyC/p2caQYNkfrJo2T/cq7YU4oAl6HYgJC8vnNo7+SpUk4BSfIhhwGqee+bqYywQt
	 Y4DtRmQouMTAkEtUF0cM4xLB0VizhSopjLCQco2v21mDpfxwqL8YU6t+zDKSms6/lF
	 yOhdfsiZklTd+1IxeAJB3Z6feTZOduzTm7QUP+xNEvXSmUgG0rxY7XBGoB9M73rwkL
	 jV8fm8j4gviPpeQKtMAakfh6MsdBxZLNmmAKH1AcRd2Dsbd3thi5m21xYYqbM34Wy1
	 LQAvobHTeHk4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D65CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160363368.11682.12939978020546488549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da6295be8a44b1711486b04d5ddd8ff716f7706384d1047975de70b87f2e65a9
Date: Sat, 10 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791603633
