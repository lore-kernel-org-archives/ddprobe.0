Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BCC23D290
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770267834; cv=none; b=KprY+5FFYjR7UNTQ6HX9MakEoVPr4e2QOwsZqPYBRfWkBQsb9Kx+ozgb/oKqG/eVlTp4FyLHjTUbxld3kbigRG4HF8KmXvs7GkqrFm5FNvul1k2cVTfV7r+3kwkN7jRl9WkLhm2/O5LmpKR60u9NM1E0ZA10TSBDs8f1lKJfeFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770267834; c=relaxed/simple;
	bh=WaZFLV9h8QgI2ZtgesEwh3MD6US+7/NDQShkGe/4SVw=;
	h=To:Subject:From:Message-Id:Date; b=N6z0YgjbNak/wUE7XKBWp717YFzoiUDJvEAcgOUAtsBWmKM3/tQqAGzjU6LN/QhKmA8dOHAMrC33ggJI7HF3XU9aXbVe98vGpjy3PXA2h3lLv2UzyJ7kPUEuC7Bf718j/emlaN17oeDMzUoLGR7+QBGQko5c2Pl8JVuDbIvXaKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaGcw5gW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaGcw5gW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BD5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770267833;
	bh=WaZFLV9h8QgI2ZtgesEwh3MD6US+7/NDQShkGe/4SVw=;
	h=To:Subject:From:Date:From;
	b=OaGcw5gWzJBO6YzMqRuK6cfMdXCW1/zzF4sen/WJAmdzFqpH1HaItpH9Kx33D1/xL
	 3YaCHZ4PNX60KSbdEg477jAVRVC94lT17Ahm0QyRHBDBhgQXDkvhBuFYXxCA0KtLrY
	 uqdoxTfvuz5PPbEx0RbwL8+ET4ehTsPZOVtLg9MrA7lrxc8uVCN2x1cnjngmr9Pl0d
	 3yDCfnBS9xtbonTLApgNrqPa7tHN3XP4qbrenoTTfbGUmTM7u6oTOvQRxmfVcEIyd9
	 CMGMl/25hFHd3RZt5pK2lkilZNzK21/RCPRntezFtxZ2DVpahukPLkm/430+C5UWcC
	 rrSblZVVSVfUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959DAEA7969
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026783359.10862.2266214019320970030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d01a1b1de092bc91596f006f2af7807327181a7763a21c2f0e0709a99ab4b71
Date: Thu, 05 Feb 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770267833
