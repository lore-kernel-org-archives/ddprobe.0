Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392421F91C9
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737557154; cv=none; b=RVCnW5OgHyUUtZ2t5HsBVi65TE0rwg1qXwg01u2hLur/2RHJW6GR35KQSiuPr3Obdzx1nXjDPvj10Mz5okLLSsyEAnjofC2bMA4PZSNQJDa49+i27/Yh7qx8vcDR72Ho5SYKZPk/ugOLt6mbCcUNIfA9Ax7CZcSbSZSPCK3Gego=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737557154; c=relaxed/simple;
	bh=YJahWgRg3CBvnwfhmq4VzF4coakhRWFQBUatQ5eI2qE=;
	h=To:Subject:From:Message-Id:Date; b=KU6o+gH2Wrq8mKeNqJmcI+1Pp6FuAS1K69Y41qbWEWGUkiHBPKPqvVWUD/Tts/20gVyqXLUQSkUASzAZKbGWung1Ls4l8Yb2E92gyEuLaXLz7Q0WGzSXOkkywkOXLQ2UOvGC369iZUmU/mfFwBOKTNdfhplPEKkt3vbS3XZA2l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYzJojj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYzJojj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA9AC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737557153;
	bh=YJahWgRg3CBvnwfhmq4VzF4coakhRWFQBUatQ5eI2qE=;
	h=To:Subject:From:Date:From;
	b=iYzJojj/qBqf44MtM3yvmZ7hml0sBnAGTTwr3aEnv2unTecbVNofgPSwSaxb4w3sj
	 TQJEOL2X7Wpt639d8FtxW+fMcMo9heS7nhALR2v1jcli4TxCZ4FDECIzWP5ICp5SI0
	 mtRsO06GMfQLa93Sfva0xS16wqi0NQo0hditGWY9Jbl6w7X4+EmcyUlEDFodKJdhha
	 fPf9GNrUXDQZzSFhOT4SH+xXwcl8R+Hg26StjNGLkBDHAI/8SvVsMp3EvJnxzraL5N
	 H7XOTnZiB/4Okr5OQVUFECtsgUSqGuMyTUUtG0UDlUmhwvWAf18eVW75WwgF+TDpuH
	 MefxVvM2v3DGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9817DC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173755715361.14853.11681094890882223748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1080974a9506623c063d4055127d3251beca203591a8ee59126d18edbdea3ec
Date: Wed, 22 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737557153
