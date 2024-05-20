Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B231C2A3
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 22:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716243743; cv=none; b=YxCJ5Pe1bCsevCO5aVZceK9d7qSSS15FLecLFrClbHKnCELZ+YMvjCB/YuolW706s2w+XxypbICl5WAqHJDu+RFlQCQYVEqXSLSZrXpSWlBCgUGXtcnnE0X8KYWYluJ+IL6RLgtkkFE1f6CKUlFcoZ/1uUXFcSZCmlVaVg4z/5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716243743; c=relaxed/simple;
	bh=KCRahHnlpJwAAt9RyvLJ4sH8xR6vdzl8WcNXv3q0Gqs=;
	h=To:Subject:From:Message-Id:Date; b=iJiJwtYADv1qd4YldLQESxFt1pJDyhGJJetGE8WtE+K0epq44iu18zYXJrCbL1/fwGnRDerysKUh9tP/sQVBbUw2IGMNx8xl6oFxaIJWLsUTj/WAhuwISDgC4sjRXgdQP0LLeBLPvwtWcuubj0yeSSNXldPzCaLNVBvjTp8MPPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/FI7dG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/FI7dG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9907C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 22:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716243742;
	bh=KCRahHnlpJwAAt9RyvLJ4sH8xR6vdzl8WcNXv3q0Gqs=;
	h=To:Subject:From:Date:From;
	b=Z/FI7dG2L9LzSpR6Vec7jdQ7fj20FlcOPRqhg9mClhLcJp+fDSonauhvO1y8zWnvB
	 wfY08/VBc60n3g0Er/Dg95NCOH+d93VJSqyeiFNu8K9/GS40+XHddUEbLVTYm3WKBK
	 RgHoR18AiQkROfyyJKMLXwqs/F8KWW/kVrDVwVojobpUHGsSqtqheC/49v0OUhENr6
	 QmA+F9zwhkIBlyPR0iy4Mt/iYuvkdKajc5AemPX39gYwmygq/uLwmwGZRas/mwri2A
	 O0guvawgPHg0zSycK7ALB3NM8w4FP7RjskvWpIrSn88Zhgce8KSzTnYDGukZMGulnE
	 xceZbmqxDA1+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C978AC25B77
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 22:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171624374278.3817.7357911846835735142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d17bb3dfbce67407c184e65176fa6e5327da979c779ff67532ebabd61e7a100
Date: Mon, 20 May 2024 22:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716243742
