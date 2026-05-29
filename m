Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E89A3A63F2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780091014; cv=none; b=JkDZbCNB8MtwnhLdGn1zt2GulTOljzTvfoOmL7sRnl+xRYrZondQRtboFLwlK2VM6WCsMRAiUupLItgwpsTCnB+iKDC4IAWa/QdmZ4IdlKKL6hyPzI7RFLhQNgw7xFbGWrT3LLbebN1GUXHTeDfWEQJD2e1On2GPeiSFfCypHYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780091014; c=relaxed/simple;
	bh=jYUQ8DBEEbbte+GjeNuRnRjQB7DlZTcycA3L9yd6xjs=;
	h=To:Subject:From:Message-Id:Date; b=NI5T9TpKC76XpKHfgbBW9alVPHUUhbrFv2tpCpvA+LBIkX9DHohvX4EcQ3sbm6AuZO+dS84P3AoJpV0xsYQA0a4kLGV+ED4YpGbfofXOUPHYJje4B2/6T7s5wZUDtSarasKHuz/vgsSqpdX5tLRYGAmkA8RcxtxqICSWJsCuaCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAdE6QdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAdE6QdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DB4C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780091013;
	bh=jYUQ8DBEEbbte+GjeNuRnRjQB7DlZTcycA3L9yd6xjs=;
	h=To:Subject:From:Date:From;
	b=QAdE6QdM/6uVFliBRodC1l5sUZ2kEUsJqpQsRBeueFf8bVSMI7oX7o4sDtXEFpXho
	 dUvbZXGl2NWokiBvNcXaqFSZ8lcYPqsdtQBqgygYY+b69QtUToAU092UoDdDlUf9zw
	 /dfJzhwp8bXmeLw//pN1jQfcl7RUlfDNszohRBcMHSieW/EFxsJlpN2qfy5rFsYZHH
	 8iWVQKfSkeiow9xm543QpYkMDof8DF8wi8ri8ETSIWp/Ch1cHWCYakTY7gTXsaVQlY
	 MnNA/Ol8R0makZHYc8bHfSSVXOK9sK4J7XNZ8dlw/66KtprMnusRUIr+8TjrCt/sTX
	 eRzT+NJ5/XBxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD922CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009101370.19882.17136158476817342745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e912f0d0dbfff9cba89b2ee405815f2ac7058f5d106fa2512c44ad42d45d248a
Date: Fri, 29 May 2026 21:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780091013
