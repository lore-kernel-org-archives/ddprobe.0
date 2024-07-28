Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7E66FBF
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722149754; cv=none; b=SciS7ICfK1l+tJuRebg6Z5WKXhK+2xL32aeUbgxcUHB/HGC+dFyCVt57YMnHh4hzVBHYAldsVQPik8BmwsawRPRNrBJyrQ93HD8u4hLbqF+4tuc4VDjflorBrEx2bv0geRu59119xF1C4KQauyVTqhCCd5NQxNwHsR7QyHi2jqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722149754; c=relaxed/simple;
	bh=7Nm8LJaS+D+I8qosz4KXMp1SGk+VN+HqNQ5fkDbsldo=;
	h=To:Subject:From:Message-Id:Date; b=bihtfJdTBS6vtCHPoSHQsbTPX3ISkT8L9ssKV5To3kieTT2grXVbAbz2Gwd+VN/Q3PWAmIJF/bxyxg+sVhB5wBE8j5Ya7D+KDjg8KPYpNhH9sfRaU0W4ujKYBZwhvii76CSdAYYIg6zkPyBJD5pzzAPQxsRy18gAaygPy2Pbr54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLxa79Zn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLxa79Zn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CF9C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722149753;
	bh=7Nm8LJaS+D+I8qosz4KXMp1SGk+VN+HqNQ5fkDbsldo=;
	h=To:Subject:From:Date:From;
	b=LLxa79ZninxKUhTNpllZykJ/Qxr2/jxuUEg6lagV+8l7hV//RauphJoXepxRTfosd
	 zlQhV2EPeGQcXs+rIA/CFnkkZ2RHO95hiQ6G6CAk0eGmXqGxlB43WI7+M8FCgFOnq4
	 8obg7KWP7yoEyy87VOqcBLxIWGpyIhtlAMaDgc1buxbrruC8LEYk1bW6LYEBJhppti
	 Mj+ym0/lelrKXnkbbmL2Gb5e9DZOxw8e3Q3Lxtqq+BpswZrdSo+PGTo0c6odbPbgEE
	 Y88p2EFZ3YnhYpCqxGjT1lQGqIr26GPTLDZ0PLhnMELiRthxE4EZTd7ZQW/fsSPhsh
	 CUPJmm/APK1+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4015C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172214975363.313.18088501666041936217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7dd12d27bd33782013363c6ea118235d460711acfa0765f5a9b0c456174469
Date: Sun, 28 Jul 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722149753
