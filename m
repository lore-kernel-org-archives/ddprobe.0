Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049121B142D
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766477634; cv=none; b=MvkdulSBfv+0No/2jDD7yUeyQE5Yni6bOV6sDUoAehAXULcL+HbGLQxiI++AUqDCAAisS21KQzEt+7669mZoU3GuIYfGiQ3IbqVVkvLlfN4ju/FgEnRWRYyNSDw+rRVQZXdkC9TUaTZVu4OGee0SjNimemKUEaYtbppWxlsMZtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766477634; c=relaxed/simple;
	bh=ONDYbIOohmT+5xDrDgNHSg+deEnH+tTEZkuPtvEvXeY=;
	h=To:Subject:From:Message-Id:Date; b=Oit3WVEED97y7X2iiMexx1p2WFjRAC8p51Ih3KzCZ2+i+4hpFeMCqylgh3oeDLBSWHVPcQf65hAEQ/rJVo88/6vNLVhq610Q34Zu5HPTwOzg4OgZWULpLYfELStV0eD7v5vx5VAJL0/XAOWfKrt/43WVIr9kWsGvStdDpfS+DHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcyMlIr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcyMlIr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62C1C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766477633;
	bh=ONDYbIOohmT+5xDrDgNHSg+deEnH+tTEZkuPtvEvXeY=;
	h=To:Subject:From:Date:From;
	b=PcyMlIr0uLLri/iUI2Od1/As2PQJmt03pVCG4ifHdqjlMWQr2Q5lJi6JLVv3RNlno
	 2pwgBandjXi6ZKbYx6T2/O4c26H1DbZW1CDPao0uGJeFWHeRo3jX2PFCcdUMQImMAH
	 2qTbzPYa21KCOzq+KhhugrCajuV+myjJlAzFo4y+kOdaWMvQJyIxK0BB/B8zMCTDhp
	 5RpsZFnRV64OoYuD3ZXBLXHb4G3w6gkySKcT4s5rl2pBPriRTQ/46g5J6rj9FgVNJn
	 9TWG4Ed3BPp+/6Q4vk3YZqTH4ldoWn6UeiXMOdAEXreay6DnfeknidJwDGeqhtgvm6
	 vIqwU1l+hmImw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953F8E6F069
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647763357.8188.8264663462808494908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29f7cd0aa44b2eff76734345b6f1fd200ad06eb6888d6c4fc79094eca894f73
Date: Tue, 23 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766477633
