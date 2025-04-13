Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371A218B463
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744583394; cv=none; b=nwm2bamhym9hJgV6a6XqxJ4F+5WVWm7PqTvdcG8+a9qGk3WDpf2PQGtowmfbuwIDKCuxrV9zNAxvx7sXnSrWX2u2EZMDpEipek6XQ/+HGI2XXYzCvD5Fyb4uQ+mzodNoh4sBw+Chs2jgvt0YJ4k2hI88b4Cvyg2Oa4LV/VhS0IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744583394; c=relaxed/simple;
	bh=O9IY+dm/vjfZarPmAnjrVMupHLWt3FjSdKv/MI3ht6E=;
	h=To:Subject:From:Message-Id:Date; b=SmFUz+NmNifWRSwXHboKIUx26laxX6Csxdm3E8JQuTIhFQue8isFXivPe81ilsiYJQ79r4wBNubuEoAOI2/LmJRN0krsTZNZlNO+ti6dYymnozj1EJ4M15mBIJk22cWKXyZXLD6LNVgJfRs6CzquRv34mLCZVKImYm4Aglta1qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vza1DvxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vza1DvxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4F2C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744583393;
	bh=O9IY+dm/vjfZarPmAnjrVMupHLWt3FjSdKv/MI3ht6E=;
	h=To:Subject:From:Date:From;
	b=Vza1DvxBzyXQp2ZQw/Qnkp/TCXzOTgViAyn5Q0IdggTg8LKbJvYvXjD7wgnR1dcAN
	 R1jcWWn2EkAFvjAIxU/LwxeBGvVThqPjWKiZoXQMBz7s1JI0+dzFaFV8cZrJhNfG+6
	 PIl6XRqchUF7R7QSge4diNDusB1ZUtoIcWHPE1b3AxLY6xMGMo3sctj3ZrWsxs5toR
	 lIbxREEP3FFNiXqgXWKN1+00e9GKT71Q4/l/7lnvsd9X/mzrG8SAzoRCnPaUNfLuwb
	 gH4aB6vL/r3zfd7GyJFnXvchNjymQyri+VZytGYnTw0WfZIPlWVaNvmRkVR650dp27
	 tBSmSgfkiVg1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97852C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458339360.14057.10980710539063171565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58dcf2a8d1560fae1093444fbe9e0505c46830e91b40fe9c72abaee80762e765
Date: Sun, 13 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744583393
