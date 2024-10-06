Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33617249F9
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728197754; cv=none; b=bLVf22wlJGhzjUDBhWveR7SCx+bBOceHQTLtfAy2T6BqbJCgl4ubsyWPfSoHRn29/Y6xapiuMUJ7B92DFIQwEaG09NpUjmpimp1hgNCOOvzgXjSCNpGZmIORV1UC4FYRod4gT1Ws7PemSFK6Dg3uoUUkvkZ5/JZpGTQNQSZDY8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728197754; c=relaxed/simple;
	bh=rPg7NWAWISCcOPMbOYI+C3lTeW5ELSmTBFy/a2tBfhw=;
	h=To:Subject:From:Message-Id:Date; b=l7PrkHpCHog+J/hqfRP2hJmI3681Fgk2vgG0sequ/NbsIxYFNoC4skjJ/CqcfARihKrEMAnqDdke/BD4j6NAomuJTuRWXUW1oWU5CWnBijMsm5sHvl0so3Ei0EsSSQKmpZWscDFi6SgWW1yZ0A+vURSIomVG6Sjenp6bnqwDkbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6Ryk431; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6Ryk431"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22E8C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728197753;
	bh=rPg7NWAWISCcOPMbOYI+C3lTeW5ELSmTBFy/a2tBfhw=;
	h=To:Subject:From:Date:From;
	b=M6Ryk431dBkHvuGa7cLJs0JxW9geTK9wi29LV8Gwms7ld7lmuyORiO8sBfZ+9s1yJ
	 JJLN1Ng6vDu3lROQ52YauXrajaHa2SOF0f4+JT+dii+u5oPnzGgAMDCM+p94xfPEvO
	 MqjZxuBicqhJspFLw3SkTxRO2PfmG6qJCbQtJHMzr5+gMAyXNcOkJMnTbzrtVoSYld
	 sWm6tcWi9n4/kEkzH62z3pFturL/VYbFT5tjpxOwA1t2B7hqL098ssNZ4ittt3MZbg
	 ERvAQe61WNeWxuLisf5jUTczDqwpb78Mg87JMij/6IxMiqQnhBzhpPmX6gCYUneWGN
	 kiO2++hflNMPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BE0CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172819775358.8555.12063637467790616207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b09160d92dcf605beac8e76387fc0c1596298d370870136f588617a8670100
Date: Sun, 06 Oct 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728197753
