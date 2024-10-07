Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3295422098
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728327954; cv=none; b=afMMxNJBC5365nCyfah+XVc6/nT1oZMviHFSfalqY640+wkTUzUIh/CtKIIaSNBg9v5ALlysouAVDoc9AnXBLIr7sawRDRiidqkrXAqp+5QzJw4WNifp6RI/LJw9pEtWGBEusxd47a5F4mM/Wz1RlIIwhl9vgwSlAXBwQihxRiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728327954; c=relaxed/simple;
	bh=srQ86JX5SANhBZuuzKtpdYAZL+1tDdgysBy5ZqCvgQA=;
	h=To:Subject:From:Message-Id:Date; b=dS+Tx29WGxYEdQp0kj4DWcZRRr2N11a2B4N8bjaXp0G1MgS29MrOjid6H0f/fOXHP4a4XGgeMibLmxNJ8Svzo7aO0LOaiIsciNY+4MfrpcUMwBA7HfhDiCeinFXzS9fw8dn56jDCRdcKNXVgN/Df9QWIIfuc06mb2+RNe3c8hPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z55oOcet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z55oOcet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1724C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728327953;
	bh=srQ86JX5SANhBZuuzKtpdYAZL+1tDdgysBy5ZqCvgQA=;
	h=To:Subject:From:Date:From;
	b=Z55oOcethotOnrMIklGJmLyi1NSF1NJQ6pNW42oeEPMfe6bJyTmUZqCsW4WDrH2QC
	 31X4D9TyyQH+6cHuEAtATKlvjKbvR5v6K92TtAKmg+BcgtYYoHR/x55r+TyHWEua9q
	 hxXR5J1K+l2ZMYlUYE3XbKo2zcBwOlK97VeEWjtyGeaT+1gzxWzKCVmDNao7J4icMe
	 25OWM0vHpYfL+wbGIQE7LgSFxLQ1FhEQg+Ll4LT2Ol/QXlUlrXzYcRMQHDb/bob2ZW
	 qTiaZmAcD+Qzfs8vkQDyQedPSut3sx1WYpQnCMp4myuf/w6GkAFwFocaIXPpeR/6M1
	 FLTL3yP1SZnbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1ADCFB453
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172832795360.32705.15517054490663331548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d6366cab5ecbf5c9ba6afff15fd78c86cd6900bd8a3324a5a493ccb8d385682
Date: Mon, 07 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728327953
