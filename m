Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5A4248898
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761587994; cv=none; b=TKzLrYq3TJCMsVPZMbjB220vXsUOz53RxpCtOgnRLnZ8R+d8PgWmW7fscXO2hEfFN9vXVUz/UulUf7Qvi6x4YDHt9gcT+EJ0joXvBPvYKRLQSKzwOrjVSygZoaGB7v67taoZgCG8K5R5jSSv3b0t9H6VtRuwcVRq3gi5OoAVRtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761587994; c=relaxed/simple;
	bh=Wuo5C7N9GFnCw4miky0vf9fbV8EJKGUr6pTUt3QwzDM=;
	h=To:Subject:From:Message-Id:Date; b=SutfN7gXwTQK/Fp9sFmg20Jm9o343JQtkHg2CFudEhLMA9jGHq1jjj284GLnWAgwTRXGqTAMVQGlsxL2Kd3D2zCpG6NIie4atWY/eTN2JcSeIxpnFE8IhJq31nYovPm4haGKkZd64qI51mDDoFVejBjpWJrFgVkz5CAzeq8rR70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xxi5FQrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xxi5FQrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45E4C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761587993;
	bh=Wuo5C7N9GFnCw4miky0vf9fbV8EJKGUr6pTUt3QwzDM=;
	h=To:Subject:From:Date:From;
	b=Xxi5FQrkt6kz128oZxKboNo+ADRaj9ociJO3feNNnpDM92hor6GPtgu8qhPwnJOkO
	 yivdhGZhwDA9l0ewqyJBRwSrS4q6clU5OUq1MhQ18Gu6Iph69QyukjyYmpsbxTotjl
	 8kSsQ6LeQglw0o43Z4YeWi1VZI2AN9x5feS4Vxf2dt7I4VZKnxt9a6dbv/31WrW9vh
	 1BtdrI6jJoKvevgVhZgR1fJoVlFc2Za+HF/rQ4deB74BcVkVAEMbmtInNqQrSBA1mx
	 4TuA1zCncksQmQoQnU/a/jkrY6SjWluNjABvIu0qtvh0F3Z893wI7gLUHZsJjyGhTF
	 TXUvBsAyOVk4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92696CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158799358.24464.8538975512983608410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da15caf7822ff36b7546ff26842b90d1308649de8c806c53a4323c4b5ab0f15
Date: Mon, 27 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761587993
