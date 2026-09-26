Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6557A3644C4
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790437834; cv=none; b=PB+xmApG319aRf/fkrPcpgi5IXEdJVYvN3nXre2iXL3HMM0XuqYAzARgHpBffKTAeythJi/9PBojYijKwhzTbl1/AfkuhGakzK2Eb3yTUzoG1/Rr8lPrPoWP8JGpQtblEOVxBRSOtZyIPsw8krXPrhFuGJPSRzPULcau+HLO7FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790437834; c=relaxed/simple;
	bh=P3ksg+2VweSEXZtaUVQsuhKhdIG72B7WD+iVhWQFEXw=;
	h=To:Subject:From:Message-Id:Date; b=tEUzV06Fpq3tO01rnFth4BkwQqkJPY13KEjVEtB4hXsyrJj7xPnXLklHfOItmJqiFNvkV9W7y6zoRKgCe2YIA+ofcL7Cth3ANvULXMCh/EcP5RHu4ALueZIjQ64GNA/LxNcQowrsYpbY0ABMNrIqswLvfHnMXaooVyLX4QudNW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujSZwz4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujSZwz4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F1CC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790437833;
	bh=P3ksg+2VweSEXZtaUVQsuhKhdIG72B7WD+iVhWQFEXw=;
	h=To:Subject:From:Date:From;
	b=ujSZwz4DogB++hyfon6eRjClC9tTA/1Y7svHsLUI+5Ht4JPh/4RWmNgk+i+EpET+x
	 QLXE/CsSRfDIpBDE7zVhaeRdjZJlgoj5JPoi4opjodcd393TSTJaqgGEchbquv6mZO
	 464uLIT3i4lUDasY1Fnjau1OdDs0SYx5XPpTQI9S/kqhnKEoBd/II5pIeLkGBCiKIO
	 hCtjXAz4MueKRZUShtE9KhAkbYmnuy9XLuhQFU/84/hYvx0ZaIaMaruYBnIX9CrhLz
	 EMwFWf/2VvS3nVWMR/t7kAy/aFEuj9RcTb2X4kIZp9Ens0m0Y7OoOh91pq7bM52oVI
	 U6BQeC7I733Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5C7C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043783370.30626.10168996109719057955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 443c83a117c45f8f53640bf044ad7d4f6262dd1e9ddd438c6de958bba4b72eec
Date: Sat, 26 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790437833
