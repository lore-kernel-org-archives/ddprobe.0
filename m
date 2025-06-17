Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABA61C54AF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750154994; cv=none; b=gKsFDmi951pMrdq5kaOfEoYivBaDVtn1z7cFajehnttowmbeEXhC8dieYUkm//sITnRpm6Ep43q9b+E/+i6Pc2ZIYlvNfr8BSzI1JnjMXolEUnBjlVMvqFPOOcqqvG2vYOXED/KvD4raRGuCUl7NpU/XxButQ4b9R7I8xVhrYd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750154994; c=relaxed/simple;
	bh=2cADdUQtxabujN3cDQf5KNTlM2eKRgWYaB1aWCjR+EU=;
	h=To:Subject:From:Message-Id:Date; b=Ei8oOZTjG9kc2O2PfNJdl2ijI1KEOhnFBtRPoHrfn70H0/+DYG7oc9aLNyCFEkjZWJHO7cGk540CcyUXG3bF5Go6s+Vtq+9pT0POdJdHUuVxdoBNlHNCgoLpsqxmO2K2wxOxMCkij7X50r00r4baXhTh5+rPnO3rTTz5Kg93Cw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKMUlK/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKMUlK/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA35EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750154993;
	bh=2cADdUQtxabujN3cDQf5KNTlM2eKRgWYaB1aWCjR+EU=;
	h=To:Subject:From:Date:From;
	b=RKMUlK/B7NZGUrTZH1VhKRY0C/8/x9/xeQZRkVPtuwJEd6IoljUl8T5HFkqeMqGBU
	 kECNz++8LSO2XbBx2mQkYoQlAJPLWMUo44g9uf7KCijvOp1LaEW/jCIyrM04Mn0qRa
	 PI91fVetGqqCvYuivtktBUtiNfKUUVWeqOPUkrT6DWtJUQKvjsyF2cFQMxB+gmKw1V
	 WJbCcRlpwoO6PuaaDsLNqv3p4Pi+v8BDHLEooFrwAwE644XUnsawKMLr0wfZpbQZZb
	 QcS6Vtbtyd9gFoNu1Yx1ED6IF/KRTtsayUWc2NUSGOfdeei4jPRbFSUZJTo3r8dPyl
	 4GUFYoAQkgEBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B82C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015499358.22404.16906020400922933396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 329c28e2deb75f386b40aaa4e6aeae01ecec6d7cd2c82ca7f50fb4c54e42c826
Date: Tue, 17 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750154993
