Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF1B2192F3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746765594; cv=none; b=VoY8UjH++h4EuBJ8KrzwV5nCSgbl5dWJjnZimzrrNehdjwqIcbb3wOQYW11vLOhFH9ufW4/+VwfIKhOBdJu2EtGxQZM2snZI+lwFzKK8I/NC4fPY4XCyfI2ZCYmz8712ae5xvLUiUAlu94foQfAj2Pnd+jJMKrBLIOPNM0gFiR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746765594; c=relaxed/simple;
	bh=V1NP68GiRpofFcyya9cNuU93MpqC+dB6TpCpBQWvbic=;
	h=To:Subject:From:Message-Id:Date; b=tXXbqGzVN+K2M3JfZYyT2OFITsk+BQNGFDAzPgffUOYqmv1DPGHXCqskWBYGcMuLyPE/EtmCCzaHdqkWHtG7jhC4PGjyu3QpByy5Z5PTjj41YO7RPr8zlN7W0+dGA8K+aSShPfXiJQO012VOeDrBoYRwOtujs9U3IjPzD8nfLiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9p+TcSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9p+TcSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B0CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746765593;
	bh=V1NP68GiRpofFcyya9cNuU93MpqC+dB6TpCpBQWvbic=;
	h=To:Subject:From:Date:From;
	b=B9p+TcSx1XXDI/M9BhlmGD2nIlQ9dlLVs6TKwN7LxG1hjqEdPCM+iUwxv6J+7cMtK
	 DnZpwRzBtNBuV3U0WUvX8P3QrOMgbW/qRW/h3ACH5ruqtk9kIwnzLYvPZHPRJeDDN8
	 nMNLPE/fKdlI/cGjIoIa3swe8GuEXK0qQuoVHdoZnUfvgD9Vfb75U3jVP7p8Qtkq0p
	 nw4Ix8tYVom0K3h84itVKgS99Q0BCE0Cez3D6fcJtZdJ+reEcO6soUyvcn6Gz+fe+v
	 MyZvPyd9I+6o1A0g2MzmV5woztUZiuwrqWe18kkIN4BR/mqYiIkPPIDtjMzy+PKWVR
	 gdvrvCbOo5MPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95323C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676559358.31859.11492884319000690668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f53e5063c0e49203fcc2f82fd6a28f3fe241fadc35d5823e809014bdc0c6fa8
Date: Fri, 09 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746765593
