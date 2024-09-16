Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FED1F94C
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726465554; cv=none; b=K4aV/tk49V/kpX8lNmfmNJq3E4CII3UzxcnQf2+KDhFHpQsDRXjyN+fgYdu/UaWuWSmPBQjXSPeoo5Jz5RbCedRjSrmEPOST0CO6JtyfmoFomxLSfyw7/aa0DNxM/JQdjt5QMxINVg7AoindJAa0YpOsWH1jlQ5agsjDPJLJfmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726465554; c=relaxed/simple;
	bh=zr5kTpkKNGS75rBDZrv+fVHG7E+SD5Yp6O84zMmiQFU=;
	h=To:Subject:From:Message-Id:Date; b=qFk5g0qzqXj+he1V6nWdNCq2dXJLp5pYaeNjlpw0vFkqAC+wiymyq8aZmJSbLS72IzCUqywcfHD4/wJG/2kcV9aYPPVfj8Nv0dhAvZS7D10VVyvB4+SgoBlClLS9geZ70ziyhea4eLj8JyOTIQUR1C/zxWXVAhUZkhrlmMCwXXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4Fd8xk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4Fd8xk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED16C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726465553;
	bh=zr5kTpkKNGS75rBDZrv+fVHG7E+SD5Yp6O84zMmiQFU=;
	h=To:Subject:From:Date:From;
	b=t4Fd8xk8TB56wd1UHEbjDZ0LqwqAtdZx5vMgwYJnlMNGEXluUPVqJMyBMHOrENpkJ
	 dQY+0iS2kR8DPv6DjMWbpJ8Zb/lqng+R0Sz4fEXddmlCPW/MsGpQkTNDKqTrwnnpat
	 W0CJDkFAIFtv4PgIwiyF/kHNwirfrVELxzMRKRc6/f76ruQegU3YeB2rHslZ5WuLNA
	 INmltuMmx1H41FTPieb0ioKoK90ZLEohSGjUB+93hfdSG4C5//12Z1S/ycxaACB1jp
	 KtSvrkoEo5cXP17rlZ97MsbFx0mpUdX20lbD3hsy7PvpZf5uW9W2mWqJCTP48P39PA
	 3dYYy6jq0z4VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913EEC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172646555358.420.6554774961718708395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da1c0417e7ccd57a0de37c05e21b1c8132dc0df4981191d7ee694836ba73f2e
Date: Mon, 16 Sep 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726465553
