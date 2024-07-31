Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4E71DA32
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722432354; cv=none; b=Oggky4k7SBfeqvxyfKDTIp2zysnU8+MVPRSPRj7YgQKcAojZRJPSQoh88RLo0aJmgoHq147Dyzm0cgAtp5UZ8dKNsaBP9th1eMyZClo9jxYmlrpcMLZs/YLy2SDnYdom+L326+g91ytYdeg43qK5P/n+fTea8jPxbw5WIAQvO28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722432354; c=relaxed/simple;
	bh=j1cde18TNtmIe4Y33BIbzdBn9YkQFs5Zx9FQ+PKaotQ=;
	h=To:Subject:From:Message-Id:Date; b=l+HIdk5KDEg1YUUKPo+PzZhNVVAhO+6SW+g+0R9a50i0Sxgs3kd2sxS5wsncjM1cFgJ7kb+bilKQmHGLh3I0tT/U/LcL1RRZK0A5AtlhOdAF8nYYCfEVRrfUjokrTNi8Q2R4Ze0LqMiOxBwXDeO5UpZEw4MfUJBp1kDhhMotJAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSwi0bNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSwi0bNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EE5C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722432353;
	bh=j1cde18TNtmIe4Y33BIbzdBn9YkQFs5Zx9FQ+PKaotQ=;
	h=To:Subject:From:Date:From;
	b=kSwi0bNdQmLY2dc1oeXoC/hQJJ2ypswvlJrlxh952P9m4cwmhDukkWlAXfpmN3WPV
	 OSicBg2qMSVIySZTCkoJ4rOUxpqfSn4X2uafNWouQuiaQ5NIoVfmMdh78SKPuvZ3WW
	 Y6pEuz3LFR5L4HDTQMH0i7kI5YoJoMFuyIrrZWd5K2T+6HrlviNbZFlqPgiZqW4bwa
	 C4s9PWpVTDXaDmmlkSewtH+dh0OL93vm0Wpu0w7tYj8DTbYVIyZaPRkFe58B3TyjD8
	 8JaO0XfSRauOSccHBTkF1ItZxH/q/6C4oQgPRVEb+teBcB9A7Afe28EJGYLjk3mGVc
	 IJnvRcNb5h/9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9668AC3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172243235360.18755.9826656363253856201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3cb0a5d32c5724f906ab7f3687367f5d06854c4779d05e7624e68ee8042ecc4
Date: Wed, 31 Jul 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722432353
