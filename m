Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400C51E1A2E
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727862954; cv=none; b=a202deChEpNCUAnkpPOr2dl4F8Eb1eYlXp0Vk8AnOpnISGlwSUk+EsuI6IbfVehdnXhpIepQiRcHW+HtsvmGbcHpffkn6Mab0C49LHkqnsAyXUGv3HF0Yks09n4lvFPW5zs0YAPsdUj4EOj44diQo0IPgCPuvxqXh9uZI5E8Xf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727862954; c=relaxed/simple;
	bh=TP76nrrkKo0KK7nOODUu6iNUdfP2HJobWDELk97zPmY=;
	h=To:Subject:From:Message-Id:Date; b=YP0xliiP3lN+tShItlb6uVFQBIQqCZMmPR1CebR3Sz3McHjDZSOExByxlVc67O6I9WBneyeTLsIpnw2LStmc4PyC3PA/1CB5r1eWlBuXs2hzjogNv3KGCoCdndMGpaGrk6+j96gEc+wiRp+m/2gxcupvTzGwSAlXbpuunAJwd6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ev1W10fu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ev1W10fu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8664C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727862953;
	bh=TP76nrrkKo0KK7nOODUu6iNUdfP2HJobWDELk97zPmY=;
	h=To:Subject:From:Date:From;
	b=Ev1W10fuTBTg5jXkTLy/N7rpc1+UKlTolnPUsEpYPXckKSlDY/VY9whxvATsA3ojh
	 ue/Hgcq0VCrXZMgCw7YzUSPvZ1An4MBlAFaf/lxGXj1vf3aeDPiyG5QJDVCrW6+xSz
	 9EhaqmkKkWUamTiBRq0zE+hoOfr47roB6EN8fnLd3oyaW3579uI3v7dXgHkojYPLLa
	 qsPzG4/Zt4DCdx9Iq+Fh5FVA2sUA5sKe/9RIK2sWOW+D9LHBwKCDuup3rSxUICpVvE
	 ltF8mOu0Ihs1TqferEz6fjTKeQDgpgvkxDacZDMIIKUZSa9qLx8vLwKNLr1rg9QEtp
	 9gZdIT/3FVuww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9956BCF31A9
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172786295361.8274.18181412589525263969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449c5925f308a5c98ad219c814e4a9cea3370e748b0485632a844ae4dbac9c91
Date: Wed, 02 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727862953
