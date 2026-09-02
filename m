Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4706C2773E4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788336034; cv=none; b=SncfZhslmQ8x0vqeqKzcuVC2ic8lfrf48zYBeCXMp1/eRPtn03nm70iMhStt10WVziHXMuJzTfPkz6QNmAnihEtHF7G8a1Z4/Ad4m8w3SSaBDGLWp0YE7zuyopZOm5h5w2CwHaLegofejQm0Prf8Ws5zC317NoF5+TROKhzPsbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788336034; c=relaxed/simple;
	bh=CGE9/37cpJvpQu+lKXvfKq5hvFxExeidJIWB1SDHPRw=;
	h=To:Subject:From:Message-Id:Date; b=k8N5mYqUu5viBetjioTmiXWR5qlPO3AbmOaVb8r9fpyCAT7m91JRVvzB4K7oiDG2m02M+xiFPrLgU8H8FLUamurRB9J8IpcIQV1VdXcSRhySRVqwuGU287286hrH5RjfE0wAH3bzUaRxBN/K33rOvKSDc06zfOSs2pI3ggnHABA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIN2THTf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIN2THTf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC71C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788336033;
	bh=CGE9/37cpJvpQu+lKXvfKq5hvFxExeidJIWB1SDHPRw=;
	h=To:Subject:From:Date:From;
	b=EIN2THTf8NgtrTYe5eSOlhHvsngK+pau1jfCULdQbhLJDxTvJ7dC0oOb5EeWBjVXx
	 r23ocR83yWOn0afiulxF0VpMwRBJYznrN0QZMvmTiYXAHzJN1kaMjzVhwgPUuU68rX
	 aXKoAQcWKCdRADeP7H2aDuF38bbduQyVgIixF7p57Ca5bqH9+Fmp4qvGj6e+e3azdk
	 JVo9VtZ3ezG9+woYSavPdcIZ+SY/Ff8RrnGGun+hqDMJztTNOOIO0gD+wxz+w+z/kw
	 BhaPXkgA4nFZYUkf2Rxras5Ot4jT28srCLZMODpD5NALXbIUDa3dH3HwUXMoQMVKXj
	 G+LJL4QQ2pecA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA210C61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833603368.12097.17106032574971107039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad605542b5ffd81b28d2a9563f23cb245209c61d1b2f9cd551afac3d774befcd
Date: Wed, 02 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788336033
