Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D521277CA9
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750417194; cv=none; b=CpyQ26GKSGRsiM35vmz5MAZ8WF7XsYwFIHLtKjGNUPhaxb5ipvzElvR3eMfRbi4phyucgjvVOa+cwXbSsIAd/n7UNkOKIL9hyukY5GgyFh6rk51krO+9T6u/437f53Rnkloa8A5eKDgNMkDkSOw+sMGZlscdzhAfxWOplOAZOQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750417194; c=relaxed/simple;
	bh=PXTonVhX0RTue0n1HeXLG5RpJww6JEHaL/GIuu1KHvg=;
	h=To:Subject:From:Message-Id:Date; b=qf4hkrfz3zDPiybFXU5bsSzTRQVbrmeHs2RmAgcPEMEvIHSxvWhVTyIdQk2jqTrVa4bIe1cuSBMl0/puZReym7oReG0T6Ks7tBnSrkfX+JgQMumU04gNCqfBlSSrPI3/qzUIIZ/hq8cTROLbXBWjl7WxwPJYa5WZwmDgc6iOTiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqQjiYp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqQjiYp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D381C4CEEE
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750417193;
	bh=PXTonVhX0RTue0n1HeXLG5RpJww6JEHaL/GIuu1KHvg=;
	h=To:Subject:From:Date:From;
	b=nqQjiYp+O9yCxltmjDyrA7+fI0t3Cq+K3YAUK7pfQwHNXl2E3bKmMSIZ26Fg7jreM
	 ntNt2PfUEFCXSPoi4+HtSkgcE1MLAD7SHV50+3+Pm3ERgGrr9EF3SR8HE5hbi65pKO
	 izKX3jTihu8akcA74nL4l/4gYp1EOQ8m50peklFg9izdF93LCDcQ9SuDMCPQtCS9sY
	 Mh3tbwJGDD3haHaFGHhcXRq83dT4Aml5RgBwa3BOP1yxjcpr/sPnAAQjwL/tfaS/cN
	 OwsfgCeKeAeI6m9KLb7Fpbj14C7nvS6ystGefsL3owJWBrU+rTrdgExAO2n7oliTcZ
	 9hJUnmyBbkd+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED94C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041719357.17724.17324696199026091400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e43c804842b522a1c188ce6628ad9de7a108e2c51a3583b703bf7b1dd93486
Date: Fri, 20 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750417193
