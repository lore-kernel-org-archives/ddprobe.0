Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49199274658
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776319654; cv=none; b=UlFJQ3TqjpEzl0T377hLf6KJyyTx08vgYGBIzSsqepAZi13QB5AyyDZSWEAtY3aqzGSWaiqtxpXdgs0CGydrHmpveTO5z2IgDriCtqlK0J2nJDQiZNVnpH9WQdQsOiu1dlj9O7KD4pVRetSIiOYwOfvBYyWM+ekoRuFI3rvV2E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776319654; c=relaxed/simple;
	bh=1QllFiyU3u+mYJxpCO/tHUsf4Q0X45zgLsaVzuNnOfQ=;
	h=To:Subject:From:Message-Id:Date; b=Quba3nKD3wY0/M74aOYdJEbW4gCDgsgd0fPJ0oQ/PyROLow2NVIV89lQ2o1xR07RC6qnqE7zdRiimK56j4m5tj38chs2DzBvn8CiGcxj3mHXRjv1gC/koMgPnIWovflwoLz5DdZmGZKcNifgGiZXStq+yITAL+fruKAD+ZxTaIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogqhPLdl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogqhPLdl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32DBC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776319653;
	bh=1QllFiyU3u+mYJxpCO/tHUsf4Q0X45zgLsaVzuNnOfQ=;
	h=To:Subject:From:Date:From;
	b=ogqhPLdlKbgjSASWp+9kYbwD2cxpysYP8G21sKTpKPhRiAPKuX+c0MQNkxuPJTDkg
	 6zuO/fZmTdffBdvcN8Uh4WWWJ8md0w+aYgMd22D0A3T4nG6IeSKdK/TlZHMhnOkAkS
	 9wF5AHJq19oc0nNnWXlDkz0Z0fZsu+jhSP9Kq5M6WwijBJNf72KJlRgRqU/noadN0h
	 DbM9BvCYW6rnGLEbHOb7/1UHv78m+SR8Z4g+Va1Z4tUyhEIzOSrxX2t7owKKpE/aKe
	 ijvJWvAcVI7n6h9diMeeHsgPumzxUsYgW0gmnzByA0IgyVbGhPwiH1OLznVEcAaJ2P
	 2T8CFbkYbyTiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7EBF428F5
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631965373.26552.7185998174624964808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f46b52d27815b3cbc100af7599ef6f3ac771d8efdc13a36e6b14e73aecfdb6d
Date: Thu, 16 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776319653
