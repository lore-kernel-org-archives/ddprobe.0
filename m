Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC5E28DC4
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769900034; cv=none; b=HGAns4cREnV4JhwTaqNZhYawO4pfiNRsXGZG1Svlz/eK9q2vyF9WafIhHqkya7cDgY1Y8oNQwt3gQ05foK1UcbMirLKy+XILVi6HdeRAt1hcTTcnj7azkKcY1JfLK3P/DckW7XT4vOk5cl0E/GMXPaqHZ7+u63fXxO9nrSYhhF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769900034; c=relaxed/simple;
	bh=q3dx464NUNdJPHx8MNjwKMqtl6/mYFbYDZnmXneD3po=;
	h=To:Subject:From:Message-Id:Date; b=kHQMMghRGdv322baF62GNBzIkmcm1BGAeCpoA/CMAaHuw+fckbL4wkrZZTkQneq2cj7OfDpp6tJMssWYXHfMOvYMokzBHOIIxU/4HaUtyoMtN3LVkkazK1g+JMzbAikjEAEf1qmI3Ao6JNtj/wxN+k5bwpatB6aBIsDA3+HTA5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMGByGuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMGByGuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C84C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769900033;
	bh=q3dx464NUNdJPHx8MNjwKMqtl6/mYFbYDZnmXneD3po=;
	h=To:Subject:From:Date:From;
	b=OMGByGuvy/pYsVis/PeOLWM2n0r5vponmgFwmaF953uk4uVCZc0r11NBwPNrjMY6f
	 K2uR5cR4BjBw9Vh2yACs+4KIK1Rmss+2DwiTx061kgJVFVmXU+aXCm3RJCg7RnEh0E
	 2Vhrf6BW7naO2SVsxB8ESslhGXuJzFZpxM+DaS9+IOyryWXFPwfPe2+NwUX5vO0hgd
	 Q2LchNVBmp0UuX7OFSBGwfG29o7CDjJY/9J+ai6JzYP2hBl8KK1h37nAnvF1htyNSn
	 cNR4wppL69YY8lzZkC/HNzPkdjWYLDou8rpUnT+BriJrbwVFHPTPahbzNSbT0UfTMh
	 Ti1rRqs4gQUPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944B2E7C6FA
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990003357.29736.5861087462651626506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af9f8a25d7abba2d383262d63bbe63d85866e805f5609f671a68a33d2a99aca
Date: Sat, 31 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769900033
