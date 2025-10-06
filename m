Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0838A1A0B15
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759783194; cv=none; b=FtivwWCq6mj+w0cDty22Hugb5pIVVgMgmxfEW2a4LX3pM7rdrR157JQuKhAJO7csE34e64MdAQM5la4A+XFdYj3wCt7eMzhroVuZ6IIVedMStBfOMgqw5MK0A8e4YdcQQCrzNy5LIea0feMh2bPUtfLhgX/21Bw8atEuVOvvBVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759783194; c=relaxed/simple;
	bh=uFY9FkX+GGgJlp8z0s2nCccavsywCXtrDTE9o3Tyba0=;
	h=To:Subject:From:Message-Id:Date; b=mvxtYEumLJmT6KbIkx3LKAOgkt6B2ezDfzajCEdyENvwGr7uHJMUyWck89oRVs2+lVBRgPqpavuRW1ltGSzbKRrBwYY8cUnN0iJCXHuizDzxqaovwzX3RUMmybx0+KJFJM9+bHWq2kXNqhh2HVI46naHWelm7iBqKcqJhyhCojU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2ElCJx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2ElCJx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F666C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759783193;
	bh=uFY9FkX+GGgJlp8z0s2nCccavsywCXtrDTE9o3Tyba0=;
	h=To:Subject:From:Date:From;
	b=F2ElCJx2t84eWEM5BE6B9QL4bysmbu0jFdJ39qsokCLItEbTR3O1kXWG1ZyruynEu
	 d7EufNp0Sz/4mtMOcg2FU7ACDd44j+gNGkEbQRI1zIpqV/Dp8szNpqDPRNkJ6nJcXS
	 9Bg/+EKIFN/10z5jhsldfBiCmzc3kof7frTz7v5X4ZvfOPnak1NgHmacGqVsSB0ZkR
	 ILQPxShvOo2IMdTd/RLqdi12Kqe5uVWy/g3D9c4oYXPVK2/H5lL7q/+Uw2T2yu5OTr
	 B1it07f7tYFZcZJoKrZTOV5UNj7XFf1Jrms3lNvwHlQmXBLVYRX2k8mMMl41n+Aavd
	 HQGbxsSgE2UXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902CFCAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978319358.22873.6273081957346366961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ca879d1575ae7b87f6fd09a2bd7adf56b4780ac325853ff990a5ea5d61c905
Date: Mon, 06 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759783193
