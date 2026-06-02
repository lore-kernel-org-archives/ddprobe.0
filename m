Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B41738656D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780440274; cv=none; b=br0Bjh4MMy8utVEeTv/Om6E/N1Ai0QLS0UAgNO7BCOkRC4GmaJ9FpG43vLf9wBRdewUwpcEE1nuTMn1jM1rInq0exDWsE32Oi/a+j/kiIT/KCURWlq9F9DoLtCGjxXc7cF+IHcu+rXK4/o3Ek+zbKEcgMSm+i6bh+w3zzsFTCsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780440274; c=relaxed/simple;
	bh=Au71MXBT3C9pzbkSSCRDVNb+cRialaXT4zAlZxi957Y=;
	h=To:Subject:From:Message-Id:Date; b=qYGhQxBugDFd/HhrAHousf5Ljv/uQ4E+VAodVEb2P6IXmnbse7FzLizTcGg/pExxwRpS2EAl7zZaQC0fpHglzC+i5N8FMrUHPgvqD7FqlIwwsCCNTJ1SywtLT/ejzYMgufa3nWc42BZ0SCUu21pFhrTMER93btfzmpQ9uFWhKtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZ5DiuBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZ5DiuBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E2CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780440273;
	bh=Au71MXBT3C9pzbkSSCRDVNb+cRialaXT4zAlZxi957Y=;
	h=To:Subject:From:Date:From;
	b=UZ5DiuBzH0VwDiOUHWlUvNuPIjWaJBoNP4Uny7Mr8cxKqq5xL23iWApsc/uTrnSrV
	 rPbPULacRcRBVz9HWDJGG2v9fIwReDXlJdZnPvppUYRFAZVOiR0d8NxqV0IKWdZqS7
	 jeP9s4R8uqcj9Gjg4czTGOYJcWeD2qLBTMr5tLlhGHOdjXhkTF5+Qh9MwdiwUbjWTB
	 ITemfLcWmwqQm/eTOQFgiSfsO/3hY61QmR/AMYtJG6nxfXSHlLiW9S7Gt66hpcvvJG
	 AcYae0PpPiP9IBs89/T57pwc2//XBjZ7bh/WtMyXtxyyvihbzV7bVv8YtQe7tUIyP5
	 aBihyNWQaI/JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F46CD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044027368.26122.6937965470853836562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a51bd96c5f120d5e3c4fe1b9f18d93e5726a6f739fef90473d53845935e5e602
Date: Tue, 02 Jun 2026 22:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780440273
