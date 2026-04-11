Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFF3173
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775870254; cv=none; b=cAeOYaTVjlUgSJDnAhxgm39KHhlsY3/2YWxbSIazQK+EgnodOwvpl1AwwmqAhzdRzQQsfGQXT6cgMkI5nsXBVQTBIz2gOleQFfR53y8m6fwSlBflLBnzx0jBVDssZbk3AStNepJi51XcPbgjA4XYlZJxpyONNKq8D228cZREz4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775870254; c=relaxed/simple;
	bh=Ptvs/EWBoNelQm5Pfcx7bXCsT28bsgt1/yI+53fD/zA=;
	h=To:Subject:From:Message-Id:Date; b=uuWZG+ATlImrSD9nS+Mx8wd7KMN9O23AwgA8o8pAMnOiTnN7I7AlqK+T8Zr4IOUoGyRj1aHuplqX4THrl9M2bq2IYjobjfdGvj8qIz3KGeUdjxFHoSO4QSQvFvBxtUMgz4/IhsH6pKGhbJIgPrI2joavrRMuHnVj6iSTECWFgMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dxcbgj4/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dxcbgj4/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C199CC19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775870253;
	bh=Ptvs/EWBoNelQm5Pfcx7bXCsT28bsgt1/yI+53fD/zA=;
	h=To:Subject:From:Date:From;
	b=Dxcbgj4/jq/1uARB76cZmdM9sl7AT2R2kXVQmd9S1CoSWLkDHrv+yTtMcK3Iehp5c
	 SvnuiFHiV6RluE74lJZ1knw4ltZ6N1O4QyqtMIG8xfW1Wm7b999fK+ZQhqyda52QoK
	 KecH6JBYXK713Z2ooIOe/aUoV2rBLt1ze8XgDR5PHM+4m2f+pgu/t/MoyWgMjP9IVm
	 AFqAzAjk5zJTT9fFESd5vxsRg10wdfjcvNDQOtsb8CGV31mNo9w2E2XjCg4460SGuZ
	 I5ZROJC13uIRFVuYRUXITtflDR+s6MF2+lQwsngd/PRZnfUga2uon+v4m9aUUvw2z3
	 yNrpscqv0uy2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC660F45A15
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587025368.3495.3846053646933886643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe8608af4efcc1d845a3343732836b129b57b3d59ef40e8d8cb78c98df2c53f
Date: Sat, 11 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775870253
