Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4755418DB24
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749056994; cv=none; b=kXeK1JGksQ7LzD11TRqlQW28fGYUUyBT6HGGAnaq9tI5MYm22sMJSZOcQc0EbJ9yUqlXu2PHwFtpW89YBYuEoyVJlZuk5w6PVlFJzU/aGnLI7kH14naXm23b9TU09G5cnm0CVoG3BC794wubhFFsyq0ApIFDWczBYjEQeL1610I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749056994; c=relaxed/simple;
	bh=vAVaNHTKueEwLmMXLoJZmGANRKiaEZDUZH9kyPxLB9Y=;
	h=To:Subject:From:Message-Id:Date; b=AViSNDytH4ziGYhfaBd3cxlGylzy0CWxfne/yPmjWR8FwwnPdwILtvVI24JzA8qc3Ec633qmQejuADq4nfKMO2Pdvy/WZoRrJHt4ykU/KHQy3250WITjmtp/bqfQbCYzzFfdtyIa9NgIxUAGMK9Df0aOg+rirBgNjXWI7MdiVBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgE8d1mf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgE8d1mf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B7BC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749056993;
	bh=vAVaNHTKueEwLmMXLoJZmGANRKiaEZDUZH9kyPxLB9Y=;
	h=To:Subject:From:Date:From;
	b=AgE8d1mfkWreLU/tldivj1A2I/PQQ8JY+nUuLU6wuaOcI898455Pqos5PyshASJf/
	 65ttTie+LMNSBm4afqGd6UIEqVQ6mGhS60I3+ORIEtKNM7Dv26ecG+MuuS/3t+SH2h
	 +qdoKf3onop/ULaoK1uQVfd/z5AZPtoeeZ5uDqd2n40VMa4/SPxXXVD5X45X+wkfRG
	 xZApf9fdfBAhWSLZPAgnxDYz4J0mQDPnB5u+k1EeRxdLMrZQHZOB4LiNHhzG5ifkYt
	 y2lFHSgYbjeWDRweNsl5aZxa1eDkeMwD53xKg7XNuo1H2lz2PJORZcIPgANRElG8x0
	 TCvZajLbEeLJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90897C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905699358.26340.13347897066153146541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae85cc7ead1b773e4ff62537e4fc5413ff887484adbb21701a829829da96c9bc
Date: Wed, 04 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749056993
