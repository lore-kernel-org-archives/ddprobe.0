Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FD081724
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769387634; cv=none; b=grWxoph+AxCMmFAtzzZZZ7fKmeQSuSErmpJ00nE0C9RKWvmz8QG9gH1Uan9HatS5L7pafCSONX3Bd332tuIfuJztGaBCFKrtFpE/8YD/W8voW72LpC3YE3Io7D/PRtgwFuDBhgizMdpr4CxWiukVrDffNlx7peOD0m7l8+OyvAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769387634; c=relaxed/simple;
	bh=7b3E4LzPx2Uk3fY956pEl6pBoZvbUizhPZCLZeT7tEE=;
	h=To:Subject:From:Message-Id:Date; b=PLwEjZnUECx9C9QAkosfK5MeDnHuciqyNI2XrgZiOZltpgg6ZqJnXRkgiznMBwNTZpfSlNDXP4ziVcOC4NUn++ES0dFtU+Eqok7I55cbOWRH96USEgsCJ7OL8oxvpacpIS7EXm+nVPhQEKVZZPXmgWu27j0QIHfiWd3cFMGdVgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMXBElJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMXBElJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36EFC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769387633;
	bh=7b3E4LzPx2Uk3fY956pEl6pBoZvbUizhPZCLZeT7tEE=;
	h=To:Subject:From:Date:From;
	b=RMXBElJ1rm09z7EH9YEaXxFBN/6lG1P2DjJBDMNGzfj0wfEL0huFTSCmjK96McBX+
	 UDxNqiVlXeUHHm2L26AqVqCiMz69IeB/l/x2dWBuITDKqyEBrWv1+8EvTe35WnJB1/
	 7gFfJaItk+auuCEvmx7q357JuqvchfgQrq7GmNUMDEivD5hVmVI+hBppSwqwHke0Uy
	 EEdAm/uxPCTHg6twIdrVQeNQbosAICRNCWfVZH0QOEBbzwWiQTmtXXFASlOlXcU8P9
	 Zpvb3E50dYppL7yQ4Pq7I4/i/KhP5/No7DLAx0appKh6QbcAhmbpvxR6Yk0i7Vno2k
	 bsSENKGMKxhvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F480E63CB7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938763357.11396.16204465020755844370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693f51b11d3490d463eef3d5918b6e620f2b44fd3aded905fe517d1cc9841e87
Date: Mon, 26 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769387633
