Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F089F482F2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750496994; cv=none; b=CbKHEocH1IYT3BLdO2daAKxtiC3cghjcpNVzP+79G9uHnk6dJbupg+QNy9fhabMo83M36WILSNSMpRmJeWHju4a+MV4jzQOWyRAcRwMu3OkzMO4DLI3RNFxBGMIyS6Afw2mqFC2WKl251cOdNE1yPTVEbzG1vP5KmeuFK3a49c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750496994; c=relaxed/simple;
	bh=Et4JUWN0T0BuwRyudxh+r2vZgydTbPip6rIaFF++Mcg=;
	h=To:Subject:From:Message-Id:Date; b=lC/zntR4dApMgXCWSqpVUBXAT17WOqo32dATpXyVLkGFW0qnKEq38MV4Mt9P51+xG/pmUPv1GAAh0XVz1FkXY9VuKnpZbCaDKGxdOSiUmzr/50/0UTso3CO076me3wtU5y1AFQ+rtVubGK8AWzbwrwUVVBq7kOQ+G58ZHLsM8tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBo+kOsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBo+kOsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A207FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750496993;
	bh=Et4JUWN0T0BuwRyudxh+r2vZgydTbPip6rIaFF++Mcg=;
	h=To:Subject:From:Date:From;
	b=iBo+kOswJkX7O07JatS5c0QwpPf3syh2xZ6n0hy3JUhzGckC2vd+4/CtSS++c8cbV
	 JAKgPkIctxsnJb9zQlzDuWo9//OvvgeRa6Z/Cfk7hc04tPJDOQM4QTS9ZP0LGDH60i
	 1Rtg3yJ4DJTFu/dw55xd106N9UI5RrsKEgvS46GYa6GU4D03HTCjFDntEhCmPc77ky
	 O0MHf/Mt4DYFyz4IYk4eBTC2HFVq9M8+3DDsHii21W4PaH3HviA2JYO1xook8XsMp3
	 icdDZxatNCsIcTHRT24QfddovyNykeppf29MRwILqNqpOv+QiRR3y2XbN+WY0jzv0d
	 IEQfvgNQPLmnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FDC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049699357.18822.17291151572363442533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbba0294ed13e6918cc20ea9717eb4f4c6d85dce6c352756c457be9c10e6168
Date: Sat, 21 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750496993
