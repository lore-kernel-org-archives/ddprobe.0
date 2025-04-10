Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406E31F1510
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744268394; cv=none; b=LnSiOjdlnF0yFo65ESCshNvcsVD/8lAXvelr8RQW6T4StZEgTtnatbPnwCzgvlBmk1Uta8wvz7iUUaZsKC1e98BneGY9ZWM3Lk5hOyanf4RfzpxcgreOwlg3fG0/wnwha1PWpswD7ePjBGsAPJ5c0uRYZihvJ1UJ5sq/9RXqmRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744268394; c=relaxed/simple;
	bh=JIr2Rfu+8ZRdV6xNdlgdLJQHFPab4piijZk7InZkthM=;
	h=To:Subject:From:Message-Id:Date; b=myFpX85ryHwAuPFTxJ8aiWMhbLQuGBSIkMY8u3JwCBcJXy8ZKwwdNaJzBVwp2BpPuOTuXRdTmw4+ZrEbVzVYkiZxgrC4MznGbbIagExSSQPpPqqmXxiJr/ZaFlYVe8h5ARHqU4FI115fAmcLzu1Axp3Ww1VJkOmpTP4UwHDv17c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A85pLC5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A85pLC5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E84C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744268393;
	bh=JIr2Rfu+8ZRdV6xNdlgdLJQHFPab4piijZk7InZkthM=;
	h=To:Subject:From:Date:From;
	b=A85pLC5JCkfDGf80SF8w1x5jtny0olG631hFRhDZO0NZjLbTmlYkiSIsNq5l5BXyE
	 roxynS9jq2m3HQNnebqSTT2aYbtH+wVRRp3PA8ZaSeMsr7bRGDidhWfE158KmUYueo
	 3Gll4k4Dbdie3fqcKuMQ0+I8KKhNNm1P6X+FlECCxN37mJqKXsSSyRzoPSpd+KcWVP
	 rF9S4NFDZlEYADTi8TswZHfdmq1GNkbONIPzidoip51sU/PNqKSyZt2NwDaZgnLFcK
	 YZc6eAYdRnfPkFsvpgA3CdFFOnWsdEIApJTaTPsG5MBcVU4XM/3oxL+Z5NUzQl5LDE
	 ezWtR3pQbRynw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DE6C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174426839360.18995.3388667712967882634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed685b819ed7ab7f35659fc19dce9a4dee6e5e3e226e52f4f8bb449599ad6c54
Date: Thu, 10 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744268393
