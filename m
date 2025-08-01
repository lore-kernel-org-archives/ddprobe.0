Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DE92441AF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754051394; cv=none; b=izHgdaU/z/XP78zVGvxtaSYQSU0rWo3F6p7+grWQoeiNOWDrohR2o2mmM40w0+pIq59Ie3NI5wFdEW/E3NBEvwtTdyGwRywjroU5ab6u4ul8TbxDNHWX+lfY+3y4V14gn2BYSSZOVi4lknqgtlpC4+5DqmTe/wjmlJ4p6fLfHHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754051394; c=relaxed/simple;
	bh=R3VdPSR4qje47MOD981gPGral3P3vrVA4ITbgAloro0=;
	h=To:Subject:From:Message-Id:Date; b=c00WdDrVUyVWoc77HzzMvMpozurCDEvM0FEJdpJtqzJKqpY4MGpy7EiYwR7exNklq3sK979YrdXxNvyG8r9Nu8oUxsmQzwWfwu1rn9Fx7uXOYCmsJL2RbRuJK6Ig5z1qwWXjZJymU8CGN32W/kCk47mabdn4DZQFa7JIiZlt2TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPAsbBMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPAsbBMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFB1C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754051393;
	bh=R3VdPSR4qje47MOD981gPGral3P3vrVA4ITbgAloro0=;
	h=To:Subject:From:Date:From;
	b=sPAsbBMSR5SEgOI57Lj2+vtGWnPJ8Mz4fFai3wDiiN5t0nBqVKQCQ8Xuo15pfVM8R
	 gnKm7C6N5GDA5JfW5zHnP4GTO63ZzhQhvahM+UmlnGEC3u40IYDY6ZKfZ33VGB0fRl
	 Hjn+tKb1z1h4tubiBFIZDbO8vAHlssQDCMCKT+VwLJptLHGnsK58MFxR9ROfIz0yRc
	 CH0yfPXrdGBMAX3CqGsqDO3cB8PzbnqmdCkkvXAhUjZwgAT+S7EHE+bCQ6sWu2EaO+
	 ejWmBJC6tAWcAlNhYO01G/SQiaAzd8dGgLhdKyuGNjCvX/orqoGvYXPjBZcFHlMHiP
	 WaZDM1kLJxP0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F513C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405139357.10510.15097316930622450590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc07a39d2ebc509b32cd540640728bc8c854f1cdc7e09b704d373cd64fcbf9e5
Date: Fri, 01 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754051393
