Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398B71C4A20
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772433894; cv=none; b=hnMxY5YKw6aDj4b+RY3t+XwLBYqVYnzzUGPOmmUU9p/QkxiV95Vn8XV2grDyYZdOKHbeI5x7HE75e0osOUgNzY9jdHIkto/T2ynjMfHqgTLTEraWFqYdUBjBuLpKqWvc8BZJpxDOOhJLx3ogBQ/Ml72ec1+h7cTyINMTfheI6Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772433894; c=relaxed/simple;
	bh=sxTtvEArma52ZDbO4CqA3E5kwboFcecAwZSTNxNMnCM=;
	h=To:Subject:From:Message-Id:Date; b=Rj2/+sJ90Wmxktp4fiWTtEo/la+uZpOJwXYiuH9lU/df/C+fRAIclzq28KsGI9yJ25XdbMxsWk9yI8bDHrpnkCU7S8xEWtIEAD7WdEqSt6ZU2nzpxXtgUrMZn62e35+cume9vvnnjlZvOExnnKYcOyIoXqKhDXhdH5nnqkkCMCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoF4DTWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoF4DTWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B804CC2BC87
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772433893;
	bh=sxTtvEArma52ZDbO4CqA3E5kwboFcecAwZSTNxNMnCM=;
	h=To:Subject:From:Date:From;
	b=YoF4DTWt3uXb5Udt5LTrPTDBNMbKlIBE9GdBEerML3AgaXNeFcgpBfX/wKqCHnMIo
	 67gQhxWfZqg937vDAnO4+C99+YO2Mu5oBgkdmDomSBooCZfwOMbJa2qvDQS3lcFlfF
	 IBjjGQiEYIPCyLbesIuRiucU5PUUR1X5q5mtYgd7yTTbmDVlHpvmBBb2pjOk2iwASR
	 y5YytDDawQBcAT0650T+ke7tt8/R7R4C/kz+5KocLsKQY8n7cVDd8Py/9xy01sukSL
	 IoXGnLxcLpEXK1gf5LT6yGV1c+2KPWJ6uU9UjAoiLgU3Ewqq8ZC/QvcgmSUswM8t5z
	 EM35jf32DahQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FACCD58E62
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243389363.29728.8657118119720891045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeeb7c415517f3b06bb0552bc6498cb2346e4e038fd59d5e8227b814c66f0f5a
Date: Mon, 02 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772433893
