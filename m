Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F51B3093CD
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766142834; cv=none; b=GAX2vbb8F6XNHf47tfIO8ZYMEldRA6Eb3BGltF5OfgCSJ9/uOiEFGYekgyGUCJKPI9gwWXAAeRtaXo47kbZHdKZ04d182hwPgAx1ppVBG5y+eJCi2RVCMQvnbDEGqCSJ9suFmyydk5ouZKZeNRN4ZUgAXrL+KBHUs+mGyiJRRJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766142834; c=relaxed/simple;
	bh=U21eBeBhLbWUgbn7e+p0t/b4Tt2vff8A1hHn2jLyl2k=;
	h=To:Subject:From:Message-Id:Date; b=Uh7RaAexht23q3/ScZk37dL7/O9pULG1OwiP3BdCs/NzHPabumYZ2zF7iM8InhxErcA5K5Hnl87MIYNIAAdP7yckIx0SmheCCDVHlNF4vScBRF07LvPx0iz4k668Co4i88tcdaeFpu4ozH6QMnGGeHeooJRo5K4/R8MvsS2b7sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxQA+Vhp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxQA+Vhp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F0DC113D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766142833;
	bh=U21eBeBhLbWUgbn7e+p0t/b4Tt2vff8A1hHn2jLyl2k=;
	h=To:Subject:From:Date:From;
	b=GxQA+Vhp3vX51gi778ve/G7G3FZc2SgkPcDXNgJIIX1yLZ0BGKSCuCvpN9voHbpku
	 e+gjkW+H6QHZi+gaEmbTF390RjQKYdm1EYRhchefCiX23/uo+lgaCnKTeRJRmvZdoz
	 jZY7s4kXHQ+juHods8UuG2lR7rf7Uk/RJ6UMQX9tSkmwaZVgk677/V9kNrgsZD3ZKh
	 sAiB9RrqCnWkvpQc2nq52pQ7qGkLHBpq5YciYgDjiywFIo0Ns7sdFS4wVBbttiOVy2
	 +9HD5nJTDbz0tdFsvulbwKlycedgAetYSA3jzVNNf8diKZLjPRQZWY3wXVWPI1xxKX
	 Y3gRzqPYOGlTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCDAD767DA
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614283358.9835.3075248679079821203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b0b5995b19237b5f966e027fe1e137c1c373b9bd075f6e16fa53bf99f8d078
Date: Fri, 19 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766142833
