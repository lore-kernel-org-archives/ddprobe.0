Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A39817993
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771283094; cv=none; b=QlAz+W42qsUHzfV3IttjH5KyMf6+c76ieQYtzDhl6pPFeQPiZpGUbSclSy+M8zJoNPxW+/PdJ1Td2agVvw+hzi+rXY/lGox6ACuLPO7rA8dzQ1ZzXqFoEEQzXzvD7k29h5d3QEKC5lLMyh6MDgIL2mBZTFwMY0gvs3V26dYaWfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771283094; c=relaxed/simple;
	bh=BWKIqEHjiBxEBt0+ggmSqQO7oZc2Ye/Rtk1WsyUGt8o=;
	h=To:Subject:From:Message-Id:Date; b=tUSWZ0NacyX9g0p2P7XgwKfA2XqmvH8aR6NKDit5I2ViX4M0tGlQ71Ekl15uc5MRq5I4YotgI/DFMQ3DmgJcr4C9InVHqM+lH5ScMMXol5fuHhqPIICWWEZcmsKhm/G+MjwTNF1ZDMsEhk/LNssYCu6uZy1o2rV++MjibC5C3/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSG3BUOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSG3BUOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1B2C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771283093;
	bh=BWKIqEHjiBxEBt0+ggmSqQO7oZc2Ye/Rtk1WsyUGt8o=;
	h=To:Subject:From:Date:From;
	b=ZSG3BUOQRZemzjdH5v6HKdnMC6422BenDrJDQb1zFq67omN2wXseDh/3Zsr8yBSsA
	 IMXkz/O/lR7HiipkVolEz0LLzIqb2C32joEijs9GwnBccU3b5zb25LOVgfMfuK17mL
	 hBaWMlM9LTfgxsiX9r8/In55nKY1kq5x/j3dkJjLb2Z5kZubY96MnVug07OQROLJDY
	 Ziz9uqGb6L4BZCfz5aOJgcXDyxJcvVjpySFsaXXKPMPmpqHMUh9RPoOmIhv0G3cQu+
	 sNdv46MqSrlW0ovdgE6lohYeXJUz2toNY5eyT3jbjYAfvD1TIjV4gK2ceZ7B9mQvlC
	 7Qg+mo67Nlqfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C788E83842
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128309362.15321.10320802574711063274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 783147eb065963c64fcbb2714e6b7762268adcd5e94f4df08aabbde403c01b3a
Date: Mon, 16 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771283093
