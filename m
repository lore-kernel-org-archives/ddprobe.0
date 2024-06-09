Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E53A44369
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 14:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717944443; cv=none; b=NkQwUa9+u8xkslMd455e7B5FS6jUY/6Ptt5F6Xf0g1pRCS7ahGMf9U7Zigk2e/7TB0W+WiVcLgFimwNSGeqhQyabgY78wcalHrP3q9Kna0jYnK/CJnqDcN/e1SCeckY92RBud1mOW78fX3gdZej66ZynaMJtExADpKMedHmITQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717944443; c=relaxed/simple;
	bh=SCWVZ8rfZk44lhusy0nuVx6bZWjoHp9zoBamps26f2Q=;
	h=To:Subject:From:Message-Id:Date; b=RBSwjpwjMaFKpO3p4q9IAxUogRyQIw6hy0Ove9Dk2dXf6IBnrdz7OHBzROLLG5+3WyGothhtQIokf9JI1uOHUkyT4lOztbrkS26dK/h5tRjLJ6ANGSRXMpKaZNBu3RjG1WyZOPj1TcRHfKIcTl210pRugwb8L9tGuC8PgoB6iYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoSvC8gn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoSvC8gn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCED4C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 14:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717944442;
	bh=SCWVZ8rfZk44lhusy0nuVx6bZWjoHp9zoBamps26f2Q=;
	h=To:Subject:From:Date:From;
	b=LoSvC8gncCdcEeZo51/RDg/F1cCKktgiBK83Tes1e0Mrs9cLbBzfKRVFva307LVGT
	 OHGiodF06hgQSqvBOCco6zrwCCLuStutJPgrUJISa/ZtBamW33hEZTdmxqwd7rtrfV
	 LGus9wlJU6n5ZZfdG1jNNmCgDRMMPPFk2tOOjliUODIXrDP6DWmU3Ecq8+ofWBLB92
	 UbNPTOac9d5G4y7dtpKH7v024dgTPh7Rc7FF6/jQ8syhCPXs+YqF+1m3Erb1RR5Itu
	 6nSpFrb2KDwPdy02gZJxKb+E4wUNudJXuRhTdCKfwQKQzKAK33K/52XyLuT3ITcwZm
	 S32jPQwTq4FIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB6CC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 14:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171794444279.20630.12842796711043420391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9cc2618ec3ea3ce9ce15f2d16b571ad1bdc322ea91f75391849fd4f578fd21c
Date: Sun, 09 Jun 2024 14:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717944442
