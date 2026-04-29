Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B12B2F1FDF
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777436254; cv=none; b=LLq+bb0b6rurUtZqlsTFnxVR35nQP3RlzCMUFJZLioCFoiEMvF1zMplJfOMiZ3wunTpM16BmNmWC10Q5ntV/3eDpDTyOm4Ss13sIstg73uORCxY87bw9Q5Gcls+i+rtByYbRgYMJUuWreRPr4vHNtLvGpjyYUMWr6xenUlZ8P+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777436254; c=relaxed/simple;
	bh=enU6aNmXodDX2gKwazA8B5vKX6zsmeW0uNUBe6nVbPQ=;
	h=To:Subject:From:Message-Id:Date; b=A+EMSncApEUJ6vdpnRRyV0tUOt2Z8jyYvbCcsRAPfSBcLrVm3htl5cMZBd5d75wEZDnk2pW+8YJGxgCHthWhv0sbcbkWcFBIjltAmYIJobtSBjl697YqRR80lAsmTEF/b/jUxhdLlu7+xodnbfoEFza7ejZAQYEt7jfkGcYbssM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeMAz/gs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeMAz/gs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD70AC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777436253;
	bh=enU6aNmXodDX2gKwazA8B5vKX6zsmeW0uNUBe6nVbPQ=;
	h=To:Subject:From:Date:From;
	b=WeMAz/gsKW4Vq42YbisBuk4x1w8RlJS9+9WzoN0OegK0ZmuBVIH6H+jOYkGLb/rzq
	 gYm3xU+Tg0syzvRwEJVboejJjN7RhBWRSbypMJxc3HIDdWzvVtIS8bNb2l90wBO4yo
	 RK5pcZCuH5hMhoEkn9kZW16R9E9FRKVgUvpiwIWBwS5yRULGPYl1DNdgqoXGvFy7dY
	 FcrAqORSuRJbPj7gV+x5razp5HpnS3B5asN+oPIZotF5bjnMjcr2MvN6p4ZpRA8WEL
	 ViXIJNmu5koqQGVZ9PGDKSHdch49NQEE7yaCrHykMPXHeTHc1JztX31eGSakqcKaZI
	 MtwD/29qd65SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC462FF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743625369.12297.8786205800627575398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e4e85ee15a0b01176ac1ba9163d49ef4b75caf37a28a0cb4b1f9a9b2cbe091e
Date: Wed, 29 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777436253
