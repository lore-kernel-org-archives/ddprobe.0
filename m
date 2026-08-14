Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6962110E
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786711234; cv=none; b=reolfKrTC++3Ft/HZsdAC0g9mZ5LXxiMNFW7LFgNWzmfpwJB6niqr3GZ5OmFbdSpQo33KLpL30NDZyOFWg9D2ZM4z6t3309ZJaIFdmtbYXBumjDm4cTXRyBxQN1haDpc8n28g9sCsU50Jgy4ECSDHLgjhNF3AUTycD0bJ/JGoWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786711234; c=relaxed/simple;
	bh=hZdwVRGqxrUaLwVRFydCB+VtVELN5DLOj9qF1Izu34A=;
	h=To:Subject:From:Message-Id:Date; b=M9o7wSFKUXqrtX+I99aHyOy+rmqSvjaxhIMpCsatU/1yaiBkwkljs8L4dBJujyiGiiF4sUWJXzvEnXOyJ95mkmsUEJ0PTTnBGx+vGd0Ait7K/zWJ7JzPyKBlSkSho76Z80n6jqSh+VLvwCpxnCsGVVCGOEnKwmsenwfO/ZPlAfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACxJlIyJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACxJlIyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA892C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786711233;
	bh=hZdwVRGqxrUaLwVRFydCB+VtVELN5DLOj9qF1Izu34A=;
	h=To:Subject:From:Date:From;
	b=ACxJlIyJ2UY8EQw7jD1Zs/HFsrHOTMKh3Z8ey4/8FK6OAljQ3pXknHaoLqI82mB1D
	 cbh07WZwvJ7DsLHhPpqv2rC8D+XaH7ACMAzGR8cQdEL3Xyd8smdjsIngl5ZCcm71ef
	 ZzBIoDt6tvt1t65/9eA7nsu4nkq0uyHbgyuFLmf07/6QwbOag1PW7B/8qMoe4HEUpp
	 bUtK8evm+mr7qzoFGUd3H4Z9DlAQG7xjt0jM4WRC3gCK2RxykZGQxuuCW07Bn29lVG
	 I7JmrFiip+KisdaNsAqDgDGfoRLFRSW4CRnzPI1Nh0AlF6bxosCWSR4sU4u0uAUBkg
	 sqgLiG/Vlj76w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A59C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671123368.3503.8139989796205383755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1863a2c9a18f139a8502a96130acf4b2547215c9d0037f83dfb4f849573f606e
Date: Fri, 14 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786711233
