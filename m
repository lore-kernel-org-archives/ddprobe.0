Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5BF2BD11
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750388994; cv=none; b=TDclcrnhnyzyQ02bIqkgN0v8FkS9vafiGb64gmzZ/HvxlMfUMT9gc7DqvIXv2+zkQifOi1dUBnmV0w89Nml2cv6dec/SbQEy8kO7XdZ9b9q7Pw/rHG9fIE9gEMoUxDoGn2m7qnVeV8zCITEhxKMGz/HveQu6CpLyt2WnERZm7dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750388994; c=relaxed/simple;
	bh=d8ws3zxQIpMpAIzug92MXwx0bxuDt/z6sn+t2+Rc9Cw=;
	h=To:Subject:From:Message-Id:Date; b=usvhxtcwGsd+6cxst40ShALEK7/W1phrWKmmqU6IL+dYpX5OP1zMvh5UVj8q4hw0qvBJdCKv8tyn9cKEkHVnDPmDGoiHM7ABU0AuMx7btGrrKPxN1l1mcmvup+5OIZCC4/ZIQA28MnfUPW4idZ/HIDziDE7HNLKfc78AcusJEXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VW/unhKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VW/unhKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0493C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750388993;
	bh=d8ws3zxQIpMpAIzug92MXwx0bxuDt/z6sn+t2+Rc9Cw=;
	h=To:Subject:From:Date:From;
	b=VW/unhKtjTcMdns9Wdc/dmNngwYynR2vrU2t09J/Lou3rv4h1hyd1io4wlV7bSEEk
	 +1dC66bfRX6hUvlJFUJ+3EXfcP/aeChs60tZA2tNBhz3srFfKPxhTGqWk4iittIJ7G
	 tUOKphy98HnCmeaZdljABVZxVr8isvEPFxt6iV9A2B5kImuFxNZnV1TsOTJbCGQYyQ
	 fnawljEdZJoQ+mCWFRtAmsGPTpJoRFXQlyt5pBvpUWyCW/Gx2A/LDfw6nQNMRX6Zbr
	 RHPVJiJdyWTiwTiWW7Ly6TCEeWFWkms5CAiOqOMkDuLKU+1X86KipFMoANLmppoj/V
	 Zz3DriUMUbjAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E524C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038899357.23101.7867136627193984670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef87a296e018f4135ea0b480b2152f7fb168e77c264aafdfca28b449c6bc58ba
Date: Fri, 20 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750388993
