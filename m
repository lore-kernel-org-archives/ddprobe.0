Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511DD1A08AF
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785205834; cv=none; b=mWpEOjltKpaz5jiN8wmH+dIMT0Mf6/cxlBb1eNec2NpK0D5+5GhWdD+So9I+RgUVc6QuGxItDAW7hHuic2+asQzUTEs4Jwp8Zw2AVLybme3gw+TxcQJNoWME8f3r32jyvDWh0+5VOqOhCT0XP++sKi/L69KRRjUO5vuRLeNhf6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785205834; c=relaxed/simple;
	bh=VorqQ0wNYOy2Lvb2aaQSn8paFRLCO8zDpsUpH3tCPH4=;
	h=To:Subject:From:Message-Id:Date; b=sYT+o/jU+aw7Vu/mEYbXq0nA/LRW64hhCyDJqdBbSKVrJDcpr3mezHAiRpi+H2Gi23iYe671dzauzQ9mDgbdgQw4DZBZHeR5ZUVrliAxEVXf1L86ebudHBccSyjTZUmVSQrlQk1oK+Q8HqUYhRQaQf3t2M+joStte0hcfjRPMHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpulvgkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpulvgkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D44C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785205833;
	bh=VorqQ0wNYOy2Lvb2aaQSn8paFRLCO8zDpsUpH3tCPH4=;
	h=To:Subject:From:Date:From;
	b=dpulvgkJobYTNtzEBIWvXxi7te0Z5SPp/BSX4fAC7+COLBDWxMWGQ+WOVWCmNcMdK
	 rw1q9QM6wlwkJhAvNXAj9RWDaRQ3ImVUROd/i4gyl/J9Eby66TDCkYGMoeHMLCll42
	 SDapa0Jbs0Ck9CD2qmJAt+kxvcDHLE61fVduKwHnztL1xO8rvbmvd9Us3yWRhUeurT
	 aL8J07orpW8iP6KAfLvpi3Q+d9ieqkyFvQvMBMXvvXlLdkzwaQbpUHiuUsH9g2tQy5
	 YoRVY5bJDkdJXmArSkS/t2gok0pckHqB+ex/34+nXfdN5W7wBFB3WlQkwyZYXP4mkW
	 GdvLTZdrQzzmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE15DC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520583373.2834.13420558979986888283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e262c9ed238add22082c25cc3598db1aea7ebef452f33a8c99bdb3eb6a12e59f
Date: Tue, 28 Jul 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785205833
