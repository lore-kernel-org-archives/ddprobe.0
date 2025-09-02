Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3199B247DEA
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756826394; cv=none; b=sLzgApjISqHbvp0WTxLoRJyi0c31D+URbdccvXbUfX+yCRgCK6IBuXydUn/QNCZir8JdrobjlpecPunRiIEQjtELTQ2cVCx75DNWem7kQGKQfsWAv2uRb0tjI0Q10XfTRLpDn1Z9BVcDA6y3uwRZiQdZpQ7S4G2a+7cgiD4oPFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756826394; c=relaxed/simple;
	bh=wAeyXsHB1tsEqDW8O2aPJ2JMQD02TyTNz0TrVoKGVIA=;
	h=To:Subject:From:Message-Id:Date; b=ViCriyFoVsJpQu5oYLFkJN283F6XAG/sbXLigj2Vi7/c8fc9K4TalQRq0FV3c+SlzTdJZG6r4PoHUkecET20aLf3RIJDM0YSXVk8bC9Z8A99QmjrJKrj8RyHJCOSHmOCBRlu0qMrYiJxWbBV7z5OWq92iyQQVQ5Dn2XkWKObpyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TldECv4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TldECv4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A028BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756826393;
	bh=wAeyXsHB1tsEqDW8O2aPJ2JMQD02TyTNz0TrVoKGVIA=;
	h=To:Subject:From:Date:From;
	b=TldECv4qnK00T+sJ5UgLgp1vqOsSDxZz0R1R71jbXHRyeCm3Izzy91PdrqBDJCbRp
	 wKSk8n+myyzTC+MNSEEGPiMXkEEaurwa2XvkpjBKLDtqHHQ67ZiLx1XXICfPePULWN
	 4Fnzy5LnULqUDUd0/RT37DkLplbwaTFZ7T0L2K/JXs0BDd/wUhMWpmkcauyDdYeugr
	 t8v8aJrt5pJonJ/Jl/j1GAYLlgDlJpS06qKoW2lTAuY8s+REOVdtJUGGqkBB8u07Lx
	 azzdPauRuF7qKtzP91RdbhP+ahl7oz8FmudVtis5YTZ1gXTvqmbMOXgWqOLVBtLQ8h
	 a/gT9MOuN0xCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F53ECA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682639357.31498.1651932667270693195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde2b17b2291eb30eb1fbca1df668a817363dcc0a685cd8b0a7b03de4d6457f9
Date: Tue, 02 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756826393
