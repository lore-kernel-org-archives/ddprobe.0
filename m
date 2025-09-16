Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F7B23E340
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758011394; cv=none; b=mHow1UPVezIPXZRiGal8qkkP9DdG+Gw+Vztx4aRN0payDgpHbd+V9gy2Rn5zcobPIPwtBznR8/lLy1mCnCOmAvfIlwrZMZtSU+ESyMeq3AKcbzeMmfNnvRuHfOW8jk7+ZAPc/49DLWRZS2OQOaPwuhouUZbSUcOOsEPAZwQY+VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758011394; c=relaxed/simple;
	bh=twSFeAkmrtK1Gp8iVIIscOMuaOTWlC5quGPuxZYwGZg=;
	h=To:Subject:From:Message-Id:Date; b=QrdOtBrR+0F2rNJQ0hl9Z4WHMTVMsCKPNouf9CdFI0NWfn7R1Jn/ojEWuEXJ2i+5dhYC2bwvVI69JagVQE37gLKFDv3l7RE7LACfV0sN6+joNTZSUpyYh4i1Mc0v4AMrxnI6GRqhrCVX33D21YeSx1s92Tc9JucH8CU0SVLgzss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6B+V5j8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6B+V5j8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6C6C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758011393;
	bh=twSFeAkmrtK1Gp8iVIIscOMuaOTWlC5quGPuxZYwGZg=;
	h=To:Subject:From:Date:From;
	b=I6B+V5j8wDmgTESlQaUo7Rj3qaY5xo6s6Q6FPYliRXJv8To5NCpDuRbc3khiFXMiS
	 Lk/LbWxCJkAlidPU1PYphE7dddAk0RakM1fGH5FYq/cEJ5U0QrgzCSSeDlFzQtL3C0
	 gXwuj8hxlL7dnGF7/jpLfMT6+ZGT80ypf3WB8Ohf+0QikrtnYkCmrMP1Ax/8+r5oH5
	 wyqYo/yOkFHavQIAojkNNcGRumaR53yxAC5QAgZvkmYKrHkK1kJ1/TwtMnvgmOGDHT
	 3m6F26j2T9ecH3J+pIZm1yiCYvDHEYg2RtS7G6T7l00wA05rZFKCOfIpRDwrzEwkCW
	 8sRL8+EQkePpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED9CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801139357.26713.1182456915996206454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d212f5a31878e0edbc2d5e7445e2e8efc89df94706b3b2a0419fbd72c7cce55
Date: Tue, 16 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758011393
