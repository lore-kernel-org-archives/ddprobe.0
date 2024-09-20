Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAA71F95E
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726827954; cv=none; b=LKQnw8El3iDQf6Di1CWlzvtwp8AWhmlUYUuw/gl1QuWGn3nwHzsRHF+Nl+bgSJojeaCRnZi0KyIwD7rnxner5KrzmBVUhSJOtvzTAreUtSzM1ptszMNJ4OM2D1aCyEvx5Z/HQf3wOWf3P/TVj8m1+5IUCLh5pIMmYAS+WnhvCC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726827954; c=relaxed/simple;
	bh=XiyUmjJPsqjM+3Z+U1vHbe/iEvLtYVyquzpDGvsuUTY=;
	h=To:Subject:From:Message-Id:Date; b=lPAIr29B6D/iwMPWaSYcqCgaNklat2Ha4fiwCt522+ImZNRDFUFfsH6ljzzmTRzw0hVAHPScOH1HM6f797nUsNARhyNGlRLkpik98WJA9ab234GcIyDwpGs78mcnsywyxyR41wN/Wkye3v8N0skgIPwlKxl8G4ulr2TnBLAeJRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNs9uDMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNs9uDMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AABC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726827953;
	bh=XiyUmjJPsqjM+3Z+U1vHbe/iEvLtYVyquzpDGvsuUTY=;
	h=To:Subject:From:Date:From;
	b=vNs9uDMMXxSnQf+7qi5oNLUpHTc3ftfx1//gvQ2oE6dxWaktnBBIOzXe7jh7TadKa
	 x8RHmwgrZByGmHT0hLkVd0WkM6cxDioR8GRzuDDwFsqaKXQe5wdMHg8fckZxlaWeCe
	 lRpW+R4XUfNpYGBLn+zD5u1VluBMOcJNc6BmGrlIYwMF83A5eFfhEGDxSBxcUkPFtt
	 BSl4rGEGclUvoC32ljcspRYuaVza3z95aI9NnOn34xYFNtSWclIK8Gj9J8sTybYNIA
	 2f/qulfGEV+U9mO2owB/Y7mZhdAitUlAIJxu9x2M19+8tRybEGPTBdqwK1eM1oINfw
	 jyzte3jHIogVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE57CF58EA
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172682795361.21178.16494494345044093577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c93a20034d5de6b73ff6f964aadb0c387215010f2114200aed7e1bc4cac6986
Date: Fri, 20 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726827953
