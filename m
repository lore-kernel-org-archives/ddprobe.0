Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D233920C321
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730925353; cv=none; b=mc5r6szCNemxL8X/5JO8mSzWimei37IgawRhpuJLuAoEY9gP3TkSx5rtmtS5OUWxkuUYbyWuXl/knLPRxOS5quxJEuP0axyTeRBDYH1oNZK4gOBcbctgd5BDHzWOE92/mLL0hHsGqxzMC+rj89QnP9kZdj+uBxkpS08MBdEl+dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730925353; c=relaxed/simple;
	bh=+W6LdC3kRqz/kBsYXtyLvLvMiUMaBmusqJ6tRUT0plk=;
	h=To:Subject:From:Message-Id:Date; b=cGDRfDZmpfH3f7/MB1rIvU15FJRK16nC8kyrVrtl/QJFeRhEN3i8+WmXSSReVo5oRkVnYGUZouXhSmoxCWaRUZ4MpEhugFFFNelVEiaOxZjapDap5aHvsa46iqfoGp2Uc3lo0Qmax0ytW9BcNc/Eb/fmomEWKCvmxoOIc+JksAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ip2Oe0j0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ip2Oe0j0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CEFC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730925353;
	bh=+W6LdC3kRqz/kBsYXtyLvLvMiUMaBmusqJ6tRUT0plk=;
	h=To:Subject:From:Date:From;
	b=ip2Oe0j05smCTI2B2SK9Bw4VmNvtv+iGha8urbumeWdoAf1cO3QYoNyClZ8FA+O6z
	 7kSoCL4YoYfXQPsj68FuecUoiRnOy9HJ2NqsWT9fOhucMRq40jUkQy10Nkl0Gv6AZ/
	 g44/E3rxq7k7cy2aqLzdGStvoea/R31P9dgXVY+nCiJnQ4FGfyc8tO6ezc7C1Ox15z
	 WnNLDow2cHcG7cfrBayXpEBpEBNSfnKOrV6uGli7yvgl9aqm7hLBCm2e3qcmya47wd
	 EW+QIlnLURYkDnXnIAF69aZgDg2iH8FZoxy66uW++RMw2zKJ46t06bZDIGUEUZxv7/
	 tu9mMApk1hRQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A12D59F73
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173092535358.7861.14060219216690743114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 094b3c316c53e3fa6c42a3e1af2a4eff37104ee22ef3adf4c1c418e28e5df837
Date: Wed, 06 Nov 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730925353
