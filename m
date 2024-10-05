Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401A8145B10
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728148554; cv=none; b=sGaQovoi/KXyBvAOSXoa1c80KuhLsuCzm6AvwcLwKogppQJhSz7tofTmrPxJpizRcqe1duuOSiWr2FGfwttWXcNOVygzxM3x9lgjGc3N93x3E/j2YqN5hUTewct7XrQr9FPXlWahWIMwAc0TZqvjbzEdxB33gK21XwtuRKsJH8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728148554; c=relaxed/simple;
	bh=C2Iw6teXuOU0N40QnGeN9wmXEq1TyPwcHLH6CTbSphw=;
	h=To:Subject:From:Message-Id:Date; b=Er3rrbmMAmibUSjhYYBB0mpWPryLAE25p+fUGE640PIZhL1ffaMgcF6fPVSxr9tSA6U45uBltlKpnzqTTQ7+UBCnwVmuIGkSi12mRYz14edtWbwI3FlJftlm0NHV8bODDC8ftBDtO3qUH9qjxsoX1QinFGmsV2/p05pTJ5BIR8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYBCdR4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYBCdR4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF5CC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728148553;
	bh=C2Iw6teXuOU0N40QnGeN9wmXEq1TyPwcHLH6CTbSphw=;
	h=To:Subject:From:Date:From;
	b=WYBCdR4bvr51qsj9yirWlTylUXMEHn+7uRFTwKub70K+JzOF36tWCb+XRitZJnoWs
	 HCLPY9jB74OUk7SK4yhUOc+XzjYsOnBs1wPzFXgzN9g2V20XeiFVqXCF5fo7VCgZ7l
	 90HIMj6pAO8yBGvVFnEutr/234W/RyXbjT7EaYacpicDtjn6ZefWoAFXmjUfB+C8Qn
	 tY7sMl3IzJcOddCwC98zJKX38ao0p4z/HXgXha/sES16DPDUwXZ5nRjBnAhCw8EK6p
	 QYm+6HwON0g1QbrvJbuWUQPah++xb1P0iSLXN4SMSNmMITPYAJ5tv+nn6P/Atlnubs
	 FXSQts5OE+/lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96043CFB420
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172814855360.31895.12300623684264574910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af07e8f6615c976dc6727aaf05bfda8b8f05dd0bcda8a0c260cd3be22404dbd
Date: Sat, 05 Oct 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728148553
