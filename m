Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137BB255E43
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777316254; cv=none; b=mG/GsxKe4ssDi8QwUW6qNKvbx7CGw9ujH6HuuAaUC5neXwKyEwgwDb/7Wy51rutSXLThCce1L6NmY1zxTF7yt5BYrULWvH0HNWc/DWDN0ETJREtc8vSeeeEzKSudbFbla/7zQp37veGLmd5scSmzrqLZIKX6vIpoUyYenzW3z5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777316254; c=relaxed/simple;
	bh=E3IKUUfePSpt+N7w8p5GilzGGkg29u36umDgcHcabDY=;
	h=To:Subject:From:Message-Id:Date; b=qmTsaE3yz0Dz9Yccg4Pn+X3k/KmNSu9AQrb+s9Yd45VWB9/kOkyZKWP7h7Nkk7AGG+QuekiiJkyqnd7O925AWxLeoHBTPhm16ZnzgCDKFtqS3/8C3maH8SDiPPxulk0lNJu82SSnOBkmRIqrGjJGzWnWVYytt1n5scKN71VH1iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eabyl+Oi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eabyl+Oi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B806EC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777316253;
	bh=E3IKUUfePSpt+N7w8p5GilzGGkg29u36umDgcHcabDY=;
	h=To:Subject:From:Date:From;
	b=eabyl+OiAuyrZdDbr9cgDt0gA2WlV98oXkWwIuA4rmoW2zH1Zw7Kv6H5+XicS/kJZ
	 7EsZ5Hnm7rOpsRsZcgbXWdvqPSOS9w2DcmWqQX2qAFH1eiYKLkdic7FTLzSBnsXDR+
	 D+ifH8KPkmSOWSEO/zrRmratdQ8E8mnxcQjT+1ZHI4l6e3FUit7zCb+KE7kOVlQpa2
	 11YxvLbtn9IKl7RaFjQ1qWfqaMnTtvyof0BklQ7zYyP5bfKPMUB09pxDOz3LUaVvfb
	 jTufL1dAFDsawOhm4HM12P7d+yL7R4nOa7JbHGbhVZCABpLr3ZSXUIlCqTLjEVXlV1
	 QypDlfKtti1LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9C9FF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731625368.24661.14530853050943199690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42dd957d715e4150bc179ac8e38b8bb8e8561a8616abf6aeee713b3a2caa39a
Date: Mon, 27 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777316253
