Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335932772D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765699974; cv=none; b=qdr5jZKfjrBQw/XiAQo1pbj0d9OstrnX86snNRIudqAFFsv4Sp2XPU4PxDTvyuf2szfsjKJVraJymK4Og9pnPdhEKBO46qTXy2NL3PwyHU5SBfeSYi29rq+ZZW5FO9amlcGdtp7UNDC+vxQ8uHGlhK6M8niu5DlRQxsW99jT+TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765699974; c=relaxed/simple;
	bh=cBoH6os1ML6zpyJmHfd3efoSDYOJcw5HM0YN0WBCilA=;
	h=To:Subject:From:Message-Id:Date; b=FDAwEgA37+ZczKN/sBA224PKD8X1R3TgpkgfTWrREJVU6nXvZ+0+Z6GmFnEwwe2wQyLEEVpQYVCmrvlZDb11Zr1i5bsNMrjQEuERAHaWfDmZjLKvOrKYW9pUghHY9l98g7Zkktkgofvr4hDwrJzk08Gs2SpZ12CAGSstE0Ebdq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrmjR1tg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrmjR1tg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CDCC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765699973;
	bh=cBoH6os1ML6zpyJmHfd3efoSDYOJcw5HM0YN0WBCilA=;
	h=To:Subject:From:Date:From;
	b=LrmjR1tgJOZRB3e10/1gAcnalomss71iJUChSviKO7CRzvqr8857Qu5ozs0Q25hXY
	 deZ9r2XFSdedA+i92/JTbKXlGZUtxCGU5HZXf6XhjzuAbb5FaLecXv//HqnCIUARAX
	 pGKf6Pd3t5OR1R9vCTNXXCrc9GtncnSbJtvKGkYxdYZ24QC95oYz0Rc+hLtvtM97/d
	 xsH3F7cxiN31S7eSIsPJP4YX666qEGz8jbV0p8NRliyVyH1k0Ywiu9yM4GQkFSlrel
	 xr4CQqv0/e8Juk9D+yx+GdSUAXmbH+sKYWxIVJCAodmloZj/e3rHDohmzRKqHVtyqo
	 QdvEmpGrDjJsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9721CD3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569997358.14221.12295537425692316860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01bc57a114acd2bfff0baccba79e3f8b3bd60ebcc5d7cad10297181f71b17056
Date: Sun, 14 Dec 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765699973
