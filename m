Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1C1C2ED
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746913794; cv=none; b=kcaswvv1Mq4V1vknw+jD+MIDJ7jAacY771XY7xyQgcx9Yg7cHI+I3GvnmQqkPpl/osaQZHGAjcLuKisOluVm2BfOrhPey3yfg5zFQ85wCQjlztHArr8NWs8R6hBGMqfNUwb4g1z/OF29WZDM7zr/fOFFxwfzzqHa+N7tyeiPUuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746913794; c=relaxed/simple;
	bh=81+J4a1p5Gb22SmrgxvIBEVWu06RYgQLxs5oS02IwIc=;
	h=To:Subject:From:Message-Id:Date; b=WY5vBD2cIvdtTJB5B0/pjpyBWmoswmW1hMEjKm9up81knzmCjav9ZGheNBbqH9vQjrzOhIyALeYyp3LD/jCw5q4sJkzsmdOIXUnn3gJp+gUEorPLQXgF1ogaDiWvNnWaPSmTQUKueikhM9gz375jaaiJWEEvvnKoy5O1tPlw06Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4sOYA6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4sOYA6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBF7C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746913793;
	bh=81+J4a1p5Gb22SmrgxvIBEVWu06RYgQLxs5oS02IwIc=;
	h=To:Subject:From:Date:From;
	b=F4sOYA6jWexKxEuSzHzS7gPDtgBwhFpuCbcZOsvGBcZv0v9h2OnXFIB64upgTZoTF
	 L66WLVNa2eJZcUx0y8AC299VCdWxzLSULXcjQUrBzMBIrdxnfajeHxyxoXfxv6UsXe
	 6icJr0nZYJEXvUH/Dvq2I8inaz5oouCcd0T1Juo9PJ9wl7fXhXdTiS9oOV7SNoO0mi
	 y8HdpikyyFQL59uJH6S0l3kziy6tuhI8KMChgMrSGhaLXYjSiFe/sHRnEKZtqqIdKS
	 I6bzAy9Ng89inD9TcmVUDrOORNtVEOJ3xJ0XcoJbfkh1F8iW7ytuCU37ZzM9k+oK6a
	 MEZ8Rni7/i91w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97146C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691379358.3552.13414946519053148139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a1c97e4b07f2629a6e3ff5236385f396132fa89f2d1145950543c4224b7c58d
Date: Sat, 10 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746913793
