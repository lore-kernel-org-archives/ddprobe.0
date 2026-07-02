Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4290331A04D
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782963514; cv=none; b=JKziQoNgsYX1ZkhH9srkketN/rv5HZ6t95t84pUQ6CnLk5MidrEGBlUA3DqQBEyC0FDvg4Mi8wzhohCLQcQpHoq+GxZpVbeYJvFDYVv9jo33lzd542jN4IHZ+Irdw4XOeW9cRsFE/T1e/QsJUwyU/o3XJnkpls5ovfSTJyifHe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782963514; c=relaxed/simple;
	bh=PQYt1lpZ8cwU7HpsBGb6DS4pvhhGy/gJseSI+kdcFoA=;
	h=To:Subject:From:Message-Id:Date; b=ZLlX/Xx1rXCIELkQ/VIUtUXtRv6e5FRaUFSBrWoJjISIPxec1taFvavtIaqwu+rqVAOdFYYFmBja7OUi0RVxq6ZdmMNarjveg27OBep1x/1Ve+ynxFImXpN7PQ9xwmaGkH5jxePNk79L2jjeJ+uF/KO7a5+nASBnyUa7acVV6gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkdzuHle; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkdzuHle"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBA1C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782963513;
	bh=PQYt1lpZ8cwU7HpsBGb6DS4pvhhGy/gJseSI+kdcFoA=;
	h=To:Subject:From:Date:From;
	b=BkdzuHlejZVHx39okOltTGo8SLGnu+7CWJvyc5browBzsgmfKjaxZruh57N6UEXw9
	 xkeuo+J1Jwp1g5vvBC7JVwDieLpv5ipa3OK08Tz0iBFMINhwsSphGnD+3cAgWX6Z29
	 f7ndyIsd2XQMvpybOq1VL8k498u6mA2md9XtDqwPgNumqbV2xufKztln75FbTa95V0
	 anGhQ4SKoiryAT1QsBG+e4YR+6IAd/Cbkg7pqH837caLkFx3bW964krn89BHUxMJAP
	 TkRFPxKJLXddKZWrYP431eWbB82/DIRbHOJ8/GN0pvPt1gDhKP2rBnUNYL4EKS2SCU
	 QZY6SoopiNG0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95A4C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296351368.24961.18272878735584211696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85b71b9968fba4f702591fe5e3373058855be757cff86dd10e6508a02b920895
Date: Thu, 02 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782963513
