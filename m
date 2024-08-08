Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D77C126F1E
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723118754; cv=none; b=cCdpa14cZpi+spAaSYg97Rf+PMbv5raENSEpchB5ECCjAm/G4v7TZERZMJqnVS/CCqEnwqEwRCDJZS68MZLO3tVAtBrBYOl/GgB461tDlZH8iLIAS4rQ9/iw0PjX86XaDBJijnlGFSrWoJqUIteuhzvFhy0gJ7VvPSMLZQ81i50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723118754; c=relaxed/simple;
	bh=Rfmq9Gh9liKDvBTpXsRkDxLQ/JtS23SFyX8kVFdkaoY=;
	h=To:Subject:From:Message-Id:Date; b=cOY0yBiFjJK3UiO64ws6vUQ+G/uPCM6kPSEzRydcq8mAe+B0y0YvmnSi24AAHpUsgfmmkNXkgjg6Bi92hMafvX3BEfoLw4krSym/QZt+gCALvvpr+esLnAMJOk6bnsRbkQXa1XQ7ZENb8HB6QctnIyI8rhh79NKHvDf2lELk5GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOaGa7EN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOaGa7EN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69D5C4AF09
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723118753;
	bh=Rfmq9Gh9liKDvBTpXsRkDxLQ/JtS23SFyX8kVFdkaoY=;
	h=To:Subject:From:Date:From;
	b=lOaGa7ENhgY+hNbQX9Il5Yp+cpD0QQa/IkE1eLdN/jZPaMHG7MghyL2Lvzn3yB9jx
	 NWO+lwIJUv60Vq+6PKrjaJZv+hZ1y5Ggpuf9z4BJq7vxeV33BI3z6FsCCMsuUyZdbX
	 3XOemkjsrDvvtu0EdroYR07O+ynexK7dTrIfK7A+x8xYrFgyDDSJeTEesJ/ZHw9lv0
	 q4S0WB8hh5K/L8XVnFPc6ZIFofiK9XIvPEmnOuNiTso0JBoQoTd0famVnf9QS1M9Ip
	 T5jfBuQYHsdfn8azZV5iUdODWsP0E+j9UOSokPSbBZKAisQOMxMegVnjdxKXbljwF4
	 x/a2yH80nIGeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95306C52D73
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172311875360.19173.5525437799155908343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f85c6ef038379abf63014d92baaa8d103909974dfcadc8aa481049b55a6f4181
Date: Thu, 08 Aug 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723118753
