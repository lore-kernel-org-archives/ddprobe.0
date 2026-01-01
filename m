Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AC21F2B88
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767257034; cv=none; b=QOTIAXFxjvVjkHXeA3GgmuBVL2hf6XWhTgc4Att7qBJScF13356v4NoJd9bnRoeH4jj04tQduSLHcZcuU1z/E02G351eydvjHI263d+k7k8AcWBpCjvx5D/J6V/JP6dTmtAyISrRJryKEP+mDNDOlhG37U99EFg60ASynVlvMzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767257034; c=relaxed/simple;
	bh=B3V8YhKm4HgsTpNe0o4quGd+4e+tA1q6Q0WF01Zy++o=;
	h=To:Subject:From:Message-Id:Date; b=mXMt0sq4TTf9qtauNdgln8iKerZS9zoL6sPhc6S/xeoLUU8iulesybryiUIrxXrx4z+MltmDIsFyxCzz0dQ7QcKGtPNpFxPDfu0xMCn140bZmXvopOb7ggurLiJJCjBtodhVZ0c7sDTisPgscrZ5VPEA6Q0Icx4aWs661fwl82A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=key7VDHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="key7VDHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0398C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767257033;
	bh=B3V8YhKm4HgsTpNe0o4quGd+4e+tA1q6Q0WF01Zy++o=;
	h=To:Subject:From:Date:From;
	b=key7VDHiFJ6bFlVazwzpNAStPM6fsonwCiRcC9jPxGbmW1d5jEufoXJ9d8qqnnlKl
	 baDZe39OUCa4XOa/+IJQaQ3CIokrzblN/epkwc4Zpem4AUhG14/wmglGlLwi4XsLk0
	 c6UPxBUFTCMRf31CBdWxMR0xpXUz1BXk7a6ZUnWJIRYrYUv0ZDMq7N+eL+tpnL4B66
	 fPRrLYPC/V6M6ooO8VvJEVJoL0pCmVgMlb8qfBEXQsSdDP61xfrdvLU4btJJ8Fy0p0
	 69dto6S+ZavELuGqPmkBU4+cys+7Fk6XE5Oe+lP1OB/A3M5JwDBls074F6ZA/BEWWg
	 G0vJ6eXKdBoeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F36BEEB56D
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725703357.9100.11961373355771961986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1d45d3b204593b17014f02299741351a4034d55628af3e932a1368666c5158
Date: Thu, 01 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767257033
