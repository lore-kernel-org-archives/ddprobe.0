Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F961C01
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720329383; cv=none; b=REyND0EdUsncLdjNy4L7VTksmfWRe67nkEQUwK0rjPOxJi+idj1aKkeltluZhoXcoDMqbSrK0w1/mw5gkRz3D2gk/1S3VJiSxwU0Uki6bXgj7tW242mY+aNDifO4xAkG3p/DDkPaHq3Hyf66IubsIrMxa9A9IXhhnyq1V4p2x+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720329383; c=relaxed/simple;
	bh=9PNMEaxfyO4gMSdtdz+aRhu3P1KgYASVMrREOLLjxyE=;
	h=To:Subject:From:Message-Id:Date; b=qFWO3rzm2tlXrdSo4NXlHzDSHEcWqmsVYpFRQCKydwFnNGnkQUWPXtgD3A7P5oRoGJDwF9scacJykadng0s+572M8o30NIolGkUZT6SffmsN4iNfbXmfSObCuljr+h+bI8OsJuhagJB5oGmUjB4Twz7qvo8K5pJMyHpmt2peEXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xwq2F2+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xwq2F2+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E636BC32781
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720329382;
	bh=9PNMEaxfyO4gMSdtdz+aRhu3P1KgYASVMrREOLLjxyE=;
	h=To:Subject:From:Date:From;
	b=Xwq2F2+8SFaeQYcmQ4iTGex1NrukYdLYDTbhSV5wzDryjYVGnMNpuW1tRBeH1F1pA
	 b/XWszgUl4H+AAUbRUXz3y9J6BaHFdPIdei0IyElkZ4Vb5jktUTHiHx/IeHgRXK/ov
	 Tl/ipmMNuUr2U0vBFBM6YBFe8ZA9vsdU6aRaDSNz6iDAt5OUAPg8ODX4xN0Kd19z5E
	 QKWl73gOBeJz7zxH7l77jy1UFlpgNUKe5KMu0LhFyi4Oq6f+c8Ue9HB+1Lc7M4Cga1
	 XTlb2Jib1/7dnFMXQmPVr4sNyf6R7CrIMM3118eG6VAvsnuz9hu0L6WYvESkX5Hon5
	 LYaH/ad8EIecA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E96C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 05:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172032938282.27424.18242647157478825520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cdd7d1bd12dce4a78a7cac199ad8694d7be006793ed075b4c8ff4313ec1d272
Date: Sun, 07 Jul 2024 05:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720329382
