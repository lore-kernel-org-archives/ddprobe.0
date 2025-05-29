Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356B624A07F
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748562595; cv=none; b=YXti378RjOTGcUqXCm3TiKmOiEndRSi7voY7LH2Z0vBtYUY+4BNrsFynNQOn+uY3GPDvDIZ8oSop+5vgiRWz6a/GF6j42WmLsViqxZwGE//Daj9VpTyMkTtYJ1S1GfITx33Wr2cB4KbIDZOJXvcJ6w/aX57w4VcAjBy3aPGIFpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748562595; c=relaxed/simple;
	bh=yFpphL7ZBq/W3WoWti8aaFA8JUHnhThjQU1RlfX/0+0=;
	h=To:Subject:From:Message-Id:Date; b=JAlZggG5WYFPXz3U574ilusH45OYQFhfK7gyQBi/U1Izom0Yqwtd+xYk283LaI3s6M423dlDp0HiGGpCq4Wwr+Rg1dptU/mqGg2ELsCoH8V+j0Rt6kGPF5ufXWQd2blzWLAvE7hoc/xjaaRUYBbmUATbQuGbV0RBNe7kuoRDth8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGuTBkJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGuTBkJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A476BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748562593;
	bh=yFpphL7ZBq/W3WoWti8aaFA8JUHnhThjQU1RlfX/0+0=;
	h=To:Subject:From:Date:From;
	b=DGuTBkJwGwysWkXgHiPcN6uKbBucf8QzIf8pzzu5JlaO5Z4u+klN+tY85X7YvyONk
	 XraqRaYJfPu/dKmLE6Wj5/Os33l5WGoUiOle9z4EWHih3UBQ9DFk6/o65elmpI2C4Z
	 2R5eQ2CMciGFlOpkM54jEG3l3A6bvvfg2cfKOpROzyPNsQYS6KgEt7wPq5Uvs7bKly
	 f3hzqrGNVJJzwplj1/Yci0le71/2/xQjRgC/QMFH8ArFYNCAY5qbYrnJqxpjFhB8m3
	 uPsrod6KG3zKgK2brjOCVry1Od7LMkhVpuMCqvXyGpAg/iMB0BwLxodoIx5AnNH98e
	 VE1z1SK1CJxdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA42C5B543
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856259358.25012.11402487585081749164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905fd34adc6cc61b1cc4338af08534589d349a9ba6545fc75b8964ed73f7bdde
Date: Thu, 29 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748562593
