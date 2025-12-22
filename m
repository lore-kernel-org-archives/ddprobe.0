Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4872C029D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766434434; cv=none; b=R9WBEkqCttfaW45/aut/Y6WaU+jGVAQzdUYeMVI+AS6qFbteBFVPT+dnSHDBs0XlBBxpVzMcCqmNud61Cbk+3Yt/LYtvyfC0ZD/1JDvHIl8QKkAPFX0yMeUoLptLD4A3KD2R1YUk2z5AzNQ2sR3WHL1bXdAzOrVG8aiFn1VlCpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766434434; c=relaxed/simple;
	bh=1UuCgMMlGH601Xu8kIRS5aYfad4Lj7eewk4QDUSGmFM=;
	h=To:Subject:From:Message-Id:Date; b=Bu3N8FiM5BC2Z5R7674fkgCTeB1Hr59AUFohes77ZSYXrL5IB51wXrYQmfBU0L6NqOGTIxFQ/eIpFSzVT9wj8lWIl+25+4P1Mt5P3+sl2Cam4QNbukZN6MhJ18P5+EyJk0mOQKQ8jSyZXzjBQ5EQq1YaXMw3VNR9EdUYxAaaFfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbfDoPDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbfDoPDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46D0C116D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766434433;
	bh=1UuCgMMlGH601Xu8kIRS5aYfad4Lj7eewk4QDUSGmFM=;
	h=To:Subject:From:Date:From;
	b=qbfDoPDOtZX+CwE/RZ1OhFob1zdgC0PPBmkWgztShoN6A7aQZipeVsDg+t9x0q5Os
	 8XuLrPrM9uykVaQIBdcJHJTbw61tjAGtqex1F11LS/cNfBHgNDgTCZrCkyPJxq4MUR
	 vooDlTlcgbbAYJ0QR2zTgn/3OfotTj9C5tfgqxHN05rKURNaxa8/g15GgsOO1dhDZO
	 Iyp6gBI/Lx1mXxHCkZxmbBH87uLsLvz2kL1/LfrI+Kc81W6HASlyncpkBonN2Sk8jb
	 w+mJ/dhFzseBNOwenmVoIk6/PnNwn0yBvKX5BO3jhCRse0WBxFU0PPNf6RbR9nNZu+
	 8Ib3oFO9lTM1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93926E6ADC7
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643443358.28868.9573081759989582177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c530aa271101080e728a2154cec73fdae5ea9d5d3b0b28b03d5298960ba1476
Date: Mon, 22 Dec 2025 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766434433
