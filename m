Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192DD1E32CF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768005834; cv=none; b=cziTTvJRHwl0IJZOCyno85qmXCJXg3iG8OFiOTIbq3JM+iOQ29Lo/Wk0ugE+3yCPsANpIj82ANIswGS82U/74QjBL/rwfqTjyVI/hCajmtrSWe8tidZxoXixnnUPFKgW4kGWMIxBbxaiAncqAv/FlXDEylTt7UyrNcg2/KeLvZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768005834; c=relaxed/simple;
	bh=gaWR0Ge92tS/pdiS0bW4NgxdYW6BE4RceBvDU+KoTZ0=;
	h=To:Subject:From:Message-Id:Date; b=RdlRiSn14MP/x8XknmakjG+GGtsg4E1RbGcxMoBMXgrBd2jRJVKzmChZXlJ4owf6j0YybFG1hy31S+A/Elahkn5mQ8INkSWYscdHuhaIVU4Uc7uQ5vDy4NZXHqVTyB5cM4TGR6ofPf5c/6Syixa1oxMiHLuVvXlpYMqbyx40pOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpZkKDAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpZkKDAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A596AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768005833;
	bh=gaWR0Ge92tS/pdiS0bW4NgxdYW6BE4RceBvDU+KoTZ0=;
	h=To:Subject:From:Date:From;
	b=OpZkKDALARsh02BcGKYAnDMQ94glXQTh0XnVMOIyF5QITz2987ndAAZCXv2mFGfqn
	 ErR8gGGnYgdEa2J1/KLl0WtTxWTWIBsqWn2FpOaDkaugp0GTto7CIdNh1gD+m7xs0q
	 IN+e6IcChySpCtt6nRuepPBZ52E+J98hLrbstsUeNpZxHlfDlwQMFX2lZsjL5IrmJZ
	 fK22L4fSmkNBE9nmp4kDhyYElRtJN+kF/4B5/MrKlPfWy2a3y43hlIZnU1lYASdUo1
	 o9TPFzQx2+Bo+cVbC6uaL18k3Etr9l0GorFCnr/al25BXRo3FIUV8+Lv8s40/dMwCY
	 pDm0/RzWA1oIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95220D277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800583357.14733.5097573136505643938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f6cb44cd4b84dd4abf92d783f4f93fda0650077d269a2b5439b715d032a78ef
Date: Sat, 10 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768005833
