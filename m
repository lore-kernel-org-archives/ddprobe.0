Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF64172BA6
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 16:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716914663; cv=none; b=O47ixoBZa+svt7RAlAyXzsqYFYk8SepmXpFT9SEfXxeToCNWvX+9Bun9WZCb5Z9jOEv7FUn2p9mzEIaTNfpJJoo9lv+F7tW6YqlgifN9CUYPoXc7nn+URvbDoiO1Mzveb4QEO0KUiMd4Or0DWw5HiW/FreWdmHbjZI17LfIsRVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716914663; c=relaxed/simple;
	bh=t/NIHIUmcl3+mBvEJ75Tz0KJYwfvAjD1Upgympr7n2o=;
	h=To:Subject:From:Message-Id:Date; b=gqxAKbtS1X0cWw7WLGVLUUdZICwGZBVlZsWdhT2vYVeAwnoAm8NSVlXALmoEDAFB7kEmeNL+0hc51SshbIoUNu55xfRi5h1JFV+cpxSbiYzUdax35Ku+NNB2bNVx1ce3dBQy5/DlTj4NQe74h8MioVU+xvmkllsZru+qn82e4pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a08AVQ0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a08AVQ0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECD8C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 16:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716914662;
	bh=t/NIHIUmcl3+mBvEJ75Tz0KJYwfvAjD1Upgympr7n2o=;
	h=To:Subject:From:Date:From;
	b=a08AVQ0CEDLbZikqRos64s6TpbI+NPVgQPsujjmgkYKeJikNivb/c9rZ2zNvuZh5C
	 JZAqhqR6OSm0IWluCM4ZTYdsqnAcB2lPz5rEKefBdPxfhhsl7JGm66xrrxuePkVBKy
	 gCQg87hRHcmGdmvDQi9pos+BqdmQ+UVN+bAiVtdFr2Hv2gB7PwHgwDaBuaQ7IhojYi
	 1cSNggXJE7iYu4hwTf0eLWSWgQg1Yl7uER/doP4ESij7QiuglASUYeHVo+E20ZCrCj
	 p7wdoSEaDjMkIvZ18mvtuFUeSaLsYV+wbaAxOHxst+onlImq68EeB6tNkJmGiLr3cW
	 kv2r5eiNiRLGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBE1C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 16:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171691466276.713.7937441411933309786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea5aa998d73617d139401ae0fadd590766d898cc928c562ebc1dc8605da38ab
Date: Tue, 28 May 2024 16:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716914662
