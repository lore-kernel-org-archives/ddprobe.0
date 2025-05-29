Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275441E521
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748523595; cv=none; b=pqKgKf7K/v/1U15adoxqGvddSwgFkgbkI3GGKGaPCnIC524H4Cr0MSwyw5aM+j6h/008tZmdv91QR1GkKf+9QvUwwc+qyXZ/aVv0kEZGC5g7XvjjzyzCSOewCaPTk4eRLRg8whbih2Vsb2DGeeCHKGzYvjIYddifP0BErERdv+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748523595; c=relaxed/simple;
	bh=uWRFQp3/vEDmvDDf82bVLNy9GqGXyNv29SVoA8VSUd8=;
	h=To:Subject:From:Message-Id:Date; b=fRZS3aHnnEKxxRQrAzcnFsst8Q57z1vHBfMtl1YbtZocQBsBXL+l79xv9RY86P6RtLuPNTncb7w/tAbxH6Ycft6ipRE+e2aLRocXA0JA4nhjEDncW93u9ug99j3xzL+rbjh+1mMjFQsL71vhlyM/7St4+eUL/F1vYUnvv0T+Uco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmZ4Cn4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmZ4Cn4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F14C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748523593;
	bh=uWRFQp3/vEDmvDDf82bVLNy9GqGXyNv29SVoA8VSUd8=;
	h=To:Subject:From:Date:From;
	b=rmZ4Cn4K737A93vsW6nliwUcAToa2Qs2hIATL9alph+Rt2STXSh8lSZKj4VY/TGBf
	 1YKFgIwX1/0aBX2O4u4VSLffiFMKviykiIkhRXqX8QCESFMfNVBnbU90MUc5wRLMQ8
	 CxJrNSstIy3I22hrljeFPjJcJxJpe8Fw3taegez7DKFJ4zOlcBt+cgy8YoIcQJhLAS
	 9YxTTsi3Xb2eF7dplDeJmsQtfX85a2dxuU14gFaYt6+h57lm7PpU83h9Y/iEfEuMQz
	 UkoijbY/AukcPd3WBMRSFYf95RAxgcFpxXN58msQPKaJCzh+sFwWeVAGawhYZpjJ2T
	 PILGeVOI65L1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F000C5B549
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174852359357.20652.7187217733692700982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd0efeb97878197410465f734188595923dfb970216559374005edec7b81a44
Date: Thu, 29 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748523593
