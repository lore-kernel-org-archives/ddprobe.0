Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C3717A306
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751117994; cv=none; b=VDxzKsyXYScqaH1RfGhQsSaw4fFvVqob3ff+tZ3F2uTYTCUB7aifnZ89qpEp3Svm378wFzsHTt+K+cifhgmZW7to6Yoth/fgNTBpURswOC0uQlKCzLCf8PQiOa3WqTxyLRr/btroCa5nl2ygGfv0WEbYELQIyVRkrGVqUL4eASQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751117994; c=relaxed/simple;
	bh=aK88Cam9f8j5fWhQAwuI92ZcjjeR5GCj2G/m50olzHU=;
	h=To:Subject:From:Message-Id:Date; b=Xd1HLWfMqpc4/VHe07EM7/fblWPSveJRSrQjMiYLGQi6uV3XWZfK6p4Epz/8kIAfJcNhpcPKRUopUM5yDsJCd7HcPWC9W8klWwOBx30rtagevmgAdufz/8u4aL8a+1x1dcYdoKq0S/oWmejHfz6bQXV7526Tj9Wv5ZaWO322rtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKBR842h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKBR842h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6680C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751117993;
	bh=aK88Cam9f8j5fWhQAwuI92ZcjjeR5GCj2G/m50olzHU=;
	h=To:Subject:From:Date:From;
	b=qKBR842hwwSBXBCm1vdqqaMjCcApyzIl1ioBW6/RW43lCEOk/CDLlH4vunS6dnVOz
	 tO23EJO0AjqBR0Q1HK+qTnm8dPfQWmikR2qXFnq6h1+zIbU7YFnaQKcAtxpcqwbz4x
	 zG0HhtPCGtRz+s1tn9LRL3RVAIqtvuaaLbbD10j/qhidfjgul4Ll7n+QWVHOM2E9R/
	 LxgkUPIwjDDZ/JXrDBWy3dQAMJkdqxe4POMqQr9yaY9XV305qhoAEE4Oe9a5EsLKsW
	 FhoKIFMJGxz+K9um8B7Qos+pJ0rPWb8dmIpaM8XUG7yFjk3W4cA8L7hXl0jxHl1x8y
	 3bFjOWtSBMBjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92083C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111799357.28467.969255404217668356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09475e0bc7a72ae9a3fc6dc6fd4478845cc338d759fa7b2d969e71679d47bfae
Date: Sat, 28 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751117993
