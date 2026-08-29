Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583B210F1
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787969434; cv=none; b=FT9nwMZK820YNOMb81wP9D31UW9B5k01/kCKwO/Ny6ukVLE686t0FgcRPDMWdhyOOCqhwoeKOnF2cHYj4JXc3Mj6Lc+Dbq/WYxiM6z/qq3n6SCGP/pfTviDgohvgZ3o24vyyZ/j7IUd4qqGrvVit/+94e2ffyF62YE0drEqw8dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787969434; c=relaxed/simple;
	bh=uNAX0iATOXoocqGY4GJkWiy9fBQCSeeZFLeZKjafpAs=;
	h=To:Subject:From:Message-Id:Date; b=rWeNoOkSLF+8yT3IkUTHclD2QX352aqDtg6NrVBwfa68Ag9Hreg0F9xWK2hByUzai8esMUlHXNuWUeyel3OOXmU00KR1wQHV35VGUVwR5o3YuDLcb4kY4G/xCD8yrHFrFrOYMpHN9wPY+qfYc5BTwUYUV03mFmglpHcBSmH90HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpbKwMF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpbKwMF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B59C19425
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787969433;
	bh=uNAX0iATOXoocqGY4GJkWiy9fBQCSeeZFLeZKjafpAs=;
	h=To:Subject:From:Date:From;
	b=KpbKwMF7zBaNal4y2FQ0SLpFwdGSaTfveaHrh5ZDtqLJYx+s9ALs6y9IdnxZuEWoo
	 D4m5259f7ahP8OIbUVigxndkH5Pu5/U+6B07PQBBBXvvu8pWrLxGDyPIo8+dLXzKIU
	 2q6QnCJqfX+ZVa9gFGc+7j8K9viXcxi4Krm8ZH1JG1aoFeN+IVQKXsAOIS5+7Ia6lI
	 izQr22F54/FafHLly0jf4e70Gb/hFDIYCle2/dJZO86PtFIikDbbMq0KFwk2bkGQTQ
	 VPu18fiCpc9k0ltOA68kgaZQm0H2hOm2e+u7ze4iahJ30fX5mML2EoVw8VJEViXBD+
	 FPYi37VpqV67w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC74C61DB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796943368.29738.15236005108459209722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19018b0865d783a70a28ed89d0f2aae066a638290fffd82a7927962407412108
Date: Sat, 29 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787969433
