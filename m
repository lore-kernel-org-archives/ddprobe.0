Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F134136338
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731668154; cv=none; b=Jlb0Ubf7xSoFD/vITGuYau4RloF+FgiGgL6wFRbMEJPEuVmdDFLMrBVDKTJpK4OTroy2gNv7Gz8Zk1jDfbcYCvPGsf/pL+PAV/Uihata00wiQdlwyF1DeSrXij8v8o+ftE84lgt6aw6mmXDjTs/I7NkcLDu8qrJsWICYN9e7Sxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731668154; c=relaxed/simple;
	bh=ebNYbfks5E0nFvNbdYBvPjuJ597dMtWg1jwg6U04f9I=;
	h=To:Subject:From:Message-Id:Date; b=C36qN730I7pFjgHbxLUHCyVcXvynCWtJ/a4HpTcJCi9lyL9mcl4Bx19hWjNvHzvfs+TKYN5JPkKxukVRNssz7Bc4CbdhMPN8MJdsdB04OlhrPZzNY/xQn6mXAF4jy/jwhHfj4ZRjjr4dmZymTYikAaRAuLnSCL9LucSHX2BYsyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vF36Fm2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vF36Fm2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3B5C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731668153;
	bh=ebNYbfks5E0nFvNbdYBvPjuJ597dMtWg1jwg6U04f9I=;
	h=To:Subject:From:Date:From;
	b=vF36Fm2cbVff5q3ivxJ7rfSqvt/gna89hpjXpImVMIpZrajYYZUoTOtFRzHleYD25
	 I7chXhQ34ktjf888f8o5R1QgIOMrPM9WjxOWUlnVLfmfba4B4K+tDcXdTCTj6jbRU/
	 6CT9RAP6OauEQS1ArFbbmAyu5/WPZN7Tc110+GSfc0h85iMZIfTRS7uhotBgjF0dRU
	 eY3zYUyXgIUWn+YpdwVA2wITZbMBHZYoNRyEE9x8hNqIiuPlTW+H4Elgi2Y3Ap5WtN
	 CN0IOHsX27R3NePQE9S6PFhik8QUZ0rTl9eCH7P+87E5U17i+5H75acBnnzT+rpfkV
	 dAZ/MIAv7WT3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB7DD6DDED
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173166815363.11663.14270420917865626957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b1489cb112dece66512950fe1a3be6a7c75502c141b1daf51443b51351439e
Date: Fri, 15 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731668153
