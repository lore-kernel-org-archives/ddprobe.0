Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1004CF48E
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792339834; cv=none; b=pOcfpziTsLLQvqcyilHlvpaKwGPa24Gn46inr1P9DhJqs+1ElcICKnmlB/AbdUR7xT7CtdfsDfJ5NU7xcNQeLw/dmkFLmanzq37JxX08RIAmUxDxTjAK6vy0AzWhG86c2Ik1IVo4wFZgVMdKIQdTOiPE+KW/ETFGJgcmHZOaBaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792339834; c=relaxed/simple;
	bh=pfSorbixJa7QdSeAMGvA6gxpB+RadRHyPYsNbb2/MQs=;
	h=To:Subject:From:Message-Id:Date; b=nuWYBcHs+gvJGUFWB6fCDm4fjTifvvoSeGPXw6CDxqlOA7EEaAJwcLGrGZrD4J3++YGLg/GW0ZkSuOLN+qtZ1+W1h98U4Zgv4CByJivkDlVnqfEzltVUssoK5QWrdCHBru2ZGxFgNu0GsAsk3isQxVnvRMeM2wqeNCfpl4FAIE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXewdtm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXewdtm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB727C2BCFD
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792339833;
	bh=pfSorbixJa7QdSeAMGvA6gxpB+RadRHyPYsNbb2/MQs=;
	h=To:Subject:From:Date:From;
	b=aXewdtm/Ql37ZTPckRFaWA4chxl8Hsas9jo8JvSsTplnuwQyOfSulTNB++aJCIjkX
	 rh3lBRB4y51lYnDGm+/zB6GPQRtSVlF7llqrcS//hxl86DXmXReeQk+QksQv6HUrAx
	 T8RRt+mH/TsFIcZcHqqXSj1DHPm+CwSuBJ+1w7T9sFlG9z9GBaEgKLhOqmTuDQXArY
	 PVov7E4fcnOw2SH3b57dsFxd5UojiRfhg1hz1OwNjJg2eXCWxeky6+Q3wBGVtYc4Yn
	 q9ZYzItDoa6PkqE+Bjr6b0nP92YUoeGzx87DdOAvxHfM5Ed0t/ZRfSzy895rTgjfmb
	 YHU+2hXAQN+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A943ACCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233983368.5027.17400846410592371634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e73730ca12666779bfcba5ed4d934fa823727ad9894cb9b868c209400473c2d
Date: Sun, 18 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792339833
