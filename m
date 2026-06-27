Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE672D12EC
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782561514; cv=none; b=WBZ5PZy+oV/N3PgfRh9EYrQHSTsD6knSrTNzDoYxdXsxzmcRbh+TiwdgDR+zKszrv0zMfaKcy/b+kUMx5wOFuFnsKlzNY67JEiRjfVeb1XwYexuFhsx+2H47Jusq2p2cVXtRPsxQI18LC3aAfjkWZ2swPI2WWzsk+XFJPaEH0LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782561514; c=relaxed/simple;
	bh=V3qq9fwAGLXCoKxak7CiE30rrjNh0pnG+TOcL7JRJ84=;
	h=To:Subject:From:Message-Id:Date; b=qZMEMJmpFkfM6gYmZmdASY8df7Lttbsg2Fd/VOOgttVyV1s/9fllzPYN0ndrF2PN3OWzZvdUXgt9upa26CVUY686M5+ETAp5aoJkJOVO1OyH84vztGtc3j+n8AzT1MF5yAexhpBUSJ/kQ5NRLaYTPfQzpKZB+TNoi/P1ZdDoojQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tmx1CpSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tmx1CpSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86D3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782561513;
	bh=V3qq9fwAGLXCoKxak7CiE30rrjNh0pnG+TOcL7JRJ84=;
	h=To:Subject:From:Date:From;
	b=Tmx1CpStvJ3gzZwAHA9Z8Hoh5eeRelAVWC2+Ne7dpefb/fzbZ730bCSFbEap+u1vj
	 m7jTQG3EWbP17XZCYoLGLBtzYHdIkgoWQZsYOT+zxcH+9JvbNTQJ65vtGzclR5a5Lq
	 mtKQiJAGTWAvjqbs8EdKARVZnlNGWmWL4l0kIzNDUwIyvydvbjzN+zuY1gOfexfuZ9
	 iVgOLqJQryb0DTwj5YTVuhfj6RTcfrPg/yomPiNniui2zKDnqtwVDHdNz7JNeU2PQq
	 148PpLGhqu7/KnaFiZwundVaYS/8bih8TBdP3SBbG0FuoZvlOOgwaRUxWWLOX30a4e
	 ci8S6jBV13HWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B571AC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256151369.14558.13884108297011176353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e35fb22ad887a1d44aaed4073a5fa0ccd225b143cf469e3629c100042b5169
Date: Sat, 27 Jun 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782561513
