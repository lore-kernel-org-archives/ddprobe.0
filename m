Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2773721B9D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767849234; cv=none; b=JpEthWeiKOZzq3BrkB9uW+raPx2fEyhhvlEoh0d/F7s2CL8hUOMWob0rPsXUgqLxOoPoIWU41PRoreB/g+bQR2Xr9f1fRZZyg6GCm2pZ5jZGSVBJ+kkWrgYyATZM0WyZ9enuXVaGuCTeHetiQ3GOZBFHL030g5FtemFT3QdJb68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767849234; c=relaxed/simple;
	bh=f51HszMnG6EyrxzWpfP9DLM5hRoWQ8IqkWlRZ7djj9c=;
	h=To:Subject:From:Message-Id:Date; b=F44GKv2aDjzRRTgDvEcl0hanBn1N3gnNRlI8RbOGx4S7MouUj0sX+cTPMX0so3ULI8xNzknrO/OuIL3zAVH7GCgmA0zFVGrM3mf3eDLJEy5xW/vE35isX3OBKWXinn1LP5mnR/gy6R5EBpAwrvL7KcdPLB2EJ4hDYiY1kr8+rT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iz3PjQx9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iz3PjQx9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E380C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767849233;
	bh=f51HszMnG6EyrxzWpfP9DLM5hRoWQ8IqkWlRZ7djj9c=;
	h=To:Subject:From:Date:From;
	b=iz3PjQx9v5vryrTnXN3QKfcCoyySzQ6i/dXWRbKLCTOKYpDUhvaEwM42W9cBMqVT+
	 4LripiukQzywc4sARzf7eb6fddpcQ10DtPdwEj5C6wnrD7FOQapJ7LnAA6Iq2cob1x
	 TXS4vxxIAbENSfTBPopl4lkq3nxsUOK7rgCelP1X9e8bDrZJrwlJVH9+Azmd8dfW2W
	 YbKxA7lBe+O6rRGzF5Iadd+d+yFtdlaNuxnxy0QP6m6GjVYmp6uOYwptZYhnjiAFUD
	 0BadRi5hEVzDPFnL8FTdNYoFIOJ2eRLgOpDLCIUdjFtUxIEj9dlCIH8gCanl34FWJt
	 PuccWIE2+pbpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE97D1489D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784923357.7117.12340314558106705022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf6c0ab4f427bd20766588eb6f753bc930f7e32716da67fa26c3daf5e6bc810
Date: Thu, 08 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767849233
