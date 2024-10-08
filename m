Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33596762D2
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728366954; cv=none; b=BqfrEiaP5YMrKz2p4JHvRW+FMN8zYsXeUu3mw6brPfUUzBx/Dq7pyeCxmKKnBn0p45ymRUkuJx8wJmQmGK2fCJEn0Y1MRRg+GTNDZ1JIJb8yytHrPc4wBAmKyJprnOPS5SdISWdZK91qkP//in3YKxPJSSF5i8ryNbFrnvkcPoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728366954; c=relaxed/simple;
	bh=s/KdB7zcfKMfRh2KTnevSPmmJgsNdNrqYXFQ5vG3e58=;
	h=To:Subject:From:Message-Id:Date; b=ppouKrd88hc/+2/f+X/Emsx5ksC3YlGmoo/B55q0e24BPGREItKLHyiZOMo9SMpF0SO6oifV5jyRrkU8TyQRonMowGPD49rqYLkX6sI3WsAZQ8Q7SS8qBYCaSxW0vbYtcuGyE/GhzuTZDy5Oo/V6n9OMQAjkttnMSLo6wkXTrLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yam0Moq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yam0Moq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A20C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728366953;
	bh=s/KdB7zcfKMfRh2KTnevSPmmJgsNdNrqYXFQ5vG3e58=;
	h=To:Subject:From:Date:From;
	b=Yam0Moq65ry46pwbOOk1ZCy1WjPqKXkXKSZwlKfOpZ/zs24a0IErwbVpDdE/FtcMj
	 2qiHfo6TZKVQ1YoWoKrsmVqdXl6kGlaVPc05VH/Z67N+XFrmgBOYjj9usCHYsYjRgy
	 iIHwb9g0RtQl1V9Mv0vfcYWtprgELi43JtoRUmYfTkwOQvavP0Mkyf0aR2yhl20FJa
	 Ms2cWosIDSMF1bFl7K+1flUIDMcAtG7oJY9GVSQD3VoJi1L4D8WWf1m/k+mUEgxqCB
	 pwNWfZUwOcK9OMh1KvLqxAQjOOEDJZvKa1DebCQh/uP8ihhLOvhqCYST3lW5xMEalE
	 EcoejBnfz671Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933BDCED26B
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172836695359.22347.4476764032605066656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e638b5669d86da57d769f395101a42ccc2dcb220d81eb643e2dbe242692b69
Date: Tue, 08 Oct 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728366953
