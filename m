Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0F51DE4FE
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 23:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740784735; cv=none; b=hJ1wS9PznzRKzjsG1V+a930S9YWkck21U1AnF3VMHNJLhZSmXvdtFhK81fJsILDojy8ARGUAVjHwNO5uRK1Hg8hvwNpLqGXzz6qQAdoTgeDe8lZTjrZ5xORKqrasVap2JsAgAFdpXSbzzb7D1J41UlqYB+TEoAQxM+zYdAv/1WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740784735; c=relaxed/simple;
	bh=Hxcl7iW+mp+c0qtfeC5LkHIzql0czRiaGkVxE35SoCE=;
	h=To:Subject:From:Message-Id:Date; b=bwS1mUxjKUJXFl5r1LDBZc7XGQ7sZ6ySy9vBnEJNPTwqPXS1ijCNFeCBlla207TQvTpRIBKXT+CQSOjAysZmbEp4+R+w0iUTlE7L2VpXBR4xeJP0B8QuxWpf/66CUxnwWzAFNNf4Rd1RYtO+raqrVd2/QiLC6MSWXmFMlSqayPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ET//jEvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ET//jEvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECE5C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 23:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740784733;
	bh=Hxcl7iW+mp+c0qtfeC5LkHIzql0czRiaGkVxE35SoCE=;
	h=To:Subject:From:Date:From;
	b=ET//jEvFCJq2Oj2CGmc2BgrTPqgg4B+bDxvgVYX9rI/AzSDlQC3Nb0zIMQKk8dv29
	 JEFRrYUNpvPvKaWfDr7G9PYgQv5cpdR72Q7n+mfr6vI7n7qR2jvSBQzB6czNpVQvuZ
	 9ZHfshipDoZoOh+ai4oj+jL66xw785h5bWcg0PkHTwlxr4Gm2F9lszccki74+IYsmw
	 f/Gu9VbS/4AHMS42dWPafWJNxa9sJfbZuwe+m11FmBIj0hmgUm3iQ/buBZPACZlxXE
	 DvsoKqLzqcYFYNUpoiwfJbBTcFvQUCygyxBwYRw+MtcQ5geypPRqut64pNXnWSbhIx
	 84dEi6DunMQOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0CAC282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 23:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174078473361.25211.1469106513296524380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661f9b6d38ab442bf112bfa8eb8a623db84b3947ef35149aec72ddc728fe58bf
Date: Fri, 28 Feb 2025 23:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740784733
