Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362631D514E
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755658194; cv=none; b=YLL3EG4WLAoy2S4O7+v0+kzUki3/gLMOXLgCCIUwEVlmpl3fv8Yc/iji930rioLIwjMKVrjALhWqhQ03+3nSJt5E+zWSG46YPFMFFmuSF+eWovTuANbn0pX8PeJiQufhsI9q4+l/KzgfYMnRlhAnuPygyruZOY2WnVsIlBe0gL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755658194; c=relaxed/simple;
	bh=2o3xh2FKxWIavWDx5x7YT0cvUsNtly6N7SJNfuw4mGs=;
	h=To:Subject:From:Message-Id:Date; b=s8HQwiLF8oEYjf5PnrMRH5pjZWFWcQjutSm2NXSIX8JJqWtG3p9e1zJOoUiljQKZLCQhMOxyp0WCnis2XriigyMIETgts7GzbrvzpdvYv8ll64TAlHDf4ySYzCzIR4jigWGB5dHAWXoCzlNb0BDG0Txhd++QFHXiPFCNYGcpUJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSmeY0De; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSmeY0De"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DD9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755658193;
	bh=2o3xh2FKxWIavWDx5x7YT0cvUsNtly6N7SJNfuw4mGs=;
	h=To:Subject:From:Date:From;
	b=QSmeY0Devx7/0aVHgA07LaafhfCEWnItHByJYog9/QcYn3SzGsEZTPqdhLe82fLoR
	 CMJ8WSKqq/+qMJL3FGMLv4aZuMkDEe2siKZHYGzwxi0LZc1JrJAhzwdhCoq+w2Mim0
	 DYuaJtZOxj/wRLoIBSdhTMMPfMRZ6h1A648t49xjOFSsqsCk7TJfZn2M2ZOu7qEUnt
	 JVcFNn7LgyKz7h3ckaexmEOzesyGgN+37qEoIp140C+VNv3hdxrKEWyEZWOOo1Gzu6
	 cWDAOpDgC/F4OdjjBgNmyPRFUtr6qHsrdNwig0OsxDTGcAcIc/o3OdetpyZ6f/VBlS
	 jlZEJWT+gkxnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917DDCA0EEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565819357.12986.466393427995474349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7cf5cee703483d9b326b75d1eb1d48155de349edeed9aa13799649c1185b93a
Date: Wed, 20 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755658193
