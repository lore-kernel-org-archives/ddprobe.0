Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366332A1B2
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766624634; cv=none; b=cGfrFTSKh2hgca9gEZwn2pEPitz5lMrkcu/9J03cjlLS5ySOwzJ8HOSn2/yhwu7IghV31ziqjUr/BLRLzetqf3iIFeiZR0mgQLwoa0+WKJTa0sJgaYaYYy/TiAW5zX+M1y+wokU5D27H1lzd1giTAGrwk+9v4O5UQvw/zo+Iumo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766624634; c=relaxed/simple;
	bh=EgIoSSHWdRnGzDYd8VGqxTyZPCFn6oM9uApK1tJKf84=;
	h=To:Subject:From:Message-Id:Date; b=lqtlk76BGXbLjwzjVNRC4fXJ1NgdWiJwif9351dlzhwa674CWy7LtiLPnvrVxwudmU5O7hjId/KV8pVtrcHcgCLpnnpsdYa8kJoSU/rr8GRLXYYmuKu+HTC5jpj4t1fKKnGS+9241bZqMS7iruvWhsA3qu7mn/THx3T3Rv7/3is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVUoIi4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVUoIi4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D69C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766624633;
	bh=EgIoSSHWdRnGzDYd8VGqxTyZPCFn6oM9uApK1tJKf84=;
	h=To:Subject:From:Date:From;
	b=nVUoIi4DoljBqtDfVUD9C5MPqfzBqTMQSvqotZuXcxms+Dc4Dio6Q4QkycHnirTaS
	 Nm/wlhr0nkPcKZGHieWHmCrcnKTYP56b7noHFdMW80PzQw3v7hJwdopegWWeoshwKf
	 f1yJ0X/pAm/GfHHjTHMFk1134y3wIUtLN00g/eBJxEG3941Po1wytu5lDHylzr0q0u
	 wZAqvnw/ezeEaBFgGm/khadYQYMmnPEW4KLSG2dM2FSYBXSNQGHaTOfPcP4DeyzTom
	 dHp9lApbtAB4NCg8nBu3lbKzF9QokMNKcijRzLLIVcPZDczHe35V3nPW08Wf3KT0Qh
	 +MnqVw7R0vrAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921BFE784A9
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662463357.4717.205209200447482276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ceb6731909814fe72e47987c225da168844987fe4cdf235d8e8ec6c7e50183
Date: Thu, 25 Dec 2025 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766624633
