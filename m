Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2613C3537D5
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775734534; cv=none; b=ZuBpZUUMwkkTv/k4WfE1yXMWeG87xUTUFMjmtQVOGGhHyiJxfCUSC6B9I6G2v1p2AwozCb9PIZ6anojkUNa63meDNHMT0W2pVqEP65f1zHHKargEtMrVz8Wrt3IrtrzytET2JUSJ6+3rOpIcWLztyLG2czpJtGT/I5Tfp4K2HTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775734534; c=relaxed/simple;
	bh=1wnFGXjfwvngdiCPH+aKXcy47DehtIa5kNysa65Qtws=;
	h=To:Subject:From:Message-Id:Date; b=BF9O6tLlob9luwR2yqXkZBgMNkSgi2L3BQI8ablNXhv3rwdADgjmReAvQ+SGpvNj6o54jCPHjj3WgPpMrtFB9Q3EMUUaNOxWLM1oJtwx/jjRbHjFV4u9s7Pzw94H6N39AMFWEYnHjQRAJf2zcmi4NyPfXCpErMtPOgZwCpxnPzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3HYt1O8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3HYt1O8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFF0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775734533;
	bh=1wnFGXjfwvngdiCPH+aKXcy47DehtIa5kNysa65Qtws=;
	h=To:Subject:From:Date:From;
	b=K3HYt1O81sRO/QPGf9CadrFyz89gK0RzEj3t4iAmF/RQLWpgZoKUUQUsgbRdHxG3o
	 1Q+8ZsoSrDVZGJ76GhhsCUVxP/WE9dMIzNBweUEJ+chBglFxUQA8FlAJ5Zqupq98jC
	 M7ieDi4WDz5yTawetK8noNM7jOBuDuat5DUSaAcCfDyuvJfG6mUMwwxdsSTAoeVemz
	 OYaVFBW/q8wvIAqeG1WYxPAeWZzUs/wxLeZj6SauJQYOXvc1ztxr0f+AnR/YlgQ8lt
	 4EEVQauDST69EYGG1te6gv3OyQWq3NzRnJgbAznCew6vtI3axMncYPTxloYNCqH1oP
	 3B7p4xkZTnq1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0682EA3C4E
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573453371.15943.5881624001131447501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ba130c9228b34be8f9c4f50d2fbe882f0b42b63c8d64f4fe14058d016ddaf9
Date: Thu, 09 Apr 2026 11:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775734533
