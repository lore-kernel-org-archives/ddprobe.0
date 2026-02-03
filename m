Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D22A37C11E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770100434; cv=none; b=aTzM/OqsoKZ7jtnX/hHT6sdaniLqWELbcu6B/1DRuMTWYPwdbg6KH2uHQd10YHmHURkCCNsSQfpV1Xy9DJ1k57fgplUsT4EGUgSZxeyHmulaUm4nYgEL6zEQA76EJe6cFD6fVTu6u6VUXMRS0kpGXwBE1qhSO3t0Kl6TDJ+GcKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770100434; c=relaxed/simple;
	bh=HETMdw0skI+z1x9acNt/DWV4+O8wL3R55LkdUYHI4Zg=;
	h=To:Subject:From:Message-Id:Date; b=d+cVcQPMBqPw8jPtJmCs9Oc61Raz5+Qgdoh1KSyGaFuUxfgr3DG5JgQqceT9gPVZaCxGTMatqg+uvnZe0ahS8UBvsWvEQ3YrUIdfMGbJPvDrZjWBslayxwTudhe3w/uRsI8qvRZymf0GgnG8sEQb41t7CBUay9tLqWOUZ+ghXHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sj5AziZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sj5AziZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AE5C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770100433;
	bh=HETMdw0skI+z1x9acNt/DWV4+O8wL3R55LkdUYHI4Zg=;
	h=To:Subject:From:Date:From;
	b=sj5AziZwyanN9KZlqpoc8SoOOdCUlaI8ur2D/Cg5p4ynvM+kjqxwkq8z92lUuYTYf
	 UZQrBgVMRQFQaNYeE/6u1wafizFDHu3cZ7Yb4Rma7ttFljnwJqpiOWkDU5NFJayytr
	 QVuKcLBR29AVPGJ46bLFb3H/rgxto/mgMWN/IYH/M5LqxXgliQfR4VnWvtqnx809/e
	 FPve2IKupw4QywsnWvlktxBSQKg9eBVGGW6vq1hRGvweUEt2Ot6q6dztz83nXrf8XG
	 5JQ/k/4NTsZkqlvmvePqOiSKngY+JpfftnHaqEbouzS9m0monlndv1s9sB2t0KSfUl
	 3lRDFzwVoUGAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AC0E83059
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010043359.19641.11625211631962633155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8594f5a62bab39c8d6e694fa42ec46e1134ad09109d246b2cbf4e84fadc3f0
Date: Tue, 03 Feb 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770100433
