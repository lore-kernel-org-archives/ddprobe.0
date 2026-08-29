Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713DF41685C
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788023434; cv=none; b=F9kwK7BoautD/uv12yZ4dkkJLRtQow9SRLUDUxZFfiBuJNJTv2+SYdDADM4bLBxsqbXwAetsPwVXVbqUKBHQL3bym11MjXaViLVTD17OKaBSQ9bFmeQKG53Ns1WScClITzKV0GpS/Mkz82dQp33+JaFRD5I81K7JD1qqgvILrQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788023434; c=relaxed/simple;
	bh=6M5Tw6qlSZphfAzfrj99zKffQUqo8ncO+Bir8JPOhBs=;
	h=To:Subject:From:Message-Id:Date; b=Kon0s7vKESU+S8lp3axsSL1lAOE/y+2Lx0gkmxBf0afs9VlVHt2v14UeCOgpRTGHKkWmwttvjTAZlogyN7tRnHu9Om1BbhXlk91SRjprLaKgPzvEspJoNw6Zrx4IXCgkOzxG1mCFNX4n+IDmr8W3+R8SENi8F/hqDVt8fBuS+bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJOyFBHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJOyFBHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB554C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788023433;
	bh=6M5Tw6qlSZphfAzfrj99zKffQUqo8ncO+Bir8JPOhBs=;
	h=To:Subject:From:Date:From;
	b=hJOyFBHnhULirWjohZEA1EsB/UcBN2OjcQWwUR+n2Vgq8PSEm4OQFKF6eEgVS5zPR
	 69i1LN6FMP/Ts2NC6yCWgOWdrFjFj6pAOha5K2Oz8lHFTaSDrSGzRgl47Tbo7Km71O
	 eRgcl+1BLt/NVYI3i0/8f+4N/yHLJiD4PRFaaQADAhBXTskphG5tpcgf/s5YVjF8yL
	 boFRA7/2Y0JmUgI1bzjcldBr0Nl5DoYV62YSwYda7kc1mCvZtx1mcv6p0o7XFCqSxI
	 8NSEeURviuChOXl1orzqYWoXTdwi83pMSe5tP6LGNenl8AVz528WXDNm3MHmRg46I5
	 9k1cyZEqVpzjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D6CC61DD9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802343368.2324.4704741089205796692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af29ef29c10c64d9947cbceff7a8e4585b6832dc4969d3a8ff93026806a8efac
Date: Sat, 29 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788023433
