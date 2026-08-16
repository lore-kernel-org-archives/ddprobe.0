Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57EEB2AE8D
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786873234; cv=none; b=Awa1TQDbo2hjhB4SZG9iDTtP8BEDA0jP7l1St0SSERjEwUemGmR9DubQlH30AlqqdL+1KyvAYX33d77sB0z2JTCj6blZoJsTDnf94K69G5DlD+FCW2tjNzf4rVdWd6vh/T+hHffldMZrz1ccFMYOffEoKMr5TaaTme+Uw8w4jx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786873234; c=relaxed/simple;
	bh=AtmNAQuanWeOqiSWd2e6dUKgKxgXpHK9qLBCj3m6W5Q=;
	h=To:Subject:From:Message-Id:Date; b=ENj5AwD0OmrePLNsgNaDYluXI17FgzLQszTFwnu9QzGUy53zNQ3Udm4L2NzryeqGfXBsUJmb1Mws16pp0XAta4BB4WfOfbpcG2aGQxTLPOXgm41tI7mlaFpailry4n2faqL2mOYqugSbBSZzcWjG8sGYNw1mQ7dQ+pDrEsN6Wbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPBj9WR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPBj9WR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5539C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786873233;
	bh=AtmNAQuanWeOqiSWd2e6dUKgKxgXpHK9qLBCj3m6W5Q=;
	h=To:Subject:From:Date:From;
	b=HPBj9WR69rMWpT5ABMePQCP1hed6sGyJBILC3pIDSQs00DQbUJBZAIptFQtzpe8CA
	 EXDJLAh2+zrEP0T5KdI/hN1yTzZ8C70Lmy02oMjBhIcQRuRRtV80Uao2MIQ/KOBC78
	 oeKZ58UmptiOvPmRPqekUkdXAEU9U0kH/dOsJTXyGtVY+6rJg3fPnzLj1cH0qaWCx/
	 ylPJ7X6W/jZL/ROfs1oumMIonmuvsBLiK3H3zsYHahPAY7HuqVGS0pXzJt/Xy7cvvP
	 U6Yv2HwJZaL0UeyBmvq0ontCLK+GOgWSMro0bfBLqk4UySk0RDPRDbNcZdNl2CrQ53
	 KyUcawz/8MHSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFEFC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687323368.23454.15226051082867790710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c21f2571825e0f89e9b6defc454b855016ec603314ff3c70c195a62f7e402917
Date: Sun, 16 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786873233
