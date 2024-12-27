Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3446813C807
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735335954; cv=none; b=WVCWSDdu/Vf9n6gJ84p3y+kD9eEZ6oL3bpdKQGYCsF3d9BImS+fVTvd2RSnJXAy3+RDmro2wIku3APSPMoHR07QtSIrOAHgthj1D9QCCDwOU03ZlzQTAmLPXtIvA8tmW56iVpv3Hm+S/zdq5CcGWIQwaHNMq3C+nZI/XPk7/CF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735335954; c=relaxed/simple;
	bh=3BicV/EMYCOKR6y0bEltpTaGf7m23bX8JpM2TNmKmmY=;
	h=To:Subject:From:Message-Id:Date; b=U4dcikHwCjNjb3y6fbmxjJphJsiQgilhutUQ/MJkjTWaGJJGLwR1kUr2PJrlJnmx0O6huhzFqyLdrAd0qUkV1qivjfxaaPgdl5+GCcjNFNQ6g8ANDnotAgF7j2XcZ/X0ZsGkJkofoAT3pFCtA8zIKsJGqPLnvNLeadx4+jHtbUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHuD7/lI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHuD7/lI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C9BC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735335953;
	bh=3BicV/EMYCOKR6y0bEltpTaGf7m23bX8JpM2TNmKmmY=;
	h=To:Subject:From:Date:From;
	b=lHuD7/lIKhb9A2Im6wbSjucWWdvTpjmdN0lOCm4lqam6EV9V9LASQ/HJweHMacRfh
	 nzruQRieVw2ULFKSzd43EXDfLWIa4uDEM8wq9+ohv2jC6WiNQlkabnJiu+Yh5+s73d
	 AqoZiR63cgwSRqmGq6BisHw71BFPg3wuCsim2ELtkwut+Q5O8T4Hej/pUXhxV6cglM
	 bPUvt8KgmK8zAbrNobMCB5rCOpQBMsJ1hjdw8z6KduQWnLHrFMIlGcBuThINRxTNX4
	 deKjeGqDNbdqMwqPh9QM5Sa2evCsxAEBvT3mhBu046z/+FgQcm8QTsuHS5fXOSYhLH
	 gETY0iaINBSRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7C1E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173533595360.17595.1791285428303013689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd5ffe1595c2dc3fade39b322e5d29653ee5c47f82351856c2ff98c44b5ceba
Date: Fri, 27 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735335953
