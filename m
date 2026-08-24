Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385D7403EB5
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787569234; cv=none; b=cibxKq7fkGV2lhsLKh4LbODOvT4sGgYcdz9ehGEC20yownPUlbLghB4g6A3gk0mshYdMmTJnpYNO4ZTnKNoLDT06YYSRuNGTak451Q3G8d1DWq+KpBbLLDg5DXDX+rAmtKNpNZfgw0Ms8oI5IfkNt/pYTAcPM9oqdIMgNABYLZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787569234; c=relaxed/simple;
	bh=4wNBRZPT4BbE80B0FfJ9CMYhd2ddSjJ1xQl345fDU0I=;
	h=To:Subject:From:Message-Id:Date; b=a2MuVE1Niy7VYbJcWVRD1Zg2fRmFJalc0SS54Yd2rMRcpyzvthF2RQ4y0yPpXLa3GYGN1QpKB2Heb3qWZHbJluI4kqhT9hAPuz9jAjykgx6wHYYKInte7g83pqi3DYre2nvTelTWbtcwePrLLx0ThPPIRq+XSSv0YQB5U1xq9SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cr/jCbAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cr/jCbAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8A8C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787569233;
	bh=4wNBRZPT4BbE80B0FfJ9CMYhd2ddSjJ1xQl345fDU0I=;
	h=To:Subject:From:Date:From;
	b=cr/jCbAVKm3Lj8JUnRxZnW4ekdQREr+UOURf0K9Ism1ARYvwA0rij28y7JMM93YLG
	 dod9Zi3uJ3RSL9fG0/hPeccS7k0uvF4n9/+fCNIKVd2Fak9S5QTFNQevH71combgxn
	 /oQgaFncTlvt3EXIPnBXI167FTpAOGNRCmLQH1wUN+PMTgxJ2Y/eMP/sh9rVroyNC6
	 zWmAScRhuvPrqfvQH/XboVKffSmpRXC27x4bdlYWmjtioGt6ZzE8n+M7KAwVhqLngM
	 Ked7GdWupR1xqTLagzQLi9+7AZoD+cEpyfE59bYx9STMAM2jFrOUJpvjhC9LQaL0PM
	 6qfwfLWrjA4ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC22EC5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756923369.22787.16520762129697868315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19419033d31dc5325fdc831fe8605d4e4fbf28ed4ef35a92d822681909f2ee1b
Date: Mon, 24 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787569233
