Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2786F18DF6E
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752262194; cv=none; b=Okvsre2UGlcvv6+C6QU7TWjBlOG3dInF/YkwKczCUwpLb8bG46jnTSoeiuRjW6uN76DoX0O3y6dCFhAdfP2TyS6wPKyiGg+YVS4DmtZYHszM+/n06Pm2elr0QcFMhIUrgP9jquejuM49SKdWQgsvChlN/qvY6oSH+gwy1cSANGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752262194; c=relaxed/simple;
	bh=ei23j16LyJwniWjD8dhDtI7UgFAOYs+oKmSEwzI4kg4=;
	h=To:Subject:From:Message-Id:Date; b=qe9ClCwf7VgqeSaSq1zjngaB1723rSobqau3JlijFz7Qx7+rtzxGeFnLMojV2W8F15TXAQQvh4g7y4yM+4fG5lV7ZZYf8uojiLSRqVriinMxMiAMG3n4CSA0A5LIED03oVjzKWbWuw3ZkW6C7S5U6ePsk5XwtQu5eixAAB/7PGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSFQBcgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSFQBcgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A386BC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752262193;
	bh=ei23j16LyJwniWjD8dhDtI7UgFAOYs+oKmSEwzI4kg4=;
	h=To:Subject:From:Date:From;
	b=DSFQBcgXScqFBSGZvsHrzULG5UUgNkbZxw06nsP0Mq+kqtjQbalIa82uWM4Wm20Fs
	 9uzlkwueZsd7Eh/On66Uf2Z42vGsY5RU0zQ4G53LMRCriNhB7GIQwxzQIVgHAl9DL9
	 h7Dhv0hA2Z1qcnUawahFO+MekoUR/C+87wGIQjtAk1i0pDcldqfgW2lux03r1QWhSK
	 ul7iV6SE3R1NtwRAEhfu46hbM2asX9CbvkgJgCbOwoWqIo1zclocW+ydKvaJZe6Plv
	 N0a3p4zSiUg0llWcvAiuOK1nGxqfChveC9m6mHOf9IuCRUZ7TMYy8EBOzlsRRbFtdD
	 q/8qMOOEJ28Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9032CC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226219358.29323.12564718980693884099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64fca25549a37986697aa386eeec08360c20a95d9baf6b8d03c88f4048089a4d
Date: Fri, 11 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752262193
