Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A3A6136
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745684395; cv=none; b=J/WuQu/MeJQFLkr/f34Q5qwsp3N7OU4LRxlg9SAHMEfZDkwYu+3VuTBgPTyODciV6xGXjKzrFzV+0jEOw8kA1CkZoj1HRmbKxAhgETAK7JShJwzsmoVJ5B6CKr0lxfhms4uT3DNlx+nhW5pi359G8sD/hEtkxKqy1czo1fxs+2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745684395; c=relaxed/simple;
	bh=qJErzrKvzVFw+yzOXIu4dxU5Om4f2ilLhZq8orFeXPk=;
	h=To:Subject:From:Message-Id:Date; b=I0IXrk6WyExXtezscHTYt2FTP1CtwAt6zNEThYm3nQIegK9xcp4ah4QQwxY68njwnemGCi0oFFD81wbEF1qDo8Yylg2X5aNgjQcyhFAz4+jbqFXw53sGSG9qjB6LBUn84qj/XdpbMcM2EYHo4g2+/kjmtgWAXeMJqwGsSssrzOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncPl2ufP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncPl2ufP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C7DC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745684393;
	bh=qJErzrKvzVFw+yzOXIu4dxU5Om4f2ilLhZq8orFeXPk=;
	h=To:Subject:From:Date:From;
	b=ncPl2ufP+4qTPcS3hk8XZ7SMtT684KpgfhXJvM74d5tG+C4TTNDfAqk074WIvaqAQ
	 kiIXtJqfSObYg6eKqGKCW2p3MWLXvcLd6uzf6MVlS0PiLXrE/Q8Ojds4n0Uc7QQCk9
	 NcYGPOlr5RziXgcK1O7zKaTFQCdExWJqkfMwonMzCUMpjCpoZRrCKmX79TlUttvBRi
	 6QaWFeH4v1lY6viJ9zEP9bSyXuTB/vYTky1pExS/r5i5DMgGYnFc1XB2psViohi7xC
	 cUKiu/8gC0B4pJNv42hC7r4IBMr6OniB5oGnHb12tl0nppKjMqhZurRIr5zAlX3b9p
	 cWa6Vkd+3cp4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E2EC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568439357.18619.8822675949741795717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd94aefc2883d19eb076a34eccb7fa4ee81b4824dbd0d25b9d9ff4657e5edca3
Date: Sat, 26 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745684393
