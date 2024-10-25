Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B19C1925AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729887954; cv=none; b=d52vfeUl6hTljTH76JVO+KMBYP6zEMT8Yv/tatjfPOBVMZHvoHMWJkxuj9BvfwmqLEnPMJoDaQYKQUkT4BhMdN5ILXZrU9yAoxDBEZv/nK3m5WVzDshoh7zmHHUDZ6ZfaITeSrdLvV/Z0zUgdMEIxTyZFwLS16RFWFZ4EOp1z48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729887954; c=relaxed/simple;
	bh=/g6hOi7cAI/QSmMT4DgS0jibB2VkvBFt+jZNEXaYGBQ=;
	h=To:Subject:From:Message-Id:Date; b=QxXj8b+HmDvMYgmvsZTTOM8ALgmX8aO2OdcZme2rEOkCKzKLlHAVlV3sQAPzeBOZlQCN+LXsUDby1lXq3dhPFQ2TCFEUbmKybKbuABD2qlQV6aWce0PjWfawqfP7v5e7Fu4QM8Jx7TTxUoPsOTde2Fh8ixScMKz4xttXfzDZQt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOX6bCca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOX6bCca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EE7C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729887953;
	bh=/g6hOi7cAI/QSmMT4DgS0jibB2VkvBFt+jZNEXaYGBQ=;
	h=To:Subject:From:Date:From;
	b=TOX6bCcaV4sS5L298it61oak93ctICRuVSuOA1efGQqw1TAnDjo0uQ09ezqQYEad1
	 frD8Q1OhIXbUooG7lt3TjMFedPkYTW2JwW7izkQYveBz4eXbWGjMxBdxSamtuPwQPB
	 vbiu4Mq0sNJvZkdJ3xwC+6q9fIbIhrrNtZNq0R1E9lFIWn8oa7SIB8s0U2BVICQ+nE
	 kFKeHAl9793G1SzGxYWi2XUlYoubrqaM8T5lg/XT8jxehKVoE/DpNRT+90uxBLRsJ5
	 JQafJocu5y0OrdbYyFnlJE3TEERS9M9ZS7nx6B0adexd3LkUvgpRPl9zJ+3XDECtlP
	 knN+Iw6qSSiHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB3FD149F1
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172988795360.11345.2826385639536697556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ea563f4ab036ee5b107495316e706a53a786d6d312c12cf37c10aaf90cdb39
Date: Fri, 25 Oct 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729887953
