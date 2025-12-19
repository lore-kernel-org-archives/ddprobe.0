Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCE5226CF6
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766135634; cv=none; b=PV+LHADZXoFdocPyQkZk0VgK2RvdwdMN89Sdc6asf3uht/hDmHEpZOxlv/FoeYWe+C4rReOioIGSNpsdwgli97jKMKAmL14hFuqqxaPQ+RKeAg9BgtouZElj/BNEZ7JmiMsvN3VopMepvY25SYiX32dz8d6wieYsuXWcX3PgOOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766135634; c=relaxed/simple;
	bh=L9NKD8QK4GySpJbW0Zw7ggc7jKv5hG12KKzdOrY3Ev4=;
	h=To:Subject:From:Message-Id:Date; b=WGYPRLN6x5pGULjaiUbPqc3oGFQ7w41MvWq+1NZQtGudjmM7MIPJJZFF6dvJhn9tctgTswZsveHNalQzeMLBr0tQoO5vE1ncS5Rfvw8nTxaBMm9/hoce6z2G+lYf49T4wFOahriZZE6rtLBS/emcMQKc/OwaCWbpXV/yBibIYyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1SQMyq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1SQMyq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79A0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766135633;
	bh=L9NKD8QK4GySpJbW0Zw7ggc7jKv5hG12KKzdOrY3Ev4=;
	h=To:Subject:From:Date:From;
	b=S1SQMyq/DNnteQ1x1rIXX21sehVyls9Au841jUb3NVugsHw/mz6J2aBWsNvMPVljN
	 ubV5LtNuYnQLxPqTL0nSutsNESmpgsFvs/0iJRXP7zqmiJDMkTb+tNektUCCDOS9PO
	 mwc9lixu1eO7nJIr6ppWopRx4+CYa65VS81hjdirxDjlO7k9xDfBR49ZShmE0VIpPS
	 G+vVeJHTVXM8hheO03r90nds/5uKZu6W8dwgKc+2PHxoBNegTradENBsM/xLJoBcMF
	 3vyz06205nHkHl9LnXt0gUBEuFkcL3VsJxLlEXeuEY8JwlUut0BvBHcBVx5bHPbL7b
	 VO5M7+I0I95Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95627D7496A
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613563357.24380.15041360725713737078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8001e3113da8e92c5376cfa940f2565068003cfe907086c6622429df6bd46401
Date: Fri, 19 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766135633
