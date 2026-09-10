Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49181368D7E
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789012234; cv=none; b=IaiMnU6/chrjZBUNdSMnBOFRcD8Af5by+nT3twfm4NOMBMuADMyTz8b8HNZmuiY13qD3n7wl46Y7IcQxkJa286qwjJhrUhlQnEEGMIdPT4PC8a77MK/CwPph48qY/yda+/iIdZYqZfi5oNZ24Yq+NKwTnSjbIt1tnbrtssGxRyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789012234; c=relaxed/simple;
	bh=nZFpugRbo1XRpZqZzbubxHvGW2Nx++bFk9vmU8arM/0=;
	h=To:Subject:From:Message-Id:Date; b=DcjizVEzFbZcxAkQWcpuQQS3jGNZpis23XYV5X0HQhKRlVsFiIe+Kbh5Ja3+/XsqXdNgZOqU6zj6ODAgMGibjPJcK3NOMsJUeyewdOmCiHM9Ur1G4zzGlsoP9hGcfLhJ++skhS7YjIFQc+87PaDX9r9fxEpJgEXQi/QQzpZqokk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIta6fyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIta6fyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFACC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789012233;
	bh=nZFpugRbo1XRpZqZzbubxHvGW2Nx++bFk9vmU8arM/0=;
	h=To:Subject:From:Date:From;
	b=eIta6fyRQyGdJEMG4gCmJHMWTSIbxlLnaWk4iwE7peuSlKKDQ6UszOfGQuFkpj/ok
	 aaI0XgwOYDLMWRdPPZR3zq2WLSFFD+HfX5uCSbv31hiCABcpnHPmOw2wmlJs8hVXnF
	 niwXT69LaIooDE6pnodizSr71yFdqvtSED+KUeNnbRgUEoeLJgyVIYm6PMmOrG1bTq
	 M9WW9DP7lbrYBnmXI4o3prXxbJLOapUx81AsuyJqNQgX+Lk4uWykf+ZTrzx8ZWDA1t
	 Dhz7iuqVgCODm7MxVe+by5CrUCXKHI0HIPv3ov8peNjZFyBFGmTwhbvIHcyfkCw2oJ
	 4iTAHHhyOlTSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC206C79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901223369.31272.5877227804367060348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc2915dae8b7d30041fbb798fe8c945d46b68aae48204f4508a8ea63bdb17e7
Date: Thu, 10 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789012233
