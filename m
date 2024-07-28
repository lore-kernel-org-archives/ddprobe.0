Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC48A32
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722135954; cv=none; b=IJhRhx2rmwGISOr24XxMR+YdoftC5c4P6EP8o1QTU1bn1oota12uYDUrlMpJEBndgkVAM8mnNFbepXvl5ZBkEiSp4/IoLa1xPndge4HL4cAGOXrnjpUQV8PpKM1Y5TbLP+LVmV+dFmD4PnGf4DGzFLtb3jqXltkT3e7IlbfVwAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722135954; c=relaxed/simple;
	bh=YujawMRTSKTNwjq3DV1xmcn6rs1F/uS+ZDEI0kQJokg=;
	h=To:Subject:From:Message-Id:Date; b=dji7IA9u8/uEOPtybWX4VcIal405G9O48wD1xPMWJ2XWYS4X87Uqq9W8f+cZomV7IPLpUoZqp5d1lIgWWR/Pgli71GMcfgZK91G1KlNDWSwPrlKwYP+ju1+X372UbdFQvAe2L4QXe6CNluEce0bBdG6hd+TF3rfQl6DTuS7xWLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqEGBm+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqEGBm+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBA2C4AF07
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722135953;
	bh=YujawMRTSKTNwjq3DV1xmcn6rs1F/uS+ZDEI0kQJokg=;
	h=To:Subject:From:Date:From;
	b=nqEGBm+JPy8XJCb0QrRdW/Om2zsQwBCi7CcSUfDYOMcpa4/NS0Joo++fF0cNe2/BY
	 FYHeZM4CAiES7ta+5S1zjdTj7X5EgedthiV6Mbqesq5JIRmOL1A5iRlxKcBkH1dpo7
	 wvQ1P2GMapmvrLQbcdUbnxio4k2OwtSoOtVo1cJkLE76z3nOlsewi824VIDXI+SSct
	 x98UHvjUkUlRhp6Cr57UZE3nI+J7R0JWt+984+knzNmQxjKAkRnb7kkixBnL8AGmv+
	 sr2S6/aRwbqlwKJC3ddZ9N2CAqgAIhj6cH1ZO4ckWJezQ4pr9Ei9PI9ytxGwu5H9zI
	 gc0KvJeDcnQHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977A3C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172213595359.10546.10413264839033737153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e48d30441105fee2ae78b9d39013bf533eaa60ec2ccc19bfd85237887916db
Date: Sun, 28 Jul 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722135953
