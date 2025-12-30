Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FB113957E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767092034; cv=none; b=JTWRipe36GZYjRd03x2z1/HOEuiBQHvWNIHqU2mXzVMcWo5unLfx0aczm/EOcpMLP5As0Jgun1VJHwSMH2ogOJLkNBjp78bBS5Z8AE2gMwxILwL0S2byMMRRBx/KI2oJT5xfAf/eR/d1iS38VKM4zDKt8zGLjO309iPTP0JOjio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767092034; c=relaxed/simple;
	bh=JNXqkgb/BLn9VGhuGDZ5z0e4fBDAW2BCVXoxKj3i2DM=;
	h=To:Subject:From:Message-Id:Date; b=aK7LKOnb2o2hPiU1aoQDoR9O2S6k2CXfSn0MTf9LcM7BiQHcN3vwkk6wv6oZAD6y0Q50Kj2J+Sb6ckiOJEQ1zJdt2lk9xa+E1G7HhIpgWYsp+vTqB4jx6XRjZ7QsbKlPN7o5lR8+7zjNCNDqUIm76dhmRm1GMB/XPhe6VUJ3ugc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiHOHETP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiHOHETP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED81C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767092033;
	bh=JNXqkgb/BLn9VGhuGDZ5z0e4fBDAW2BCVXoxKj3i2DM=;
	h=To:Subject:From:Date:From;
	b=BiHOHETPDs0LeqOUdhCGqfFuJ2iVlGkmHbN3ioKYlphNY1TXK1JfC5H3DyMn99Yrb
	 zZXokhnUDGyRRy91lvBSz2zsME80ZwlZlrqK7pBgExv9TvlSDJV0JO8COf1o/zIdz3
	 mdgayphOXuUiG909MRYjhq96er9pJ8Rit4tDlKl9WiyT0pwJ/i0q86N7Ak/REUT9u3
	 9mbEDe44oWvDjTP9fMbUWp67m1xB7Gr72qz50ZTrW3JWOc6IqUBaZnAz0Gh/zlHyZq
	 i6iX6a1TNi7BEOKFNDnfcbr1/qjExuYcHuFWUn1bFdBqR+hUodubz+VReucz501Ufd
	 QW1mp3mKSh2VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C3E95A72
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709203357.7973.2812473271192282210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77539f73c4a8b70e7ed5d29ce48e73b6040349ca6c73734c6d4dea12d6ec4e39
Date: Tue, 30 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767092033
