Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C9945A287
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791794434; cv=none; b=H6IXtIbAbhox+V6cRNpTsdhMIcZ5jSOEPxpBzMzXojCe+EnOi6Ta8c+8vzmgEfjW13EMTap2hOViAzXh+E0rd4FKujOtVgOleEH66WgfNDmuFOaw00iWkaS7Nv2+GBNa9rvk4gJbThZZ6FBPNfLGVjSZPhQ4TjIp0QMjqt0iC3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791794434; c=relaxed/simple;
	bh=q3N8eUOyoKz6efa/2UPFtYN+TsQThSo18+vYUhcT3sc=;
	h=To:Subject:From:Message-Id:Date; b=dfD0W7pH6DuhPxFyiv2tjdrJE14sk9QAqz0loxG7NF0bIHM5w/pm2Fx4Vg7iXnTOQSH++NlhbFyFui0corYVbGPCdixjtpySQfLHDhoaaMOUQ73m/3oWDD9a2MIVNAFamT1yqJYoxNbIkrjfJ1vmz757kjJjKnf8o1fDMdAsyEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bxg9oult; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bxg9oult"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0844C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791794433;
	bh=q3N8eUOyoKz6efa/2UPFtYN+TsQThSo18+vYUhcT3sc=;
	h=To:Subject:From:Date:From;
	b=Bxg9oultwqZyophhlYEN8IuBjVqOksXMJla4NshjNNn/MwwL3jXDiTg1e2nKWc9X6
	 qmqXtZn/T16Ewt8MHO+W2ldyXpW1Jk15+ufdUm2mhM7t8ChgFsK6Fa0YoEYeB63meW
	 Jiiv+Zqkm2mEjKqgETa/BgOT9QxQR2fgdBmzR/qsyTffRIdEl1+2gf/zlQ+6Wxs2iX
	 shuLtmQUgMw5g1wbmTfHI/8hQfNw4UqHl1yFDwQy4fcqhP5h/kZMez0BjdT9M2d7AO
	 AFX3OfEXdO74xVQy8pAdJELq0sp4p7r5r9RXsT6OQcpGD2Tr1lWZXEbamBtzuot8zF
	 X24HvkgoGJB2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA73ACA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179443368.3084.10789733562344573389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd9c6741dcad52261cf720b421c6c7f557bd78028d2c18dd96219b81393ed32a
Date: Mon, 12 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791794433
