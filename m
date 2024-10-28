Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101B91DEFDC
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730136354; cv=none; b=pLKgqhFHsUn9U5WJsHlxIKR16tnlz1CEXY4qkWRT3nU2AZiwkTQHxS1wGNc2rid6l09bvVRhmAvFpsH0p6y1cIYmDkYxAmOvndPRSsX380tGS5YTOi2cqRI3YuYcT5LEK4YpJ2j0nEL0giHE0CFNch3VmA+eRURP1BGFFk5N+t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730136354; c=relaxed/simple;
	bh=yo/5pMni65JmRLaaTZXAbjP+7yAxw66phsYPfecXKPo=;
	h=To:Subject:From:Message-Id:Date; b=gsijdUG6ADYnJcwhvcxSRqbekcijlDwLQnFVHbBXpAKPNPTYIreOS/hWWIE3ILpPMCQAFUqE8vtpLKftbn126euyUNTZYojqMrMp2u+fEekbuDBXgGkUaOSo8Str8Kkr+dMC9V6qWU4EGTbCtvfY9CA4mBKZNo9rju/OxIASRNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPgS2dar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPgS2dar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A730FC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730136353;
	bh=yo/5pMni65JmRLaaTZXAbjP+7yAxw66phsYPfecXKPo=;
	h=To:Subject:From:Date:From;
	b=lPgS2darXGMDTuCl6MlVTu4FehikV58Pbn/PvwyiXdVmLFybFMeaTdZ2K9U6lkY4j
	 PbexMNvzoslvwiYPrXpfGTM9Ae4Qzb1QBZfrsTolHr+ICTd/yI/G6c4QCSMwuyT8rQ
	 Umr+SDDoLecZCsCxZfhMZujqC6OGPwvMMgvXOrw9CEH2HqKGwf+pfbQJWQRb38/Fla
	 Ht1S6t8PhBaM8zAahYRVfvcDWC211E7U2FhW/JFwu4KuH9+4+3V4QNLOOEdaHRGkma
	 MMy6ApjLluPzptFs6TIZa82KFnpxtGJ8d9NhM7E3HRxFIKlW3mYgaCaNeg5eHj8BTn
	 Ht/VdptmpYmig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968D3D339A4
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173013635360.3075.9412011050617117585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29c16c422dfe0f509d41a33379106b8d6323f7c94542c469cbfd52e53aba062
Date: Mon, 28 Oct 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730136353
