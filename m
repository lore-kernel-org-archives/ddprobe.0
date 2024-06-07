Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCF415748C
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717757843; cv=none; b=Fj4D4NZxXdtjX1c3cBkKsStJCHzArSqOP4xV3BL25R2qhI8lY7OrNbE9AvR6gAwfBI8OX0prR7GcdC/s2o2U7mGtMCv4d61Ib5Y0og3QlOiR9e6qOoEi5vlupnN8Y2r6kEajHifIG/OUzj83xVYenyku7DUsrzQ+7nlrkNkZvPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717757843; c=relaxed/simple;
	bh=20c56bi6Gw0cqhlPQeJkTfa2DklCauKjLP/FCYQFIwI=;
	h=To:Subject:From:Message-Id:Date; b=tIlJYCVDCIxeHLn21C0aiOtu44L+UQGdQRYFkTjNJKesaKUA1TodX+/pDUCL/OOP0/Z9R2CaQhZQPsaMWfOQrHflc9ebBY5fVgrRtWsnFIX+H+UpFOIyYqimD3XQVTv7wuc/ijAjHTMjnilp82TBto3XPE8+CSbY9n5wy0pk+2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhtljD5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhtljD5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 002E0C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717757843;
	bh=20c56bi6Gw0cqhlPQeJkTfa2DklCauKjLP/FCYQFIwI=;
	h=To:Subject:From:Date:From;
	b=PhtljD5YWQ/tmE5zMpPp3mDzJYyOGLRYW8pJa8Bqrbly5mo8s4bePt9T21zhG2mrD
	 ppGsEWtsGk0AOaKBWLMPdh21OdNusCBNGA4AGVgHh+c/S09WR4gUWAkH1zrGvJTScO
	 lUWGRLOOtT9PlODvtxei7TQoiRMDQs71RPV44UaIHcIHDMhYQ6zDCjMrnED3DQSxkG
	 VOMFzZ6PMm/tMh0QyGZo5e+9wowa3p0n9Q1Q39fjTddS1wrVnwKEKvoEzYcGzPXBDr
	 GR2Nzr6TKQH2cP9Egc6fIvuAB/MLjVjgWGf69Fo7i1+W7ZhYBk7qyNc9S3Pon8OU8y
	 wRqV0s5uB9GzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D87F6C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775784287.18715.7784594791654846524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4284ebae6de877d08da752b563859dd46d5d626e4bc5d9b0ffb53ed21939c8d
Date: Fri, 07 Jun 2024 10:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717757842
