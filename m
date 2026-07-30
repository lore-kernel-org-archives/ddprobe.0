Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425323E3145
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785407434; cv=none; b=Zg8SBF1CTEljsqHiJNW5LsiXdUji63ciPpOZdCfN5szp9PEIt+uBhtNOCBM75dCczAwqhDqvneDPrViQ1+3wfmhzDSErWf4T394yWeSm5j7lV686k524u7bS/8+NDzu0cT0xAU9HQr4Z2akkpN9VRoHvtOO++ZxVaeRvos0PGE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785407434; c=relaxed/simple;
	bh=GaPtZVUn50jPmgN9CbI/hvJjBbVLbhT9c2gPGPEH3uM=;
	h=To:Subject:From:Message-Id:Date; b=sbV8DEiXEmOwmZwRoh6dFAYAjP33R2LebTWs0j1daHOXWmAXxBKi8O7WEqy7ksB1N1NvVZTsnrGnuxyt1XEqAHBKlqpdUCsNz10AjipZ27nsLdnQS+SqTkG+gtm0C7H+8Iw/be+Sqp8IyqoxnrDzPu3mPlwtcGxRXBS+LBCoddY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eX42fN7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eX42fN7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C58C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785407433;
	bh=GaPtZVUn50jPmgN9CbI/hvJjBbVLbhT9c2gPGPEH3uM=;
	h=To:Subject:From:Date:From;
	b=eX42fN7+MImIXNcSkytXebEdfXDRvh27rW0P5yjquFO94Bt4iL5SDRqvTcbKhIZYe
	 7pRMywWdP3b1wtmXCo+dIU2goJGcHLuz69b+CXwv+H2lQZCIzFL3koEqt3vddSb592
	 P70abNy4SAzksi3ADfrWjTaaaLC+ujo69ZRIllvdZqEIVfhQ+NXBKgR4b/4SOliL6h
	 5bG82II+7FlrR+giLOxa6cz1M4UOJCyDFsHzCpFN+e0OqOUcJ8cSVrNB5ue4j83+h1
	 fqI/Gu4sFmIDXjQDMtfnBt+2KjfPF/F9Sj1bLFIkoPKfFwQskIiPRnzlVXIR69W1Nl
	 VTXSrPKf4Xh3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3BFC54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540743369.22459.17035073936162258740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c58805e264dce94d6bd797e96cb0ec30111a83b45a002a94841e413f6b73387
Date: Thu, 30 Jul 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785407433
