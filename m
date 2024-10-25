Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FD81EF081
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729853754; cv=none; b=U5FpD2eiwMMLUEvbYljmvpqPZ5L900zgcJgrtUeMCdsu/HkJNS2x/whIMgDqXa0cqym87WyPTs76EE+HxLI8QDJ/ILfIE8LiwVkW3etuT63HPAAnJxsZExPR9Knw7d9ctJsrTEOPA+EZkUp24fPSFT+aInFoR3szNRL9ZnFA0pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729853754; c=relaxed/simple;
	bh=TtCMGSgMqGclXcMTOXsPUa8D6geD66gj85a76NhJu0o=;
	h=To:Subject:From:Message-Id:Date; b=S4Fk2zX+KRY2o2sxMHeRl0A9CA7L9T3KjoJARW/lnHonnj9S3oobZ5oPCfE1HY/EqZ0LcDCLHT8QDh5gaDPnybeMXKiI3f9GpIIbbWy4lmCAg0/MUORT9hdPBnyRp0cWoMN1zih9E7qcAl7BWUzCSg2okYQ7+fXVsAlVg6HOrbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvA9UWO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvA9UWO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09EBC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729853753;
	bh=TtCMGSgMqGclXcMTOXsPUa8D6geD66gj85a76NhJu0o=;
	h=To:Subject:From:Date:From;
	b=qvA9UWO6kK/Yluv94wWPXggHUEg/UaPR9+SrFtmgSijarbmXOS4XiVhTzrtnP2bzP
	 d9E1LM88lV+r75UOci8iU0PtIL2Xvx29EhiydG57ZGGd8Vu5L43UkvOpZ65gPHX1MV
	 +2aI/OJ0dffhjz4h0vSmRsg9cDMo1+FJdGAtuhyhiRpZ46Bv2Udq9hCQupVBo9lPXh
	 vnmxAJ0vWbHmI0JoGNiuwbeCH6sc51TbF4D2q2l3Hm2AaO4m9SBPZB3z2sJf4E68MS
	 1gzaIlb2FTMOkAANdLtTXYNwfucawGfvpsMmLDxgOSGSROjJU5FFAPRs52IbDDlxsX
	 tzRNGci9jpdyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912CAD0C5FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172985375358.29476.15215228018273380387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f707d53df6830a9ed1952b1a296623652d3340661609bb7a0c5bc7bc4fb082
Date: Fri, 25 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729853753
