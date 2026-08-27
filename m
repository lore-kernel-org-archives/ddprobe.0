Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C033FADE8
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787831434; cv=none; b=csZ3K4oYaSEDTnkesIR1w+9FSNJpjTqMjaY6fkJ8cxiX5O2sJWerfLMWur7dX9a94/ZnEPl9/2ealbvHbJ1bQYG+SyyVESLRDjpoosa1sthdCt954mLB06QhwzCWLVHvaPjXoT6CBg6ghm5X0/xH8v9LKXOLd0zLgeTbS6AUT0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787831434; c=relaxed/simple;
	bh=YuqLp5V+XTNBT80Z/QEQw7n317OLXpINj/OUyTH03N4=;
	h=To:Subject:From:Message-Id:Date; b=EoL9xUJUG7C+csDPKpA0ttcmkUIuCm8pFLa0ktNJzsJ+NSCsy8N3gMsYq5/m7/2vnlV2bUJ5GVJSbP8Mh0mrefYw4n1pSUyL07fJ/UX1qFJnZXiims1FmxSX+jE7LWCzA+f0PMpHdsbDM8NtPAGELV/91/vpPbR40zDhzqYdeHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXR/2dgj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXR/2dgj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56AEC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787831433;
	bh=YuqLp5V+XTNBT80Z/QEQw7n317OLXpINj/OUyTH03N4=;
	h=To:Subject:From:Date:From;
	b=rXR/2dgjN2pOBnpTA97COkNrulEdVcOgReqOcz/hw1q9RVcSYqBIJOh4HMB9M5sB9
	 rb2S++CcZGICFxTlhRYpiWMLpKMdvsIDvkcv/jB5ER2GbJl18l+vgybJgOa1hghTje
	 HMR61qIwua8plIzCpkWF01aYFIEdoQOlx7dEKFc2bBLWIF3znll5P+1rCz2cnNtlFQ
	 YfoQ5tr9/iF03vaGwStiP1ordJVEiu+hr371ssWE0e3VZB84OQVQ4xSiN9Pn5qSp3N
	 LkuPUjifG1z0d88aoqxr9r5Rp+P03RCrnvwIg4Lfj8wbGL3t16NE9jVmtwTaGFYIgf
	 eH1CThL7vDj6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17BEC61DC6
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783143371.23173.15429121602409168758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8abee61fb9dae37b95303a4123e081c500d01189bb1b625b88222b06c845125c
Date: Thu, 27 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787831433
