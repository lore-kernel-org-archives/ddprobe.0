Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9CC31770F
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764072774; cv=none; b=EbVs19oqDFW2U3v/DiaYjf/IN6qcY04aU2cU/y4s3WEFYw7S9I8f0t4vK924gvCpT1XhwUU2M0V0CTaLS/3U1+ugKs5lxgOiq5yjT9wmVdojggbakVAprsyDbTOg6gTVD90OzTN9OGj8wNmyrXt5trvggJFtyqixZmBN4qjuzvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764072774; c=relaxed/simple;
	bh=fJxJGDp0n+NWrKEV0lHKW1mXF3VpgMr3xXbCfAW/Nuo=;
	h=To:Subject:From:Message-Id:Date; b=k3ZMTGnRdBMyPilx53A7qm6v3jiM01zoSN55ock7coB7mbc62M/4fAkBJQ/suZjYXPPDnY/Zdquwd2Qnsetw1GtAnLLXC/L6c8EhVhAOmWBuKckg6Y5h/EC6e3IKmOjO+4GxATMW4XKvXVEECtUviViyA/zF5s1/PaR9t2nrHrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLDJHN6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLDJHN6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B4BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764072773;
	bh=fJxJGDp0n+NWrKEV0lHKW1mXF3VpgMr3xXbCfAW/Nuo=;
	h=To:Subject:From:Date:From;
	b=sLDJHN6BhsxoJhYojPze9GvvCAfTX8ZjPMo4ku3DwRThCvu1MTa7hqPOEPjsN1KYf
	 K41izel4eKJyWIcIB+rx355aTuY8mySfoFU5402U8t8g/z2fc3mnQSZTyOHWp/2JD5
	 zzALenJFwfJXzte9mF0EY8mduuZT8e9ups19Grrwu07hgTLkStKFfiObEzgywyYGyC
	 svmO3LRiFVM3CEwezDiNBH3+pZEjx4/f/VIrfnAkj8PWKXcyaQvv4NdH85+b3H1FKJ
	 99+GLidVVnjVsq3T9pq2B8tbNK7WFT2ohd+z0wHaH1394lHvjGarvlcTzVXOgo15VD
	 hze8OH+wcaGhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956D0D0E6CD
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407277360.9229.8532641566213486109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cff424c7e87b999c515f9be6057385753b2b514a9ca4310342d8c452fd3b40b
Date: Tue, 25 Nov 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764072773
