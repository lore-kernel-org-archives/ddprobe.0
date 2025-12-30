Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ADB1427A
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767063234; cv=none; b=KMwe3KsuNUSGe3rxpdOj7ySJXhhZmWOoqSTP+mIzK3yw8RKs1A2mgJqTLzya8VTKJfkQypatS+1FY8ahNgeI/JP2L/3FUYHN+5xwBgXSCpKcIEKq5WKQopqugb5OzWOxcLvFE1wBFgt4hmtjUA9LAbFt9aK+/2+x2Ts4A1mGg50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767063234; c=relaxed/simple;
	bh=zxKIMxVDgPwiREmsEOA7/OYtVqknj4xSLBu272C9UR8=;
	h=To:Subject:From:Message-Id:Date; b=e1qoDbjMSdpvaCUux0XhHTYvb2H88XpxsWoXHNm+Oxq9jP68cGpNudGp70In4Z2WHNLwxonBwBQFI2MUFEF1mP0RW+qwzR24ZIy2oOAIMFdGj6rv9NW9Yk3nwLqEk8I3+nruySFxNijNvPVdIq6lCZEi2sqE5KQh0uCIx+3Rr7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwOSsADf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwOSsADf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A668AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767063233;
	bh=zxKIMxVDgPwiREmsEOA7/OYtVqknj4xSLBu272C9UR8=;
	h=To:Subject:From:Date:From;
	b=bwOSsADf0qDYBdMH9RSqCYKo2GdMQqJ1ITF2ItSWTOLPNZyND9/+i9uM70SH+TGnN
	 KFM2ZpHyre5F4VYa7M5gicejSa711rRe/qYybEzEY+/7yUkD3kzCFyIoFOYYhyC51q
	 suRdlP6moPKM6ba+0YsaEdrwK+SW9KKND7ZOFKyrXGsP9srK7IecY2P5OfTFP3iIaZ
	 rEl9u46OjkqojKS/0K25KthMja9mngxLkAgi513/mTM8bbvFJThH2fpqUeYteTNhbF
	 SAjDeVmNq07qRG1Br/p1jzo5wMT/SpJU6fNavouoEZDoO+vXCqW2oMCFO3FeLiDYTy
	 QlycR8311d8sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92036E92FE3
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706323357.10654.9572839840381534787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3a88bfef5bee77396daedbda842515a4c030836cc91a298477dd454000ec63
Date: Tue, 30 Dec 2025 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767063233
