Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293E91DED4B
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 20:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741639734; cv=none; b=OMGnMmBDwB+0AF7txZ0sp+nZhawPXxWtFtG2HdEuHgJV6eaGVJiDR/m8Nf6D2dnJVNLaF9gsywG+PZuZKQT0csfq5p6S60XnYqyIwyQzF0eiQTczE46uUwYq4YKp1ghzyxDMPLG0leYgXPCujTl8tpsoKzEdH2EZfUdxyOkvMYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741639734; c=relaxed/simple;
	bh=Ph2ZkZYTT4jPw546wxyboUVB7Q7IbRwI0rp31SMliuY=;
	h=To:Subject:From:Message-Id:Date; b=vEww+3kCPUTEuYZ8BWTQgd8X17uz1abuXdr7J5nDzTksGgWnutQQCG1/brUCzEvqFDHcgg48KNuNcHC3oRS/3fRxBCy1fi1DaECDSDQHcaIwr7aI/DtHB8B/+pYzrTjHOwwBjAFV2IGaogB5UOnkqyxqFWg0WG+3Ut5Wi3+zzEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDbFMms8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDbFMms8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EE7C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741639733;
	bh=Ph2ZkZYTT4jPw546wxyboUVB7Q7IbRwI0rp31SMliuY=;
	h=To:Subject:From:Date:From;
	b=TDbFMms8tKINSRzV7/k5gr61RMaxKbAQHZcX/2+bCxrJnXEHq45yMvohaY5/RR8K1
	 USeBisVz2+nLxPi+fxBLLsd+tw35heU43r48P3swxDRJcYZ5+RFIfOg1y6QaqHJeQq
	 ym54l4v1jtMkiYo7ZonzARI0reHkvosQJw8r6WhEQknoce5jdLnghutNc+IotQDHoB
	 3GmyQhFuJjaEjLG7RrZATggeyS1wP2sKKHChyH51jbDLUlFT3s9oEI9jtGtAwiQxD3
	 8XsbtekSIS0ImaUhOGFsyCcTies37XPsP3tFl3wfEsT1RpImM9qmcC7XRvkpqIw2Ym
	 Pxln3tl/XV48A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931BCC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 20:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174163973359.7895.13971083347579136327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e880d512b5f2cb61dbe8cbe944fb568bb1508ceb11f38cff9335ce79f99c71d
Date: Mon, 10 Mar 2025 20:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741639733
