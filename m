Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39D5241E1
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710748697; cv=none; b=BZKZwJCkGk9x4VH9dQuVHFGWz71uudzlfREprkeZaXpsZLm/h1F6AsKzLl3lUTPW1GFUJqTepAP9MpKC0tpLk68O/uxiV1MD9OBBv+Dh1eXc6TkcRMh0KkZ2fs8MTHRBRdVocGdOOukyy1LeozLCAw+szBuH+7mc6d4f9Dmz9Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710748697; c=relaxed/simple;
	bh=ZhoonDRCJBnAnRc+O74RdWwkSMVnmp93xENSruFU1uI=;
	h=To:Subject:From:Message-Id:Date; b=ax8q5TTVB530VRhObjjiPvkP9FwFzM8xRv/Skt9ry8NNlbVdGV8EDC5vytOzfCOKj9nAtd4gjfzyBnFrB0WM+PtNBNoZOLqF9iEM1SahWa23o2vS79qg2DiOQ/26vF3Nd7b40p4maz1ggSsZcQw5t0/q8psNPQizvRcWZSET0Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUzjHCty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUzjHCty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73D12C433F1
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710748696;
	bh=ZhoonDRCJBnAnRc+O74RdWwkSMVnmp93xENSruFU1uI=;
	h=To:Subject:From:Date:From;
	b=LUzjHCtyn7fv7t9998kIRvjA7vPf8CdQEYnyUcDFQqxVBF1GBwbVstrSqK1PTYtAn
	 7b6wC0xla9Wj5HrkbITtG9CQKDitIzUVjYLLPgI6xqjPuuCjkz4QK/SH7GHUn/RmJw
	 sqXyUWmkuWFON1t8nsquHRRjoWyesVfJQ91OOu5IwvuasXx43hynrqiESud5BdE36c
	 ixibWauLu1+JInwmIHWgG6O7UHLfsg+xkEk6afZ0vrkuobRR1gKWOJ8BETYmbYDi6l
	 uA414HrlbGd85EFWwdGTx6TXNZMAZIjlsF3ujzublwNd1/R0Jh42LbeAt0R2nusIAT
	 Par4E5nWelWXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 606AFC54E58
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171074869638.27799.5668041511848248512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c857179fe815eac4e211310ad0a4bb46aa10f7e3769c53364f71733d12f17a6a
Date: Mon, 18 Mar 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710748696
