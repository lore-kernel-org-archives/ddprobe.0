Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3561C72622
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758020994; cv=none; b=bMqhOLUKe5+0MjgIKWwgdMzhHcojeQaGoMaqkOsxtmtjZTreTcWm2rySpb6+btcK5X9N1mAWIHmO6ctBECXUvExrEP0jNrSZt/22Y6O6nTj8M2KDRnRxteWLlo7wOE5PnHCzKq4CHBRaAnOyO58xZ6hWjMn+zSAzq4Qejgi+ssM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758020994; c=relaxed/simple;
	bh=T3Pr9Pp73ksUQvU+CrWi1BdTdlnnA+2sSJsmhVk5Y50=;
	h=To:Subject:From:Message-Id:Date; b=HcRSZbnUvVE7sUXpexrvh1AUqMes3OFAQ6pXOG5NXntJyjgDRO6P+tH6gAOE7WlHkxwpbB+RukNMd9Q0ifnQ/VTRos5rqiWBWuAeHnCCEZzzlX1izRuprCVrhIeJgb6INOCrKEseGiFqIyVu2SCB6763CY5PtLqj2T1jy04h7A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIYEFlBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIYEFlBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC95C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758020993;
	bh=T3Pr9Pp73ksUQvU+CrWi1BdTdlnnA+2sSJsmhVk5Y50=;
	h=To:Subject:From:Date:From;
	b=VIYEFlBl0QLLQ8oe0HoOYpEU0hwY+xhFz0fye0wVE+sOYLaZunDRW6aHI4JYr/RpE
	 B8+2rXrUdvIYvJ8XriMIZW9Pwzm1YR8n6hqiVxZPlmM21+5f8FyrOtfEvTosFgwvBG
	 hf5qOogLhwmq35ZV1fYwg0XgYaDkq9VeRVcdHMcV/jOZ+XNUZEGS6lUp6Qow75z3Fy
	 NhtM+Fgz+uL2e6FRc0k0bcTN0c9TiMSwBI4gYO53tylirfjAhOssaFLADvRJ+ha3Ss
	 ElvQ6hK+0U4TUKeKzseI5wFhjvKGIhr8ndElTSW/uqqWW39J8CSJ4VHiCGlvyt2xh0
	 XC9uBBMsmk6+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C0CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802099359.18028.3368124845482385358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cddf383a3cf7e4cdc5b833cf9758d68ebf1c03039aee559aafa09e1ef00268e
Date: Tue, 16 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758020993
