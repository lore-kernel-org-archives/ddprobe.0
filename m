Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF0A361DB8
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782368854; cv=none; b=Y5eMjoIG4SJli9u2m1iZWjdI2ZIzj/QzhJLJSPflandwnqzInzMt4Lh6WRM8Zenssa8w9AfKNdRqlKNLoUhkt0+SVviiG+sP7o9sjXjohP6Wxa6rzi4qX+L7IUDzwg/ErL4rD1UBmEuYQ6V0qKq/2RtQORM4ABAhx3vsUSG8quQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782368854; c=relaxed/simple;
	bh=NjNJ67F+feu2ZZH4M+fLNTW0/j8gm9wCmv7m55i/2io=;
	h=To:Subject:From:Message-Id:Date; b=pGOOkK9wSlK9imYuXiHnxSTYUFG+I2HSnu8NeaCAtu7hkpjGAUzOB3i43nxPEdyFFERUnt+v3J7CSvSkQJqg2ascyufpdBlZ0W+7/9ixnsTey5MqsY1K9ZP6rUKDrSURZBKwQdP41EyYS7P/NeiexAmk7pHCm2fxQx4dqqV3/xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJZxm6Sx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJZxm6Sx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC50BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782368853;
	bh=NjNJ67F+feu2ZZH4M+fLNTW0/j8gm9wCmv7m55i/2io=;
	h=To:Subject:From:Date:From;
	b=HJZxm6SxeOqvSsNhPzpkaLmIsfjlYJG7NMxeNtfAA1d2CKpM/nPOOqnBIw7eeLcOW
	 N3cumrUw2xekeeHl72lmXy7jX+aTCa/ZwtlR/2EOyU5EGdYcgh6NALzACOIZX7aKp3
	 ZaG+00LnioFdHyJG4WdSxGS+CRFYEdjVExILw6Ql+dys1lHzcK6nDXlNRGZrU3nEtA
	 vDPYVzjJWRTq8By27BuSUkNIQYxRypb4qLfO7NIsNJTgVyPdXE0Y7pREh00bm7q0H7
	 Yo21HKvCReTqrj+MFjHLx+baYQFJYNIuv9IRm+SnX4HHlLxvJCPXbn5yXcwVmrt6mZ
	 ka2ZTHe7fa7Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCC3CDB466
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236885370.16211.4408633601896824609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6066208af0241a4e3b55e97c6fbb078f90b6e5ef80d5b569cbd8c82701fa9c
Date: Thu, 25 Jun 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782368853
