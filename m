Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB9A149C7B
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745720394; cv=none; b=S58lYk8jCh96i+MkRIEPyLO0wuK3Y8qVTKeNcOODiUb8eWZWEHo7ryc1rGpU9vuIvm3Oxe8P8c5ff8jUTLzt85EYg8LyhQKPrDH7WWBlFqWZAPWWCg3sQHUY69Zj0UsOcmXQsDBmjiEToQP6T1ildLl6B49dsH0T8K7bCFEhKns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745720394; c=relaxed/simple;
	bh=+vtkbR28wdJS9lK9Q2DMq7k5ENY2XQiHcH9lEU5KSc8=;
	h=To:Subject:From:Message-Id:Date; b=Wp6pqC7uDyjqxdI6w8RVFTzFg9aaUSZKrN3Dy7cPEXwhfGUwYfvqxZohAyDPZs5K2r0/YsyqGKxiWG5JEU5erhLCo64LnmBpaQed5e0qVyLDE8ArINUgS2tCJfuB//Hjo3ex0yQ1OajTYhVk+ti28X+K3b2vAFn23IgnvwZ5qmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4VRv33i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4VRv33i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00AEC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745720393;
	bh=+vtkbR28wdJS9lK9Q2DMq7k5ENY2XQiHcH9lEU5KSc8=;
	h=To:Subject:From:Date:From;
	b=K4VRv33ikG4fcN7PbptPSD7WyZ2ZdWGLzdNI4A50+QiouHz/UhMGg+A7A7gDPVCWZ
	 X1VXfCeNZxUUlgDMZY4Za9FBuExWCpstbJlvHH6khdT+mAwTDb+K1Bz4Z5AJFJH+8W
	 oG3ZB+KFEJjSGyMBUJgk+FI0zZJW9iLhLLd2lYQCy+0PXa7lIK4jrvnJaKG7lQR1Y9
	 P279TtQbTiocryyKhzUlE7c8xvyfH8erGOSuxxx6LVHH8LouLIIg7mTLqFfn4F9GMm
	 U9ar2W2D2eCYtMF/m3U5z6tvxx6cJwY0VUMVb5fqy/Na3SUU7tlWcyxGUSFRTuGH6T
	 ynpz/V2GM155A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAFAC369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572039357.8198.18058147356813614813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3bb4edcadb61df17be3ba721dc5e99e2dc16f2c329b6ed94977e9ddacfe01a
Date: Sun, 27 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745720393
