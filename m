Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F7124C664
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 12:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743683994; cv=none; b=OCjFS1chXPS7Ohnt/dxXEa4KMWqOnNsGwibafcfGyKlFGwbV/q1kDqflcSw1vTfpJNjiqg019WQUnGGxkRI2rDXpCF707y04LoeM1K7p8ZbW6BFqm1qKtqnCReu6eWIC5S/TbaL3YWB5WntnPP2dhvcwpfg7I281cTPdSWSE9bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743683994; c=relaxed/simple;
	bh=tm0Iv4KC6qsW3EvzOH5+tQgAATNGS4h4DXKQDQpZMhg=;
	h=To:Subject:From:Message-Id:Date; b=GTYkj1Eos5wYN+802IftRnOfkzCJJU04HM0z8TCY+G+f2xLAfOuooPLKR+Zw0ygUGb2L+TxRFGDvbGPF3xjochXftjVijIVtW60CY+xwhNfnrbCqgRtUQ7zwOkevJldEbij6/S08dIvugBcGSOErD7g8FPwClCwRDSLEw/34H2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axKPk3uf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axKPk3uf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E95C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743683993;
	bh=tm0Iv4KC6qsW3EvzOH5+tQgAATNGS4h4DXKQDQpZMhg=;
	h=To:Subject:From:Date:From;
	b=axKPk3ufNnO99uXC9e7Z83cHhFdskQ+wKC1Ko5sW6egIcJ+6Acz6qyyIlwPbiVk5Q
	 k7BR8ts/kcY4SkNzB6ZV3xnnfLVzQDhbVbVqa+K2Hxn3DduW8W9bwrWC8GWFNcKaPu
	 wezYpUyzHvGoxghOXcDVH66qVbJHHT5ctH/kwMi5b59M5QjCzDLT0ju8vTVJA0kUGm
	 R6jd1JYEkY75lMBdtF2ngClIjsTszP9AKdKuAKS+xn392zP5/gUBr6QjXXJKnameaV
	 HrL+ADqU6reR8884LLOXv6nHHEF5takBRLjKe4vEQDv6ihmJFdLf4sMIVP1wRFwQ2m
	 5gEi/hSDQfVoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969FCC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174368399360.16551.15608648282525036996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8babba55779a9701f6f1eadc56f9ba7799c0886162abab51049c597fa673e152
Date: Thu, 03 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743683993
