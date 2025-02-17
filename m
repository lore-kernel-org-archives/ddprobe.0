Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D8279D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739753334; cv=none; b=u+NauO+GDGfDWjonic7Nbdzkg57x8rDxdwL0CGqSL8AGKKFG+8Mol2AXqiiSufXbf8fISGImFJTyhzqYv164Tstg4pyGRx8FOQ56sa5YnAmU25qgtIQakYM/9koRNxuLk5Btuk2MK71aeKuW7qkcueruc1wy/+owXnDtnxibf3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739753334; c=relaxed/simple;
	bh=wCzBjVTek1/ylpuLId+w5AEbr8HaXspcQ6y9OXTxJMo=;
	h=To:Subject:From:Message-Id:Date; b=HlXdcPouXC3lXBJN9WSd4NA/rCWHAbGJJJGtUt+KeKri0YRkfZ1GnPDwLq/RyoFyTh79k0BEHPLIqW54wMSJaugTAjjahe4esop5RHiNtV7oF1WVhXxGM835tpBD6AtZHBQDoxqjG7Qt+uoa95oasgukMpz7vEIn9Lol+QxvbXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCf9bR49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCf9bR49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C8FC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739753333;
	bh=wCzBjVTek1/ylpuLId+w5AEbr8HaXspcQ6y9OXTxJMo=;
	h=To:Subject:From:Date:From;
	b=JCf9bR49o8URYWJ7QAzd4TvBG4AwghLWSx06gGSHl+y+cobEf42+3fsn73B+znOOS
	 1u8XicVh06Dbut+Nb108xjRcFXnuXaZ/SxlEbabSJNCgpGAhofLXYyjQ0Fi96e2sz2
	 vcqKKr4Oe5gMJgibQjrkxqqvPFm1KZ/yTmm45Tgr5TG/7oYgSfrnbCNFQ8fuOoJVrE
	 MH//VtOsck1R3lPMwkykBcsl+taS1wq5zy5HL/xGVmsLXSO4obQLgKC4BH25WQOsC1
	 SO9r1j4xbK5CqfG0zksGVb+nNa5IXyQizkQU1oZqqkrsgDwIm2UqjKkfUwdnym512l
	 T5OY70118IPxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91020C02198
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173975333358.7934.8347382307964076843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caff967881c296a2662ea2426a8c1233db2e4eff982a56685fd849f7a172b427
Date: Mon, 17 Feb 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739753333
