Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BB440DFBB
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776489454; cv=none; b=nMSqJtAs15kbvq925MFvm+a+TczoNN4KkBPfSSbuWTygCJ7o9jYmxbi4Dvvw+9f0J+Ta83kkCmjtSPQG4isBQp+V+kTXzq8h8tj1EqVBGeeDaY69INFy/asyJ4N44ZiwOpDsUpBZPPtenLvgN2lWUUz9+OoKszMDGplOID2ZI8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776489454; c=relaxed/simple;
	bh=DtGqQWlxX1YA9zYSnvlL+bgg+Qg++rdv4RiiGwKT1SU=;
	h=To:Subject:From:Message-Id:Date; b=n30yEeyRr92LoU1eF2QzdtX07qq6IRakeEw2cFmfa9LFBvzUtxOjKjSDQplUUyMLq1fMGjCAOxPuWWGeDVY7yqflS7JqswV/1Sa2gabTm68rkZDKEy7XPIAX4tzanzbEskZDcYWWWtbzCgplAeQdSfjn1SbWaYLkZor9/Ma+wzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xr562gLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xr562gLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92ABC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776489453;
	bh=DtGqQWlxX1YA9zYSnvlL+bgg+Qg++rdv4RiiGwKT1SU=;
	h=To:Subject:From:Date:From;
	b=Xr562gLoF9GwDE3fpgozapP52SwTN435E4NueztD2/BgukO2jIRPdNsFHjvZY9+zy
	 rT7YGKcX2aFeUtE+GYKEFkAG9rasis8ozuUVt7Gl58DB1giG5hddZSMOzQInZVsbHY
	 SgPEYQ17/trHjKw5MRgs5y7xwWUy9y83K2NehNnpn+bCzxrgv9tT19UgIGdUlYRwFm
	 6kSpVYnb2RpByJffDvofPq+z0mbiABXdCg6Gc2It9IcYxohPtSRpPxg4FET4xTNvlR
	 NmH4Q8ZQaH5tKsI0HICiWVh6U1BDm5Fcx/lfkos3EZS8uTQDarlR60GUdcanaDAJIv
	 J6GABKW9QwZAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA929F436BC
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648945368.20848.12996815132120535825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5fadb1bbe7c42abc21a2ee0d13a73ac1ce73f75063255f0b3996fe6523be591
Date: Sat, 18 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776489453
