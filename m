Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF5A37A48D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781766994; cv=none; b=BROUYzvXCg9mAmrupW7ThvAe6LaILDpPRL80/Z3LvAm0hyEG/BCNzQrWIzx/5qpFnCjPCEXwK1PUQxJzJeeVCpi3owHGK4waNGtM8e9agDdb5PSbivDLVb+FeoMHjJPXfFaSs/w9X19NxGLUu+HaVvVY7rPo+kQuAgEci3cuK6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781766994; c=relaxed/simple;
	bh=0xpQHY5YE/VT1VJjFC2v+YoZQJmkkI30t3WMnE3D6Aw=;
	h=To:Subject:From:Message-Id:Date; b=j9epk8dOYV38SrqNOhkgicZCYAMXRGNiQV2jJWyN5bkueKH0d+X47BFwANpAdNbMvWPPZ5zgECkUqVZTeG6UEO3kyly23wVr/xYSsWEY55mKfLXa7cWpCR4zO0HsheU+QRj4Wh1SUJFny05Mk0igpOuiUnwLap6iegA3FWfotTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BH9YkzvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BH9YkzvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E47C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781766993;
	bh=0xpQHY5YE/VT1VJjFC2v+YoZQJmkkI30t3WMnE3D6Aw=;
	h=To:Subject:From:Date:From;
	b=BH9YkzvXYbDrCIsefvzGBOVOR73SVNAECklUagpq7DpRUqnzbDcVGdTPMS98prFe0
	 eoblYwtLkRzdPthEAxut7pv5bAIT8pA9z9gJoJbOSRrO+0ZBPASz90dMNBD5j7+7Xo
	 tQshF8N8dzWReV1hqz5ECNsnBbJDSrPe8wuL+/HR7jaYESTN0SP5hUgfAJbywbRgqQ
	 asuyzJ0F1h2YsdzCcQ0vfa6rA5Yq3RIHWZX1PMbOGbk8KKoFIHMY69LlyXOgM2mEol
	 K3ubLtOmZqDTFtkPlNjTGsTFgbjFC81M8Ua8q+YYqilBYpmTvo5JhkekTEeUUL637r
	 FqFgrByM+GaXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27C2CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176699372.13708.5390595974684654193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd9c90a83d564efcb4f2dedb0ed19cefd004dea74c998928f9562bb3470017bf
Date: Thu, 18 Jun 2026 07:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781766993
