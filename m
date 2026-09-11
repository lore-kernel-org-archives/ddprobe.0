Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C153AEF24
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789122034; cv=none; b=ktUuG7IEZqKzJKGxCCRYnoG4kM8EGgNyzBN/RhoKQjYAIgVnuFsN6ukY/51fUThVz1U2TfBNN+WafmAZeKR+S+2XiSdNaIejrnyJIsSKSCsXdEvHhsMWJcfD+LZ4+DOprBMLmE9Mv4/lLz0vW+suRT2UcDipxzlVslZsjj2DtEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789122034; c=relaxed/simple;
	bh=pNPkrvi7RHqc9zEDR3b3/a5gYPDXUn5buxrJ/o+Aw4o=;
	h=To:Subject:From:Message-Id:Date; b=USqbyi62Y8SoocAaHKzzeY0bpGITs3lXqHjXUbqpI8laSyzCj8GaAvUeAGuTRXlwkjxCp3W9OihHIhuNq45ASHhTo8hBDhdJXO6DIGqDb36E0cSWLG1ISgk98OLjHDtG38sJ7kGYjgDW9OMTNutkZa2WUcXbfOxjvoWg2MLJfsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1Un+u8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1Un+u8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9DDC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789122033;
	bh=pNPkrvi7RHqc9zEDR3b3/a5gYPDXUn5buxrJ/o+Aw4o=;
	h=To:Subject:From:Date:From;
	b=b1Un+u8j4UDSnsb/prO3o1qIBdcLS21gDqOFqbvdSmyyzhPU8sm4rSjSwxbQoLzZm
	 K+ufNd3p6ZMbs4TYEkynVCdsMsB6VkQ37/a4NDpLVHs1vCCKQOU9lVHQ4jousLaUXU
	 NtUMYNjzwcWrkSFFraByURuPEV+1hJ7kkdWZMf0Han6ahqSwk4orY5/uGvxe9tJSo7
	 SmIkVceuyOxeSuM/w50cPA9uLpzxwP4qaT3KSrVnlsDjktSRiLhkbcRqutlV9ZMMcP
	 7EYRNojeXLC5PXBgK/0szcd1yqU1mfgO1k4WyDuyeU/VJ2cnSi0jH+4xAhOpxfzxV9
	 othofZI9PVy8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB55C88E4C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912203368.19314.7298621675008605846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0db63c060bbb39710307290373eb95c5269c6647c4913f037022e5ce013452
Date: Fri, 11 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789122033
