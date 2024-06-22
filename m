Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C694C8A
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 23:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719100343; cv=none; b=BTPgc2abCDBLLpwAQq3wBu41WQJB6QEA6I13yRACWgD9zEZs1hl3sD5UMWg14kIEeNy3/1IUvzhx2wffsWkKfgx01S0fjS+LwNQYfp1eBv7qxJ/LT0IxTDCjDNbeKEf1v5o0ustfGDflcFNPAibqV0bscQ2LOXew5GpUbX9Z2UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719100343; c=relaxed/simple;
	bh=L6kziSX3Mfxd+pxxrUvX5ELX16PtJf59xp35pL2oZY4=;
	h=To:Subject:From:Message-Id:Date; b=PI+gwztzizAnyEO7jvLMLSE/iWf3YuyuO5w9oQkDgtuOadicr7jF+ttMvaWQcyTKyM7ngf/Hf6D06sIxsIVXJyUyU5FetSQRaBrc6QT/q6n6NizW5FYE/li/JLzy0JIGK0qWk0IEUup2ShmcMLBeh1O1nurM7alomUjwbTTZNUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBckNSkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBckNSkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94AFC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719100342;
	bh=L6kziSX3Mfxd+pxxrUvX5ELX16PtJf59xp35pL2oZY4=;
	h=To:Subject:From:Date:From;
	b=rBckNSkWLSEETFBis7l2AEo3kPMiVbhE8LG24+k4Iwoy/9xiLdGeAUvWwACiVXjo3
	 uVPg+M/KWdFDGehToEJlZR0lYf73r12paAFGd7fJthfOP0vJlhWodFTgI7ZKrKpCdg
	 OEXw+b7yfeK6xl4IccCSqRAkIS2BDYybs5q7bZEc7ZIjybEtLSLLMdOSgyB1SPMVPr
	 ioJcduJWMVTvBlNF0WyDat6p+J4anPXcR5eVGiOyopDf2x7nNvvPQf6Ec7cOFVCB0U
	 YVxvRMsUB023nKwdS2Bq0eTEkTOGK/8RlsNLWVrTdTo8CLnFQ2MSu9VMVZEhcJR5aa
	 etF18fatzQXgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C56FEC2BD09
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171910034277.11291.17018745534640745175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d4fdee71b4fc59bb49395ea4c3dbec1db31aef226ef0090694235e2df161ed
Date: Sat, 22 Jun 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719100342
