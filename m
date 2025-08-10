Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185C12E3712
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754807394; cv=none; b=LHw28YR2XPnVx996ohjKkFwSPVAVrfnrg8cTk/Qm6FzvF1Lv15fmc+AjMFGerUo5/bfJuWCfp420TKUl3baGsgQMZQduHSV+EAXt0ZGsxDvGOehmUCjgEPKIRqXAM/I5S1rnR7yhYWC99wkc4ydNfrL9v3BnTO0BnT2/iqZErhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754807394; c=relaxed/simple;
	bh=FGUhFudY+A4SRbEkOESH+3cGDXn5MRFoPFxT9nAG8VA=;
	h=To:Subject:From:Message-Id:Date; b=INevzQr+DFeApZzFu8fmrDvXTIM9RT+7BxqlfYH4Hq3dFYJtJRmrAI4P+1hO7mWTXRsUH+fBqee1p0qRPlXfvSDbISzXJuEVjeCHcHITFH7HSX5NXwNbdst0iUaT0X1X8HoW1/1NYfrUnm552Cqva/7ZMC5ShUCrjuuUy2UNBrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fP1+GgJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fP1+GgJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C519C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754807393;
	bh=FGUhFudY+A4SRbEkOESH+3cGDXn5MRFoPFxT9nAG8VA=;
	h=To:Subject:From:Date:From;
	b=fP1+GgJDVJW5lnVBKI/9f7rttxIhYH0iYwcm64eUFqPd2JfAzSQ+Svz4XZHotlqUG
	 Wwa6FIZZTSNPhNaQFQYLPJUV4tRj2LtIuPIEBlrgo8b6xK5guLDM6sw19quA6mGo3s
	 kkKLMgGRkbsAE92KZRI5wF5CB/v2mmGB9Lz/M/bnWbkAyQr8JiKxP4QoIULOtqJsOo
	 CEe2dPuQyq/RMpOJ+ubIlGRjlEk56U9STCmldrOfFYOrg0DfTfZNApM6CSwzEO3ucG
	 dRUYaWze5lMNi4AvMZJBiJ3Nb2t+UMkrvOq94TGu7GRPe3+IntmXy27RI/DakZmaA2
	 zIjP9Xeh5GEqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E568C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480739357.2632.5063208635927612284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e044cefba8671af7b87b3da4631c912afe1e90a49ce6374a134ec3425fabf0
Date: Sun, 10 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754807393
