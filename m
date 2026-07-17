Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5EA3A6B6F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784328515; cv=none; b=pMrS1BI0AL00CHEJIaom97s1aaKYDM5bWCBYwP7eulpxGMwuFRu75hRTINmp3SSiN48ULjSI8e8CSMoCzeftdMUFeFhhc9yP18nG8k2eNusisAoh83CDc9cvGfmejZnpstWaBiDxsYVfgBEgxc6Z5DlMUrkk7riBEpIeNjn4kjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784328515; c=relaxed/simple;
	bh=P6cmYtac+KJsm8Y6LQ+smNN4U3AICyhlMHyPQS3gSjk=;
	h=To:Subject:From:Message-Id:Date; b=AcBtw12Cr+ZGt6WujVsqY7wLkK+rCCgkmUqY3XJDKeUElKtoT6/b07vv+UAGXk65KotdbbF8vQLjTm+na0Hrdl7VXPxe4UWTv+sq0h5Km1QWH2ugYfIdTwdojzjenyM143iIDjJCsSieDO97xwnzjcN6ZdR9Cm+h1mBkTzc7RGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSS33Jbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSS33Jbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF628C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784328513;
	bh=P6cmYtac+KJsm8Y6LQ+smNN4U3AICyhlMHyPQS3gSjk=;
	h=To:Subject:From:Date:From;
	b=DSS33JbbSjYIviKyM6egTEo/PuxCNnBQpwl9R1J4pKuHzaex2mUuMST/9qrdvpdZ8
	 yEwg9T53ASnp7cOsxGEHzA/rdfWfiXgNqbfSIL0OjakSJfJPfCZCjoHQjFs21tXDpF
	 ZGzbYLfi9XBiAmWillUlIosdQXKl9APh8o9wT0hTPTGmbn4CQs27gAxbLfsyfua6zF
	 ggm6+akg8+Yw2NJwrc562PwWzA1Hs0YjjlBL4HrYhh6V73aJquwUSDEqHJcCFwqySX
	 FPhWWiJvye7C2yTnjICYbSuCwbP0hyz8rJLXNPtmqqRuX0OoJNSeM0WMdVKpmrEZsB
	 bOv6kvaqQBD/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9445C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432851368.11882.796778209833859658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be270e50cb7c86998aa77de957119f8f45606ea08014e40c3275c5e024105c8
Date: Fri, 17 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784328513
