Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0548427D77B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750778394; cv=none; b=CJTCpY07mQ4REcbNV2jYVEjeDjKY+hWk18otbtj6su1mDtqJlwrRQ8jMEV/HHd9HkCTk9EOL4cCLVOFB3O5IVKcp4kgg3Zv7zet+PWXOMSY1UoD8RJerjeDTEtOxdcEojsPlEXzss5+Cb1BBlhC0PiNYivofxRLhlTDERr7I2JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750778394; c=relaxed/simple;
	bh=AT3LkczaijMWzoDoX/atxX5nMb6QDfWWjWi5PcL+z2c=;
	h=To:Subject:From:Message-Id:Date; b=IRCmNwQ0VBLGlkiuQ6sN08xAYVTuROdFvweArgz2y8jwmbISi93Jtwy5nUmzLRqimhF3JljHnxIaIRiJi+mp2putR96DvGaf7xJiErFsDx8XkH+d5XSmtvbh83LqovChqlLuR4W80y96foTuWE/be4kausRZ07LrPF5C6UvCusk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMmHsnBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMmHsnBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F204C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750778393;
	bh=AT3LkczaijMWzoDoX/atxX5nMb6QDfWWjWi5PcL+z2c=;
	h=To:Subject:From:Date:From;
	b=YMmHsnBo9W/dzPt5tRRt66V2C5dtFo21MUKm3h377FCigzaK3eMCP5srFop6Qz4I5
	 JUaTPgFXSUbs6tCTeWjfbNUCEVZondFVFO/yk9Vzi1GlXj7qdGI2hQzh9/BWF20dNX
	 B9Uhdz7AuKTI5aFyTLY9c4ean825q7MqJP9DNhU7S965kz4Xh+JVtXa/4FU1gsOMZh
	 MqgCZk4nznjriOIEW3XpSU4YKPG/9sHhe0jE7MwN79yK2l9QcnRDfE8D3VG2Yg/Xqy
	 1NEevMWU7qalnw6RT+sp7iGpG56/2ZplkqFfzjQulzHaldU7pwCMsT2h6n6evGg/St
	 JMd01+UpbYCmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905DFC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077839358.24508.9359162051525754674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c1a6a585b75ace34e04c23970243f40aa30c42a4f252b157e62fa4c7d54f6f
Date: Tue, 24 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750778393
