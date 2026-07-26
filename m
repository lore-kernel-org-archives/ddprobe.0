Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DC517B418
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785028834; cv=none; b=OO/Io3d9NsCSQ6q7UMHezdWPwmnJFbyR2cas/PH57GSLdIopmQfERRMQXehOJMF/7iMa0A6io2eho6x08tBlvelzIrYAZW+wiZ00R/U2LqzqGrClmZU3VGYPRrT3iL8p9FM7dlcjsdTYliSWabG4Q/Lthuzpcf/9CvVwcyd0Vww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785028834; c=relaxed/simple;
	bh=vPk+b6f3hNfGO5VUTSqwaj/peJcqlEkVRuovnZM45Ck=;
	h=To:Subject:From:Message-Id:Date; b=fYkwYo4slelqqrFT8t8rcWfAShPCcf12nmAOpfHjMmy5bhUQHF5tNA0RNoRayyDDpMPIcweZskVWnGLas6T/wlOyb2MzYtQA/5EkWjc3ytDfmQGT6PSM7bpB3CHh5ywvKWrtIUlFNvCev5UiCbjMLQ72PbnvPFzXBVUThNcMt3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAMONMbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAMONMbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC511C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785028833;
	bh=vPk+b6f3hNfGO5VUTSqwaj/peJcqlEkVRuovnZM45Ck=;
	h=To:Subject:From:Date:From;
	b=SAMONMbRTr6MmhjV04vnbd5kxftBXT6KtKTjHae+R8zXmCYfL0Pw+939Ym6gqOKux
	 EA8XOoiRLgm3XafHCEAh3TlNYqvEUI3aG/Kc2lsPHbc6FScVQObqOKAyxBp12+xtdV
	 drDCxMPZ1T5YcUFOZLOrNfez14cTZvlZ8oGOQo1JWKjDkpTKnbi7FT2Ivo4AQd+rD4
	 E0R8MHFE6hiFT/OKiRI7qo758U9vAXHjU1Sx8n4SdUyrC3GjVJ2llOb916QisjStvE
	 aaMm6oB3u7M5eH0YqvOG9dG0GUsdorM7lG9bqkHHKaxPMycXbkzYgD+2FxRaWKGOvc
	 7JTocpJxXKc7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ACCC531FA
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502883368.16981.9974091526758334210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3a07e738263263004506da99826c291fde90f830c8c09cf873da3b0b11d9d3e
Date: Sun, 26 Jul 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785028833
