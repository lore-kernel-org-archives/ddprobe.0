Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A31D374E71
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772568294; cv=none; b=OKHza0Wuxv9qEsgcnh/aTzJ5IqDM/E9XVB06rhCbCYaMu3w6asCanHyNgQLx/Jt7NQ/3nc+g5Yh5i0J13VWAFQ+y2Qs8+FEGbuFxEfyAm7QAIo81aQB498hOVhlLHZ1/nbxWHFMKwq1OrnztFE0mqXDrjPPt/m474RIPH/wcTic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772568294; c=relaxed/simple;
	bh=EMAebsdLqG3xtVDEHFmWiJwDfIgtf802oIVL67y32EE=;
	h=To:Subject:From:Message-Id:Date; b=Le8f83RWO5/cintVNk94FyMxJKFaFTtEmVEjcomWo+2lNwSU1uod/YwsKiXRmxiq+JS+KRLF26l/0KEMjwZK+bXPqETXKTtgZmFtOTR6qMrw/pkeEjTbHbmVv+M+FBSIUC9xB8rBWJ+weNkaSOtiwgUFmmI4dQQAGlyREWPvWtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRxyHbeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRxyHbeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2820C19425
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772568293;
	bh=EMAebsdLqG3xtVDEHFmWiJwDfIgtf802oIVL67y32EE=;
	h=To:Subject:From:Date:From;
	b=gRxyHbeYwyw3k+RGYZVQnI+UKbIeDFT0SDXterHDIL+fSZEJsu7L/QKwHAxJM+IXs
	 jhzf3PVB2IacrPHcNVQHEGT//+1JzECnIyMng8ewoD2gDDjsljryLNf5qMKdfIa4Kb
	 Kcqex4xW1uJPUfvT1pmWnIYCAMI2OHY0SED9aHpOWh4eXhVx7ae727H/+k0HeTWKzm
	 99pGvHuTZgw1eMRzmtCCWqO5GCdhY4F7E6ZecoCd1uBfA7JcLL2Cs21jbNGdKLSxmK
	 Gvv7jBjqfHIc02pMw4iZQ7hnlzsIGas0hzvC4ag63c4Osh6exJmDh69sk3hmYrfE+X
	 ZVkot9d5Z9FDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDDFEDEBEF
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256829375.2449.17028277303239491135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b90fd2df64119a92633b546596b339386616adbc699c3af61631801bc5397dcc
Date: Tue, 03 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772568293
