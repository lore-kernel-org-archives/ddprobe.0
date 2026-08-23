Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5996C217723
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787460034; cv=none; b=KMtcazjdU+aYuB2BXNvjMsaiM1caWC36/JAIMGkIIbJmx57f8HV1ubbSlwu6xGDzKEzfI5Q7LZBXtZB9UjGNY678hiGeiS2Z/f/LUR1beoFrAKhr5C27/M6sInPzlBLCmYzmHLtK+Bs1guM+v5nPimacdIybgHzBoqmmp0IQ9yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787460034; c=relaxed/simple;
	bh=dfjAD6wMWhloYVkbT9T3Q6zUoyn3Qg/rhi0IjKhiq/g=;
	h=To:Subject:From:Message-Id:Date; b=UMEZviMatZsUFsshMudlzYejsU0gyIQFuhp+HIqAzurrMfy67iLtV2cT5NyHhVfgl1oP9TNh7veXFOVTwLGDuycwiiN/zX9apBYCK0uvmsMboG/kPIyfPijgcacLNbjrLnQquN64fe7Ij9CB4SrrSyVCbc1tdnqsLEx6hSaZs5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piCVYPhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piCVYPhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E160DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787460033;
	bh=dfjAD6wMWhloYVkbT9T3Q6zUoyn3Qg/rhi0IjKhiq/g=;
	h=To:Subject:From:Date:From;
	b=piCVYPhx4DiunW1hWXMvdeaclylrZSE9YBKgcsDNhHLCHR/85IgVKi54znoNfbR+W
	 cr0DlfrvFSoe9le3dH1ML7HMbsNjKT04Wqk2NOljbtd2mNXC54kqB3i7y2GxozGz1V
	 f1WQdeFl4RZ2ly0NGWwDUzmpbHDHoSrkRIA0qKlvWMa6NaW+lBOOcDW++iNhxcOVfk
	 KfClnHrIyIGX1EpBu17gG3ru757uFzZQfZxGXsW8A3JbXlL4n8DRMMRscPhL5YZSEB
	 X4lMs1W/Cohj+sgthWFM7UQyjkea89K+1L2yPd3muMXuROrFq7rmhMxT4eLNVCtE6f
	 LvYxBpT4x4/XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B622EC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746003371.13173.6471230414946540910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16de144c5ebd7dde7064e2f9cb6762b22584edd16c2f7abfad99f157c12d53d5
Date: Sun, 23 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787460033
