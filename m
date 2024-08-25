Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308C6801
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724615754; cv=none; b=GK8bC2iTklTT+kPYTmHjvhWZ1YXcpdTeCQp9E/v+vjVn8I+RbR1XBauIpWc/V/OOjxtGk0JYz23q7QIou9gWqkzkqZwFbuVqkpH+keL8rMxXX5Bl1wgF2VhBijQV+yQc+eN1g8eLFoiBBk+C+ADC50pPMxTJHuYNBt1xhAAJTGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724615754; c=relaxed/simple;
	bh=vvA6zzGuvm+aHp33Dn1tEigQ5wVE3nFXA444uZW9GyE=;
	h=To:Subject:From:Message-Id:Date; b=BfGBUlfrtRqOSuTAmz3k67yJqRXeggCRdeyC4ftxMopXLajPuI4VukvxX5sGL2zvsoLszO3b207NpxplNMq3sSV3GwNmmt/dBWEbxaInM+xzncChTaxnyG7XFdTAmimpqnjtqyLWAg403CMEZOz0q8PDyM/alkbDCdd3iwIMT8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wc4NAwqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wc4NAwqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9444C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724615753;
	bh=vvA6zzGuvm+aHp33Dn1tEigQ5wVE3nFXA444uZW9GyE=;
	h=To:Subject:From:Date:From;
	b=Wc4NAwqK/A5MyqlqHb18JWPhK4eexKefCX9t/jrTSxEt3uRqi6HcrvQicpkUGGLfP
	 UHhIngHs89I30z12yyYhkGzlkpWJJveKduwSYTZ0FiA812l4qRQ07oMsQCKrhLOK53
	 ByKCOxUw2hj6DNa4qbQyQIxlpa6oIqkLkbd+sAWL5f16wz2mT1BeVYVmA6mxZHTmEX
	 KOY/0XuWyn+T/JDKeIinS/k026/oQ5MXJOVK2xa98YrohooH0cz/WOlObQWgy10Gwi
	 ahbFapufUUKARL5EaFLb+Qzcc5l0r8Y/E+qkDeifch678feuu6cwMLNOPjic+BiG8i
	 cV5YgwvW8aNJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97180C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172461575360.1810.9895822141192987791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0615959b1601abee5bff63439512515e9d35aa65cdeb8e8a6cc426e0091cf5d
Date: Sun, 25 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724615753
