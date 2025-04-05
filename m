Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC2D5695
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743874194; cv=none; b=QbIY63keNnMlatqtZDoBW8Zbd4gwVhnoOv3ByDn1lOFPWN+KkDp7IAEO4+zPr4nstIh0wzu3jV+HCSd1mD94nVQKw9937XPnaGrijx2K3RU1Taz4MK/t2b6qlQ1V5F8s0wMsE01DHaksdZWSWteb6sPhI58TVZZ7cmpdA4e8nLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743874194; c=relaxed/simple;
	bh=lqijsdojNehdYiedbBYujUJGro6wRZsVolXh1aJgwSc=;
	h=To:Subject:From:Message-Id:Date; b=CgFFeQV7QhecCol3J3z46dJC9ksDyxdfG/+rW6yGmW3s1LNPHrt1Kwro6rCMqzcqVAqDoe90Hhl7z7/NLpDM001QSHD+gNxaROzLf59CaeeZXsDjAvQyDakPYr3gmlNBFS242VmvzWdi+Kvucime1tZIgi+XyoRELkLT7cOKwBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nILwQZ7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nILwQZ7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9372C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743874193;
	bh=lqijsdojNehdYiedbBYujUJGro6wRZsVolXh1aJgwSc=;
	h=To:Subject:From:Date:From;
	b=nILwQZ7EsItQ1fpFR3PS7YKNGP048GwN0ECzOdMgt4e5K5eeuHlnzStHQCzpTcqJk
	 bT3G48a8Z57CFmk8J55a71bY8A/yR92QC0ang+CUazM8EA5tIn8GjlW87CAq7aT+r1
	 6QTx4676JqEhh+m1uYG9mROOclLj2BBDLigaDbBwpuAfm3bm/aAEvA6k4RC4yoF3Xj
	 HITMioxj8c/jREkz+PERNY809JXRUsXZcTA5LrqVtmmTcDC4MjBCn0PtuvsCaaTUTV
	 9Et/VukUkTQ/6Y8GW1AnfCoGfrROMyxDFfKwbEEndHaZue151YY24y9Hm0iiRNgCwJ
	 uSIT6U93OVI6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5743C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174387419363.5205.18319961321491062229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb12ded29c030fe0f3ac585b47ab0ceeefea4c5e70da31951eab403b6db5d92
Date: Sat, 05 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743874193
