Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1256D1B0F23
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765140174; cv=none; b=fTa9U8m2ilLMV5y4Jo86J3OLzcLGwSuBL5VJytXE5upU3m7Q27BFVuIu6kUApe/pAsbpJAjQh1TAcau5FJgKcdkcQq8710QYPk8os3FIJBqiKyAI/nKR9yiia1NbSZe2xdhuLrcM9zjNTNV/Ad22fpCqkvyEnHl6ezfjxoOO30I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765140174; c=relaxed/simple;
	bh=sk502z1ZUZUTub0W8YwLnY/c55fbhttwa/sorHWUqi4=;
	h=To:Subject:From:Message-Id:Date; b=o6A3vZ1xF+dNePFOmKWTeV9DLavEBy8JwRsq0SnTecmE48sY3FzPAoIT0X5ZhcvohqmytWPDo+II4iUBRnuxj200deXWqZ6wv2I+LhfTUlIwY/RO89PvWtcrVlr5B6YXUxsbOppSpZlE1dBmNgyiwBLPmYfV1PLuB5BZ9CAd36A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NG2agcRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NG2agcRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7118C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765140173;
	bh=sk502z1ZUZUTub0W8YwLnY/c55fbhttwa/sorHWUqi4=;
	h=To:Subject:From:Date:From;
	b=NG2agcRi/sthcOqBVBa7G/jd4uIdq8QJfd29nVNaikCfXi6WiKbm5KVHbMOEbFfyh
	 QxL7V1RzlEPwk6P0xtxMpueT8y6gdq9p6wOxHP4H2K4jIO3lsXrqPqTyFDbsfOUvqG
	 k1XGojK7X58NOw9X4Vi8iaufL2oCc5bH+CXpz0zks/wxUlManXImWfbh8oJkT7aGHv
	 Tdounvto2nuG/p/5GwzlwW9h9sYdkQcU96hJ6BqQyQ0StHSGMFDwopgW0MqfoDn2x6
	 5d7oFOkyMsuCldKC3EB7EdZcVSbML73IVDQiB/0epdJUXgZjAbBUV4vKspl9wF0ScQ
	 jMz6DqhraEGmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F44D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514017358.9034.11165254270466630249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac6d4914a4bce74942badd3618782ea1bd0318facf54def50ccd94c2fe376a3
Date: Sun, 07 Dec 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765140173
