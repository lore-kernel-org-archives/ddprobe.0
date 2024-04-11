Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06214623
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712799497; cv=none; b=qGJ24EODqzdoFXhO9hUwPZCQ9AgIDMn9JA5YRfkjxGZfEaGXd7EJGlmGrUz/+C9wmH0cFvjatgJY/8Kj8nTS4KyDpsapGUYlhavqEaenxG083Qov7+SOMG3V0Al7fRtv83hykVuSPbdUB16stTzdBkvw1FxpjpKI/6hCrU37+xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712799497; c=relaxed/simple;
	bh=KgU+P95+Ry+U4++POTXLfaUxpCPmth0GAk66Bul+dpo=;
	h=To:Subject:From:Message-Id:Date; b=dnBJHhRgQ1AMMZM+F6Mw+hnZGr98OWIiav2w1YyyzxMoEurJAw2gPztFbctQzhTOUrbUnebfzysfUeXC/YfXOsgGfd1I0H33L5rOXVb6aGx4NaDo6owdIyDEDqLWpGL2AY3Ol+bPOpGUphvWq370ab66zfhT+4bbRUN/XGqIh6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPl3fWLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPl3fWLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81D98C433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712799496;
	bh=KgU+P95+Ry+U4++POTXLfaUxpCPmth0GAk66Bul+dpo=;
	h=To:Subject:From:Date:From;
	b=PPl3fWLgo27lWLvN6NIKDK1fI+ePT7dEtMF5fykr7ATdLOgD1deSQHhedYwftWsEv
	 HRSabBiAA0SdEZPL/qwSAni6LHG4LLpI5LJr/2lHEMLfZWR9ij7oeWSno/dEVMtQaE
	 /SOb7oHrwluQi8kEet0Z0Trz74qJuJQ2ecnFEja86glbmR6PmdP/dbypp4/2Nlozeh
	 X8oTLroaMeUS+KrmW17goni1eqSVsUufehzhKWsOSdsc98NxCnR7rJlmKg2PX0rbMR
	 BiuyqZPixuMqc/NtwBX3Aa59QxorAjCjQB/3iSyUPitWZGc6UjMoAXGWdrKnsKLfd9
	 4upGT5xLOvr5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C786CD11C2
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171279949641.12668.5485389625172058089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c904efb04b54788691ea6d6e231c4b7486786d2c22b03d7e9465ba775b8f930
Date: Thu, 11 Apr 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712799496
