Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCE729A1
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771466094; cv=none; b=mJVFIF6kI8A80dJQZu1t7gm06b1WDwq6+qTU6JCsFo+X4o9hBLNtT/k6gL0SbjHnR2BfaxIqaOWAz7UWIWo5rFpVdfp/wffxLYDE5MgUiyvc/O2EKhkHwBlHEyNL9MaIhEblh1tfEMSUgfGwFYUow7yr0Lt0M+lzPRKZEJGIacw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771466094; c=relaxed/simple;
	bh=33AUFKaReVVz0JzcmW+obe8vdPB1QX0k7Dtx8UjkS3s=;
	h=To:Subject:From:Message-Id:Date; b=qqKRiQ0j0Ex12gPhUgynx41v5P2kEO/AnH6CE9yPb45zorV5mTaGH32qdW0WVXqem3GItC86bvgvV5v11ZEIWv5wdbwdWE6IacQp7Pttif8W3AsFTBcEiqhxbvFmEzLK69lqh4vfN8N+VR7Ip8tZNdq0rU+nvVDf0eaCJXOTiAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibjj3Iym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibjj3Iym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C157FC116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771466093;
	bh=33AUFKaReVVz0JzcmW+obe8vdPB1QX0k7Dtx8UjkS3s=;
	h=To:Subject:From:Date:From;
	b=ibjj3Iymdl9PutNJB5ivGfe9VOR9fMxyfR8h3h+YKMfHg0qBaMA8HqBnQGFq5i6ws
	 2icF69tITsxzxfKeZ2VkaZJlG70Jp6KlxIaBTZ3yb5wvf6A1iWaJzv5aH30ApEm/f8
	 Ey54ozvEx5E6POXkVCegBdAjmxFddjpgm7R5SgrBzxWpXVzoLcanmL0KJyLOIKR9Qb
	 6f3EpttpiakjLfZJJGjru4ZR++7IZQZ5VHH7XMYX6T91GGAXLoeNJWwbAo7ZuGhUdL
	 rUq3xAlANiu4+CcHUccTYif1J46Bdk4+yj9CUkrbvDbqYcUBtfK6uFLBXh/svDy8/5
	 g/QNfgeHDmTtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6584E9A02C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146609363.31441.2271555080778130776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9702612bd64a55267aea019d027bf8b9dfe2f7f3bbb5314eefc2da9c8e5c349
Date: Thu, 19 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771466093
