Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEFA2F8BFC
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761164394; cv=none; b=EmiRJA6nyb8d0VpKyMJOQtLW6+4CUXXCBbH8MAQQcc9wbcbh5X8tZKIrgfBfWorgwylDgHY7/Ralmi0aL8wc8kYd7SqjooE2qACBd0CCwIIRNZkkfOvCRs5CnbIX2qRP1pMrUGeAr4WB1h1sd6hsXBfcdLmwFz/cIAW9HPaYS3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761164394; c=relaxed/simple;
	bh=RLa8MFPWlDHnwx6jqQ8kpgced/4HwnZQ6kiLibgVbNo=;
	h=To:Subject:From:Message-Id:Date; b=E9u+3uRhM6N8I9VDomqbXoAo1PXCxjA79/j+iejKnbR4atK4UzGEAXSmk3asrWbAXJXvy1j4CrFpYy06g59k2Q7/7NZoVlrybPUg+o3kCs1oUjGxb2Qja+e73iO3guQp3442TGQNbzWEZVGwmsbfpdVnYEB2jJnZ7mLDy5RNVmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzzXFSwf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzzXFSwf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B09C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761164393;
	bh=RLa8MFPWlDHnwx6jqQ8kpgced/4HwnZQ6kiLibgVbNo=;
	h=To:Subject:From:Date:From;
	b=MzzXFSwfN+wdrIIeIixhR98t0HpmDu3WYw4G6nKMy7pEuoAZ3sPMHES/9MTh6ayV7
	 +qqa3fzmVagLqii+fpDMf2YNGz8B/X0YdSwGA4lX6CBM1H8wrlvw5NkMmF2RTT1VGy
	 8GfydRiaOjcG/eaXvJ9xeZ0pcRMl1+ssT58HT8tyezzBECa5LB3h/D8tAhYIxbL4Rk
	 eECRqiGFDPClrjNr8meUGYGD/b0jp8zY2wNAQKnrZ1MxE7a1foCJeuHDqRjUSLvbkr
	 1a7kdkm8xrRzWerqaU+kVzxmbl5sVbu+sC5Tdkc+WUBANRrnFx/uM5ZVUtMWATFemS
	 SNRvBpAxD7mIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F970CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116439357.3282.12439485772972349016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 783aecef373834d9953b6bbd6513090cbc31c26fac66b73c055f15c4531b00cd
Date: Wed, 22 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761164393
