Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3481714AC
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747843795; cv=none; b=UmhdXI7XMhFiUV9dfH3kPPObsTPlS54A1G8vFgHyf/HgnOHlYkQgOh3pwU5RF4YtlAygShjdrP5O4boW4GVkIxfiIgw01Uzbw3gtsqVyW+ZLcCUCp1a9OfwciBXvRE6w6+d0L/f5DojgPYGsv0La7SD92SUjxJmKDTP2t6cRTgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747843795; c=relaxed/simple;
	bh=qGZunZeYUvYqU3Wq1H2udcO1498UucIT/iUW/+q99bk=;
	h=To:Subject:From:Message-Id:Date; b=EykcddFC0FgYJI8dRbT4pky5jjmv7omqAXYb0yY3V6xRpJz2vZdTdK4dI/Nr1Tl5cT480Rrn/gEAS1OcpMbiSr5vu/JE/6LwpZtI8owGsvF1HlNY6F0XAF91ZzPdFTSekBiR43vRldz24xnf1fdGJKKSDCLehiW3rgUK6KeCtjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pb1a88bK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pb1a88bK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A188AC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747843793;
	bh=qGZunZeYUvYqU3Wq1H2udcO1498UucIT/iUW/+q99bk=;
	h=To:Subject:From:Date:From;
	b=Pb1a88bKEPYhfwK4GZbMmUIgWqEW0aZNMv82Jq14vR+eWBwpxBdc0mhoZj2Kv8OBm
	 frrARSpX/5690UxshzVxC5a4MG57kLxg2kSf0KIse82J6tlDKFUpWG9QS4XTALHI1X
	 5pFbm5xHdhAQ6EWJK0e8Kvn3mso+N4heu7CoCgnJkln7Aeh6+0LbwQOqGrXRRiaU/g
	 LKrBhytvQhzWwYqKuIY/jcssxJ6SwaaP5Mewf3paDBy1zgiYdp/Mhn7yNPsdAdgnFv
	 /dN46YN+VmxCykSmnUafo6iv9z5ugVUoj2qPmMNgfnhOUC8HZ2S8lTqtH9vYpzjo4Y
	 PDzsTzZcqhbLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB7FC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784379357.22963.3179875364763064014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae360520eeae1c8a68cf3219b0f3b79a0b3c833d870ed2a7e1fd46f85e7dcd3
Date: Wed, 21 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747843793
