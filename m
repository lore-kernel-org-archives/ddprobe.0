Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183601F8AD3
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753304994; cv=none; b=nF0KkDayJasa4BIKqGxdBOkGPf0fy/VV7TN0B1N07UjyPQxp2+VlcUj3tqKakJGxjRiQU983wELa52gOIWvlveKTQCkAs73VsFEIdG7PcXetBqsVEdEFiLEDEDL6jrUXyRbG+BuBnOVg8nI/SwRNfNIJp8anWfU357FjUyNg+go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753304994; c=relaxed/simple;
	bh=UobcGAA1mebphFHQ55/R0KZD2fZmIKZ1aAaD39qyrQ8=;
	h=To:Subject:From:Message-Id:Date; b=FtPYkwuwtu+ZUFkTzUx/H8IdIn1q2WYjZkGgtYFnVa+vHcejsNGnOHMGJXksvCneWSXvVneK8swDaMb3uFmAWnHGtT/9RTNc/jLCbaLv//CF7PtrIJ5ZD3gAcLejvXzm7gA099EyASsIaAvm5+w6gd7hnC0Dh1FCqS+JJ2ZPdfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qemcUEcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qemcUEcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D61EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753304993;
	bh=UobcGAA1mebphFHQ55/R0KZD2fZmIKZ1aAaD39qyrQ8=;
	h=To:Subject:From:Date:From;
	b=qemcUEcLBl00nIX1FPoymsQ520TPdj9wpHAqK+0XmQnizdsVlQYqKHBTgNXBXsY0Y
	 F8m4pr9mN+j91b21JMPoTwmmU7Hx4Pa4uEE5wRtGPTMxbAQQ+HgFhz5LYZi1Ek2msT
	 vufrjPg10MaN0xG7NhmcvV0CNy6vJYXe6hJ0u+cEkeT6i7nqoqs4HFnKNFFkEnJmcX
	 3jczKB76QZJHMjpv4Re9akjhyONOmvzUOtsTrBKXcgJxXE9xcr7OG6Y85LjbBLPZ7I
	 27aL8/rwVgG6xsvt6ze2O6aBbZRlgPSP1owq11mYUNIQmZlXjnVdmW4aKLMv04hhv3
	 dAGmNIujDcnjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0A8C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330499357.8993.17362883405953238386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82715a11da3b0662f50c38fa7028b51df97362d6029d03f5e4944828e159792
Date: Wed, 23 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753304993
