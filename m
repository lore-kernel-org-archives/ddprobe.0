Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CC615E8B
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730112354; cv=none; b=DsvoNpI7kD4SZRq5FNFuoLlt3Vvet/cthzj1aSL+TZ4ex2FvycMZmy38egKBWyMQL7QwE1b0cA7oPeKXZj7S5xdWYjOkH5yCoHYt8S+W7lijlUgC1d/bo6c0cbt8/zlHJxtPA5chkzal1XylmKZxpZxa0+INPy9XoSzZYx4wZZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730112354; c=relaxed/simple;
	bh=GM1chO++9fiZ6OApmegRfphaUvS4OTmbcclAzXAMni8=;
	h=To:Subject:From:Message-Id:Date; b=gSnJWp9KFgc7ulBUQ2uclhCTIJDPm+JizrsrpDPjWOi3QiMBflN2giI3/eup1xJyKurO6lSDcXlnkpEdZI+NCzNUsa2uX7y7dP3mNmv7Q+464JMKSt9yFp52oRJnB30h1aPaJgbOe/Vi9Ysj825j48GlZkrMODMWDs5VMa0t7GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSfKrc+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSfKrc+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE8BC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730112353;
	bh=GM1chO++9fiZ6OApmegRfphaUvS4OTmbcclAzXAMni8=;
	h=To:Subject:From:Date:From;
	b=CSfKrc+aVMdH0GAkxZiSq544cCVhUiZN1CxA4pk6jcCdSeXyYpfxuMKP0NTJEHfuC
	 LTG8J06M6VIrhGLBpu2CeIaEmi2ptLuLMZYCqGob/F83n7yGYMVQtEGolCbPW7c0Ke
	 4JzeZfnLFhTQi/cmUerNkKqesonTpjH+5o2JeoUhPlhC/7NvK+AU1VRmCV2KHH5/7R
	 NdFRBkk1VvAi8LZs6wqZ0aQNKKBNeMpqnc46nJE8+/uHKReSgMr3cklpGelGugrEi/
	 lyfnWrHQ+1iZ4k7hLILotc7yG+LL7cdVF4Q8wZiOOxVTKwVW6qbj+JuCAywdXJhvJ7
	 ewU00r40P3gWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA4CD13588
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173011235362.11397.15271101261585731218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2288a58cc6f0064f077d7f20c0a81befb19878673580ab658354406e30976941
Date: Mon, 28 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730112353
