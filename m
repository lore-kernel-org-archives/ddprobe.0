Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F52A13541B
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745299795; cv=none; b=s8rA/8TJ4DtQUoD+nGQ8XqtqsTBEuVLajbv+znsxq8WdLuIyrJ4/iPcwV9oy7GspFhzAoWJKPRW8EOW1i94atOojeLSjjkLFokMkUsTU1cTFRRASOnlUgr+bX3QL9O8n+MFiK5qFGCZWh6A1+gi4+Xm0R8KKAm1voTSSAkVKV2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745299795; c=relaxed/simple;
	bh=ALd6sruKtzKgpGTOHPg4kOZcrI5clIh4E/r/hpbxu+E=;
	h=To:Subject:From:Message-Id:Date; b=MSfuaIeblc8JqECf5gANfGU3kPz8VYjpJ6j799oq/ZF5L9uI3ahd03U+UrNDSZihHPFGtaYSq+dZoIiPoFjiuDqYlP6nJGiYKD3i6k/Q2jmQHsl1E6QWjVZy27NZ/xiLPt9O76UEJF2C0A5bbzDouATrIQ2Sjxq2FCYPVTwYAvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJGrGu1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJGrGu1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B150DC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745299793;
	bh=ALd6sruKtzKgpGTOHPg4kOZcrI5clIh4E/r/hpbxu+E=;
	h=To:Subject:From:Date:From;
	b=SJGrGu1b+ysAC56kx3H+Rs3H+WJo9empfNLbaUJCXRCG0+1PPZPtDpnKZABK510wl
	 D9NkWlmrpDb0tBsnbDpddZJ0vesr4IHAeb/td8yl1srJ8OS09ffndi+US5EwecTgvm
	 5adpt3sGKPbtSr6R4uMmcGE8X8dtfs9VouSvzvIR7X7lOVINZHhK9k8xcAtqvWh99l
	 bIOGyZNGk2VAKRzBE4gBitpGZms1e8yoE8AZo2Lng6daHTxeqCefxNaPsx08a5yM9h
	 hSjrp/B5sBBvrdvWWbOit9Z0EHKCLTLWru1e3y0DIYOghotQhtflmYFTPErrP26tnp
	 VD9/qcE9d+hYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C06C369CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174529979360.13299.3117229284528765703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd95b8f486f9d38fd080bcf8e701fc224def36392eec1f5a6af0b0eef172a51
Date: Tue, 22 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745299793
