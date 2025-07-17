Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134494594A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752773394; cv=none; b=JS9xcQvZ891kOsqDTQlCpkEzhPlCfWm0UjVtruHttaTGSchcMGt2F+bQvCzwJ2cEqvCucS5VfOvpsqfKReGdrbeXA30VSrdHsvom2dNljXngnmBaeoLOtl7pBwpBxrFUA10h9QUxJvGgm1EvSEHt9TvtmIpXXNPsfDvK3jd8gvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752773394; c=relaxed/simple;
	bh=MQ4OULzc3gPC9r11hlKWzBdGyzQFlpl6M/vD9psGrEo=;
	h=To:Subject:From:Message-Id:Date; b=OtBLlt8D8LGyeJLAeqH7MNkx2+bxZ/+SzwgN9f5w5zSIqiQAfg45zK0C9TPZjynhjaFLXd3SJpJwfx5F0xUF+SU04hA37cjkfh2ojIvjdtvzSQxjPW8kevH1GthLk365FaYoItPUbp4t79EkhKKs6/8gvJvVLBREYJx3FDpt7Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pX0VVbK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pX0VVbK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D46C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752773393;
	bh=MQ4OULzc3gPC9r11hlKWzBdGyzQFlpl6M/vD9psGrEo=;
	h=To:Subject:From:Date:From;
	b=pX0VVbK3xivkulHjqBRAv+G69+fOdbnwkyn8mv5wQkbUQQ4S1Cl5KQKTn2Q4o3F+V
	 1Ck9P8S6HyfRDKD4EHlETjDY5YHyTNzrekwoRH6S1v/77LkioS/8RkdE1Jk6W8PVGS
	 Zs6OTL7DvM43z9Za6YTqt47fFFcAjmvirm7AdmS7Tm/oGnq1kFfalgSQ+jxNIWzJMz
	 6jSAfbF09u0goe416RETrHfT68yltlASv741J5dAqP4dyNI0Qvd0uo2vYNgKc65l1w
	 oOOElu5qQyzfDnuhLoFlV65C9MgZNzFAu8BQdLLGuLkaWQqe3PZg8rrF59bRwzFOGW
	 g6bzAw+VIupng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9086EC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277339358.18644.10229894070754731480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 660a786cb22307cb3dfaa8e63406931fc8de7174c539308506daea66ad6bf184
Date: Thu, 17 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752773393
