Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEB47DA8C
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734953754; cv=none; b=BhjzXkzsdTqvH5gl3oifMoBCbebT9TgFwWOjX7DkgWCYb/BfaNvZ6bBfL5AciPmn0vYnXNsLGnm0cEQTCCKJWcv84oVdeX5KiQFC3NFhQsiUb63LB9BNYpsg5Z1xupWpyc6S8Vr+X/kuCfDz7VonYZQ6cB4buRWrXZfjZ+gbM2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734953754; c=relaxed/simple;
	bh=/Zou/fyK8ZD2Yu92RwNo4hOC2RWOvygPALhJhe3dIqA=;
	h=To:Subject:From:Message-Id:Date; b=oj452s6ZCtVFZJPYuBDHQYfCarSHx7cRY2CNaodiB/n+SLbZN64m8JYSA9k1K2fauZxauPWuPp8fmQD06NFOddYbfvoqbgbWZyv0fIMB1YGVqp69R1nlFXbYi/fJKJSrY903sYYXVQoVFlhJCHXo5U0pUNcjO3f/8RFhCI2l5gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTRW0iRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTRW0iRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A445AC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734953753;
	bh=/Zou/fyK8ZD2Yu92RwNo4hOC2RWOvygPALhJhe3dIqA=;
	h=To:Subject:From:Date:From;
	b=ZTRW0iRPxtnzOKnAMrAhvvhUKLEowRpHUw0u6iETX3vqGxVvCM0NHweVGCtR3kvpP
	 IEptH+yWhmDei4Mviu5u0e81D1k188n8yLULwfJ8sYPfwQWCVDbLKY56yhx22VX/9e
	 6aTeObWefdDULgnW1LvebDPk4A4H7WJGDeFeXjkdfVSHeXUHZEjuBhchagiPe0B5Lc
	 gtE2cJvuYBhV+DIChmxuVBp800j8jOp77ZtA1WlwltY3qPgvlpLEAiICKHdAckzVJw
	 xUeKXFB781O3/xxcr+Ft3OKaSyOFc0pX74bZZr19srFPkbh5KuEnWxts9cOhUf6SvM
	 rVho1DBtKWaTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92450E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173495375359.23979.5446915384951281442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e11b85e4d053dfb0714b7e16ce2110d1e1424189c4c88667ea92051dbedfdd5
Date: Mon, 23 Dec 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734953753
