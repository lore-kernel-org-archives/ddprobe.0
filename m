Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BCA3613B
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710514097; cv=none; b=iyghSXtYshV/dir0GysRLAmZ/ZA/1Tdk22pIoLHzpOsCi1NxyRUOwhlwYtys9n8bMwY0267bUzbzq9aXxjlxQKO1yvS2wQqq8OVkrIVz1Ui6cdQmmiN/235iCalt4BWMsAl8E43I8kaTzBc9T/UXk/2xRmw+jcVuqZUgaGIcrzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710514097; c=relaxed/simple;
	bh=WWMJgzQPtOWx3sbTj7GuEDLBPos3WpsurbwcjEX877o=;
	h=To:Subject:From:Message-Id:Date; b=agse8ringNNeZNk/ux3QKNuFsbVXrrVEW6qlBoa+hLxtbmhuHycdXH7HXkNII5nYtKTMg8jMi/HqDczfSNnAiNr0fpAq8LVsfvg8yUzL/lmHfWher6i/Awwl3e1JgA/HbRB2OGaP81mOO6p9QqSXoTSI8BjBmoZgbRW53ExXG0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLkCOnOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLkCOnOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A85FC43390
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710514096;
	bh=WWMJgzQPtOWx3sbTj7GuEDLBPos3WpsurbwcjEX877o=;
	h=To:Subject:From:Date:From;
	b=dLkCOnOiGOtLsfkEjWoZR7BcbEowC9o2kvtwaCNfxK8TmnKzRchG77wZ60KkOUpJC
	 jVcmQh982C2jg8ro8UwNQ3Y5F5NR/NGbpttSABppTWwcmoVKzAHwJAIWebzg5OCL+7
	 hYQq2tDdodlfCfCwx3muG8/zRtw8T6RK59BiGAXYT4YT0ua0wMk+9H4OCQ1xyjACzd
	 tpRAALZ/sTjjq1MNN3HSOBs7NQt0bO8jHYludvrI9vitDqhR4yfT5b2VrcgicHMDdr
	 C5ziMfk5nbhR9X+2fWfe6lecnZieJklFD3qYsfXfX3nzOZxmjfOS4sgQ5o+7bJTD5f
	 ipVFsG5t/JTiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F5BC54E67
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171051409638.19536.8095371786027076407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f6cbbc80b232ef8dbba610a16640e032ca63280d20fee8aa85d410a605c058
Date: Fri, 15 Mar 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710514096
