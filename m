Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D4C1C4A10
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746604194; cv=none; b=NWPfzog3JfZzOkIeJnjbNi7UYu4GYISy/sKzKWMd8aoMBqJxT4GdecuRICUjXs14Ji2lvh1oKmlEsxZFsr6A3E+ec/TAUQvhnhdiu4FuQZMJWcucLn4xq/ntblk7UvPYRilfYGRkbmmhLG6EP2Y5N47j229X6BBlqtEMDj/ThnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746604194; c=relaxed/simple;
	bh=vSTzCUzkoP4aLyU2oZwkmqN8m/MbS6CV6NREOTEQZnQ=;
	h=To:Subject:From:Message-Id:Date; b=AQfG3sbn0NGZBsFq9CCzhXpJUnphFYvwrDJhR+sKemScB6CBFxUGs/PyywayRVqT3HZi8rolhxR/KhxkKqNBToOhqcf5kcHQcKFg8q/U8KPDSGOcu2v1azeILGp+VAG50exKnm4vt9aLa37Mrjy0NEfwYPV+cxdPCkx99bUyjdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nX2Os1HV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nX2Os1HV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0BFC4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746604193;
	bh=vSTzCUzkoP4aLyU2oZwkmqN8m/MbS6CV6NREOTEQZnQ=;
	h=To:Subject:From:Date:From;
	b=nX2Os1HViyyuJw/JjzpHLJ0XhJaX388HI2kEyz4DQaqlt6RzhEp8r++YEW6u3SbUM
	 0InBrskz4qTP6Kb6O6IAUZIrzEJ1DvZQ/tHv8yE9j2SCok6VGxyrLTjvHetsgx9fWd
	 n0hrfqO6BRd77z0vGXfuR+baLp3hzqq/5O7r2Ih2E0eSQrYBdytsrYgK1Wk9kq0vVw
	 hmEAR6VlFBMsRtxFyf4DBEcZ0N39qqgqGm8l5TPTAYxtVhAW2BM0uG5aIIiHtSvy/b
	 PQ2X8IQv1GOlRqTPerTfr8pWv8i5Szdx1bOQjJrpsJDpOOkzeu3IQhlRj+/msxOKBv
	 zrwUbs5kiQ1fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED39C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660419357.13402.11032483315485161042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ccdacdce2fa8b1a1d84a0c88a12de101e233123dff4a4516bb4a0586bc1248
Date: Wed, 07 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746604193
