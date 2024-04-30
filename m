Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C0D129A66
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714466543; cv=none; b=VGgDBR0sRtPf2e43X6XZPbRWYT+wRT4BfogM10l+VKjEsg51qxcJciNUpAzBinFPwXhjoBDXFpvyRI77Vx3uCkHTdssY8KZ90QTDbYtU+5lbsYCGSVgVyn0R2dZusSM35pnLDsLlDf5rSeMhtHDClE/ZrAbsEtY3MV4+nJWbXao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714466543; c=relaxed/simple;
	bh=w9RwFV3XIcHJMzFRKv4ABdp/8YQkv4OI1L+YWnk1a2w=;
	h=To:Subject:From:Message-Id:Date; b=UH1MdghUAjvvnuR7iyJ4XXj8/kDOoG1I0nXqcvaQI+AQ4pxU1f3mrhDGlDE5SaOKS4m3T7/xgML/G7skNhX899Q9va4gmimx11y9+ZQu07ZkpaAjLcaICtQ2joeLVvubddzmcj0NmsNAuph6VGWzVVFdidj64ouChjtIaln8QGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyXiA0xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyXiA0xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC82C4AF17
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714466542;
	bh=w9RwFV3XIcHJMzFRKv4ABdp/8YQkv4OI1L+YWnk1a2w=;
	h=To:Subject:From:Date:From;
	b=VyXiA0xeuFRjifJLQ0p/b847yUn2WD0c4d8SWYcup5jNtqWjJM+mzm1VFF+mOoo/f
	 0SngeUdaF4XQAWQ7AjNo8c1lfkTeRYAY3MT652pdnPtQ7g7wSViOqI4Ljck2bePfxc
	 Varg0kKSk3tEksBm9JarFzhG7xIOXZPGUfhYdvmMgaXxtV0Gh4d5W2VAc8mHqkGuRL
	 9N4tIS0wrdFCLprbz3pEdVJEvkoqDE2/GmwT3Tak/nCLPAhhDwq6VPhwxhahrtgZoJ
	 uPNY3F+M4O5AsDqDbvX4ioeCKqWOts4gE867Z8sIwd8pp1Q5olrOn2qqsDcUHe9wsS
	 v4C2qGZQ3jzJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCACAC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171446654276.22439.12156042944984071276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68eef31b7625b4aef2fb7f1de87f1a9ec908e54f8df5fa1dcecf0e097c884780
Date: Tue, 30 Apr 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714466542
