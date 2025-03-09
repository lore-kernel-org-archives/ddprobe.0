Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524A68F6B
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741540734; cv=none; b=kurBjS2R3/7pehwWYx5VGL4DGhJAraFF4OCVCa8RBM0SX5qdlkhl8zd65ueet33EKITEJFU7fvvkx2onQ5l4HS6l5Pzsxx1Jv0CwWCEnA23aHLQVSIr/kNWVGZ39qN0pj4aI5MJr4cHXSez+Dx12jtkWSGzr92g2eEUZpFON7uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741540734; c=relaxed/simple;
	bh=1S5kBx3pq/OcePaHHABznlZyl0ztKkrBNOkHSyRxBSU=;
	h=To:Subject:From:Message-Id:Date; b=eRW7VHWhJGqWvAAEE/xdg1YnB1/CCtV6O4xNDW44W5onbqRedz4xZrJMvpzhAKVzPEfzm4lUP74MnnUmg0rdAA/rEx0vWVlBd56hy7vfdvXnxh6Zl91Wre3tJ0NOeAICCWLoMO6sxRgTJAnitUXXn64Bh3InnuadJb/tV8kwnU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTQnWtqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTQnWtqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF690C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741540733;
	bh=1S5kBx3pq/OcePaHHABznlZyl0ztKkrBNOkHSyRxBSU=;
	h=To:Subject:From:Date:From;
	b=gTQnWtqZo6SddgEUs0E+XZtLrRTlAEGkMVhs6NoiE/82AZHuxl4UHhdZY4ZsU4Uhr
	 OrSTrSUxZPn1gQbeutGRgGDiY1ozkk9S65G28TYf8q7wlxYuegOYTvWH4rwwiXbPku
	 CLaU0/tTYciMO4ONZ1m0kjt/0fHCGa/o9rvDogwPzX9//IVMeNuRZdZde8Jr6pmxDh
	 CgomK2oW5joONP11LIDb/ACD+vbb/qUYyo18T+HVzOzUvbORKgoJniLRDcbF7d0SDQ
	 a8wzmqOcUva2SbiD7hC5IZtNqFaqJpuQrIJISpw+WHo3DcpwFo50/nuwn9nGvNosG6
	 OZ/9ghoKQa0hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5952C28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 17:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174154073362.22589.12324940505030316117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0dbf639d5e01512975ff981360a5ee778d2d17efca4db36c788dd12f868121a
Date: Sun, 09 Mar 2025 17:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741540733
