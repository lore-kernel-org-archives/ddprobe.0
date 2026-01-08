Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD7B237180
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767838434; cv=none; b=aqUD+uO/6KFVj/BTlcKf+Ul05yI65moI7rWWfewlWQyGXICL6QBBfRLg4H5FyYIpXr2Em84L+hrgOEApOKEIaZtbmMkSPr52mIA6cj+euzf3hcQ+cneMaYdvpHbI1KjHoodB9NhQ0PVP7fou8EEPnfAN6/g2gB6jI183kvIjdRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767838434; c=relaxed/simple;
	bh=sgkU5xhOsltfR3bwnfO27HFBLCfFO9R3nZypyOiJChE=;
	h=To:Subject:From:Message-Id:Date; b=IC+zbGmpEfEIAegkOOKmk3Ne65riVlOlZBWg+g+2Ka38DeYa1yRE4sF006uUBT9Dnupb7R9I2gSLDvhx2pNQ2eHJ9oxcuLJrZk4HoUR5TGjAs0/DRVt3GouOhipV+ecxdUo3rowxl9qRI2WrLWLCjFnvfrZqOG1Bs5RxGB5Cxxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzAPBG+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzAPBG+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0B8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767838433;
	bh=sgkU5xhOsltfR3bwnfO27HFBLCfFO9R3nZypyOiJChE=;
	h=To:Subject:From:Date:From;
	b=kzAPBG+/RfTobtLIt2Yu+hY/truwGu/0+cjtjXCBbanntAy65ZoO9ibsTlnbKsAEm
	 fsKNx52j0uRISoVn7akDydPnDklafIzSAl08shPK+aFB/74YPc8/pNwLwkqO+Walw8
	 kgQ+hS1BT9Mpxh0SIr99hcbsQCxv0wiC/8or6VDUdOUEqaQ7qFBvBTjqNbRJH+8LX2
	 sNaQ751Um2XN9ke3pPdnqzOtHPgX/PJuRk1JYFb1jY/1zLNcQQooC8vHfr1wT0ILPt
	 9UM6GR2YLL7YdKsggF+gUPWNVMXcjX+JO2rYl0mehCzvCmSBBS8fIxkDChAckpuiwg
	 nKrL8cov+8bSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F502D14891
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783843358.4710.12960939211454081598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1dc5a83583b2886d47e72e5d6dd8762ef3a74ba7d1d453069cba31bbc7e6bc3
Date: Thu, 08 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767838433
