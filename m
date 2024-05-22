Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 728621BF2A
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 23:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716419003; cv=none; b=YejPXAhNEJKiXj2WUx0LPLfi2qNneULEtSPu2Uj/4p3PIK5eUasLx7iPO7mrYjNIRmo/Pey4jCypvBFJr6z1iD/P+kuv1BffKhyE+X5N9ZJaIfNp8eF4MFFdttB/OA0aPeO49AnNwBbQfHU2xXDR66qXJZpyP79Dbxg0iSSWRpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716419003; c=relaxed/simple;
	bh=WqhOqvoEDqjlJ7usbmc+ligMoqxZsgzBKq7UJaeljh8=;
	h=To:Subject:From:Message-Id:Date; b=eh0hp4RPqM2BY65ypOd2QIOfjkvSBc6tPQVMy0tj/kjsxVA2+GLLWBh2OX3SJZxFcbAiYBYpueDpSwiZQevKtnj6xZzruG4WEu3IjyZyCz6QNrLeuw8HD4m0qerf0nErX68YMzfeUV0HjvAuBJ38wrxfkKq6+IEJfw3dO8F9E/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMi+6VN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMi+6VN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E887FC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 23:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716419002;
	bh=WqhOqvoEDqjlJ7usbmc+ligMoqxZsgzBKq7UJaeljh8=;
	h=To:Subject:From:Date:From;
	b=nMi+6VN+Gm3w4HfCvG0eVYcqjyQaOLBXQxMex0iFZXKSTwARAhK/ZoJGvO50PWS0p
	 HfcZUkTsbvcPN8bGOcOGdm+jiB3s25qoNlmS0i6023m+rSxqk5zKx3oPK5syI+hieg
	 tCSMRUEyaftXtmHSmDuaGDVXUdpYohkJu37pnmiYXSI3Rq0uc+wr+i2DojKLuhaQyS
	 DGA1T5LXknkUwOtUSV4T5Ka1poUhIbFINEKEgU1ft+/Z6Uv/M/bYAb23obrKSc43Gu
	 Ysb7M+CYs2eD708wOgRic75DCvhbpSg5XEQrz9mtNwOo7edttVrVPVRX7S7NqyOIDS
	 b8B5wlmIlTbtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD952C25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 23:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171641900281.16421.4817694144982264843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfad105295f538d8b80f6aa86c96153558f296c99dbdf696896888ea8d015176
Date: Wed, 22 May 2024 23:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716419002
