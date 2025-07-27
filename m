Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1887B282EE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753650594; cv=none; b=mikD7PpQNJNm7YxxZp1actvYMzfCKi/1ivxBXdtalvdWZS+gTgA6/DMl5OvHZO/3vTF0QrEBAMf509GcU0ufJaQejwM7lRaBabScr7EU1Fu9KSr4wqp8E7w5YDpepQSCiuqCkovkbj4ErMZv5mdpvnYd47f5coM6fFUhgZmMfPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753650594; c=relaxed/simple;
	bh=YQstiG9csxPlzkU3u8tw93gFAZPWxJB6INeBHHYjQik=;
	h=To:Subject:From:Message-Id:Date; b=tmpvszLjBeo4HYmHKr9ZjGPWbPzZElOPyvRXZESRg+fUfFlCyh3KptJFYVfIyknZKcjXAnKxOASup8Kjy+ApOQI87wpRoBK99gzwbTJeauA8GRFUV9Y7u5f9OfFtwU6TG2+3RQR8Bz9hDroADRuP0+DE5bPUExaKyzosExEr1TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBfr1KD1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBfr1KD1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D07C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753650593;
	bh=YQstiG9csxPlzkU3u8tw93gFAZPWxJB6INeBHHYjQik=;
	h=To:Subject:From:Date:From;
	b=vBfr1KD1yRQgEX7xz7QnbhnAPpjMqglnMbHw1LuVNMiLsZQ6qksh5gvsEiYqtWgKK
	 gMy/FzLKpXPum4BVBd5WICJ65ZVdcwegNaASbs4HWsfLu6K5SiNjTexSHO9axztS3E
	 aU7iTPypz3eMFJ9huwpbDAjaz0FsFFfZmL5Qwk/draKXu+rwlUTour9vyYJIzGmd0r
	 m2wNgbguTDkwH+G666tb/PiXybwOE1qVEeVwQSZlBXJLURh2I1HjBW9zuH08xVqWTS
	 /zrzOzifKRpnzaspyV50PYNdVFL6GRou+c6aG7MZPYRUF0B4RxzQawN/b3swb96p09
	 IlnUCnvZ71qZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DC2C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365059357.2465.17971168511115998883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a42bbdd329d45e550e4686f40995a4398a7d68b2ac499ea547bcd803fb271c1
Date: Sun, 27 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753650593
