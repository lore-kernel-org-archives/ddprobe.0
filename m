Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F0C23183F
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770416634; cv=none; b=hgWW/yvaFh40T7qOAwKUmlEkRkrf4mlo/KkPPrdYASFU0FOvcjiFz021eEwov1I70sVSB73OXV8G/3gLB08nFEYo6PIu4FQZVMQz6twHzTiVze3Pm0gDoZiO/mBreTHcwCpbjg2uytNVRj5IbOsdiKaDDlzuTmsMa3pm0JeCti8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770416634; c=relaxed/simple;
	bh=mRlwlso1FsEHNrcIXrKnRcK+pMea2EsQw7H3+WQrGfE=;
	h=To:Subject:From:Message-Id:Date; b=e9eVg83IbUcs0zbkYXZR6O6XfkeeTDNhX2XF8rVXERq3Rpln5qVk9PFQdH42dAzV/4s9rbGOBCcZdkiYyjs2ZCcQeUCZK0c4flQrLXq8yPsISNa1KLMtJVDUNvm4HHsT+FzbMklxbU+PiZLHU6gzPBP+MJP9hmAlfADNvbOW4YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwgUS3YD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwgUS3YD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA83C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770416633;
	bh=mRlwlso1FsEHNrcIXrKnRcK+pMea2EsQw7H3+WQrGfE=;
	h=To:Subject:From:Date:From;
	b=fwgUS3YDKDvikLm1Qjh/7cPaKXt4uOHepPPlgG4EaF3+loXbh4X4qgPfSuaN+WXJl
	 8vH6Nxhho30XR+0ustIAYeebvnaAjQAP/d5bjhBulfghycph/TbFYGuwcZg7y7Kmvg
	 xO7mgV3Z0tNL1Ct1PkdSQakr6OLPyQ7aIGeJqGLIZJa2TD864+n5S5Ks6g03iJrLfF
	 h5lRUuIcu5qQZhn3HJ6UkkSOR7dWPEyxNb9F/P5AJxgbFP6B2RUASu28tHSCF1UFP/
	 N3jV7o4sqmXXbKTq5BW0z2CpFRLMoh/3ddIOOtw2Dz9GKjNRZkq6E5lpC5+6p7xH8l
	 +AwRwGd0jv1pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F5CEE6B68
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041663361.31285.9807647479899520670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e7a1158170aa691a483e53d3e10fee3a12115655a2fd52766c8537b6feb3fa
Date: Fri, 06 Feb 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770416633
