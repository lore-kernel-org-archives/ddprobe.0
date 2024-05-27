Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4897C73461
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716823463; cv=none; b=G0PEdmCWGv5oNhc2p5zshelPCHjhG6NhYkYz6WcUf3WshDzkrpObwTiIwZEVJt9RybZvZPGeJ6pmna/Zyv2DnpfxaDAZ2pipb1E+9c9w0O2PTo0GXDdmsp+kq8XVj5gKw9IBYnU7eXwD10hHQ+bFjZjJRBmBvXb3sjmJxQExbhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716823463; c=relaxed/simple;
	bh=yVagFjWCZgpjkbjYeckFBIEJeDBx8MyUIR9VVdjDpdQ=;
	h=To:Subject:From:Message-Id:Date; b=FOGFK1hfbNiddINYS4G8ujnQjaxhLoPsg8LfAjcPBiv0khYaKWBpC3OpwwgucLUwn9ZsgQ3ro9sD2bVaqLEbq/QhwP9O6SuexV3PBTvxzgqajPhxQa3jE2HmEHfaBnGqce3YlRYeceJrWvLtxd3aomwoQWnJGcF+eKT9nQ9L4V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBbKD+/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBbKD+/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA5CC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716823462;
	bh=yVagFjWCZgpjkbjYeckFBIEJeDBx8MyUIR9VVdjDpdQ=;
	h=To:Subject:From:Date:From;
	b=JBbKD+/bp4yJkpdFRKDtF8h3yg8EdDbzj75HJGr9l70X4lHBxqbIVJzBirop36ql/
	 A63QyoEJpZ3zjrAYFjY4tINNZGs/bYIT9gDmbOFpjwWV+AL0iPwtdjtOxOtUk9wG1P
	 PRZ3ATM/y7GRX6sVJFH0zW2AsjKiqYxYrKdb1cVSsjWDhYclKq5kJtVbQRfYwYe4T4
	 z6SvMbmvjSu2NjngnxgcTk45FPVKURX2hNKdzP56gwNFJSQuN16P9pJbAlM6lWkcL8
	 ag+BdYGbam48THyxZQp0tS8bBj7UOuMITO5GfKYz0KqXDXVe9JK069KnwmaVgxK+2G
	 F6R92VJCs2heg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD230C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171682346276.22341.17852018594693405066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573fe0fa0969c5795f528c3325b8fa53d7a18641e4ae08692e53080bf13c161e
Date: Mon, 27 May 2024 15:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716823462
