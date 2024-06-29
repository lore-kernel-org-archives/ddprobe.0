Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 785703C36
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719692663; cv=none; b=o/0GHIoVWauTagdveliofpBOl9odh3E7dxpt7b8O69X7sVGSDw/y8su+TcBcDOJ1lAEBQZpH4aYmW/Cm5oKpt8eXCn22uSbo5hRAOSiBFg6GAtEUfNqYP+iqE3Mt+PafsQWpvLzjZdPMswFhd+U+93EGPmO4iXCAIIOlr+ELExg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719692663; c=relaxed/simple;
	bh=rJbAwy118KLPmmXVhOincEz6zgQxHqb8PfBrYKJoiqQ=;
	h=To:Subject:From:Message-Id:Date; b=TqGDceQ3bxScQExnO/MSdxoFYhyqdEDmbPAfU40xLAYGvvGhj3C8a7XgtUCwpittOPbAT1SwSJCmV9r+lDmFQO9Ujnyy0HH5a4JdJ8PfWNxGv/okzeFMLfAvBWNBVC3qaJlFIwGjnlFiqHKfLRtmSRZdMgwZYBilMC4zR2eyH3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkYLKFFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkYLKFFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D919BC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719692662;
	bh=rJbAwy118KLPmmXVhOincEz6zgQxHqb8PfBrYKJoiqQ=;
	h=To:Subject:From:Date:From;
	b=bkYLKFFbnV/q14Wl1u6g9za4a18q9lMV8yDCuCjVe02nAWZ0P89RgjkseBuU3GKot
	 DgvHt/eKJ7WVObChnTuV4/kzXKHwpbUrIHvbHxQp2K680OcqM6P4lAstVeqtLu5B5/
	 Dy5mPszKIs3gfdO9ntxzDnUNKK4G3rrihGwKWzv1dfVlTd2VRl2kIZZ1P5SPNW3WmY
	 AiOsuQf3e5RX3P3lFdmq/LHx1mErq7J/OB3ePOSO7a5iINajizVjTT2U0Wsa3ldJPR
	 +IgyvX6gsbujSv81uKtxJjAVsb2rKnJKwVVGVo7npq8/PyMELNdN6dRIa0ejCYT8uI
	 CozD6B1DW0ZIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C755DC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969266278.30834.9809953589436336673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6c1efef84f0ae90c522f4c3a8d4ad573f664e12296f9160e7d3251f149db04
Date: Sat, 29 Jun 2024 20:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719692662
