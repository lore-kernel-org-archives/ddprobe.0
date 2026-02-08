Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2047822B8AB
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770572634; cv=none; b=jiS4aY4SFONRJQ9kDci9jTHaNzzxoOWS0suNADvzbGVrOFpkY3C+Ix8QlrdO9lV1FqSTLRy2wz0YugI9lA4oIfhyk2cZfe/QmSYdbfSoWSIaKeeWBmNzHMjG6UeOg+yxFBB/tfeCjJ93asZNXmuPPAnYVtH6DqQbzb/Dln7MIhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770572634; c=relaxed/simple;
	bh=qdiJM8DRO9Oxq+5j0UZo6th8nI6xcVAfdJzTWXHKReg=;
	h=To:Subject:From:Message-Id:Date; b=ScSkcA2WwP96QJGfkt4jbXzL9oT3JG6H6UPjrHQyt+OHT4Gv6gCgcklKR0wD1Ocg5JLYZ/y4sXAjcLx8IEtENxAHwXwmhrZp0iBh/dyPKFP/DWVurBYcHIe838E77REUtt+g5l3WnAKLkkIUuWM6BTprAaLyTurj9aHDJyonS8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFqMH/EW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFqMH/EW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA48BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770572633;
	bh=qdiJM8DRO9Oxq+5j0UZo6th8nI6xcVAfdJzTWXHKReg=;
	h=To:Subject:From:Date:From;
	b=NFqMH/EWczQScTV2nkQZ19MYLEQtyl7PwGIH670cXDHso1dehdKwT5dobxXkjRr/V
	 c/kSkzfeA8B3v0ajCYYgfNwcaEovspigLXMfcolQM7vMFBt/3mJKKXVrW8lTzQrIE+
	 N5qkuJp9zsS2dUREj/Fkmop1F3HSCO7Yt+dbwALTa7u9uRIfPVuvkQoYiGQEpXb4bx
	 3BC+x/Pyq1gZq2oW4l3/AX9aeqZSv6FPMQ8R9lUWRPc1MWf52WtAxzTlqw996kbQrb
	 xK5OgbshG6FLF0cNWlNfnWY/2Tn7Y/q0NhuKZYFd3gU1P/TUMGeDAyeTn0J8GaAmKL
	 unNF3xpa1JyIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986D8EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057263359.25443.7863323161943434874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94da87b64dced9b7f032e57acc9840911e089b120f03b6073436ddb527f1bf1d
Date: Sun, 08 Feb 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770572633
