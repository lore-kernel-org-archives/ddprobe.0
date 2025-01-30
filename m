Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FB9194C86
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738238154; cv=none; b=YCcN5zbbZZjRFkWHt/C/jjcDBi3cbjebOnmOt1dcMQ98pq4RqqSOpS7Tz+L2yiTEe5Trgj+Ps8mpiCkl4Cg5OTJeu+YtYdKHA3GFjuNPE9jRcpCqYp0oCV+R+zZTtZC1mqyC6IebUXVx+LlKA5LjJcQGayvZUD98iTP20rBcacQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738238154; c=relaxed/simple;
	bh=jFysCo9b78lOvk9I8FszwGD4kOuWPESvx80/OIfAI3U=;
	h=To:Subject:From:Message-Id:Date; b=O/zlEmv2rKQJArc6gaJX+vyysn7mQuEJVSXO/StUp3M4yH/2dz/nKzfb/qDiayxLhdjDT9op9vBpaNbSd68kYNjNQRiVyeZPvy0iHZgjtUU+3zo/7yJ5+4R5MjFa/ICcqL354kw80XLQQolFUeGrQwZV78Fpd2/4xwLiXNYaVB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBingOZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBingOZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B5AC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738238153;
	bh=jFysCo9b78lOvk9I8FszwGD4kOuWPESvx80/OIfAI3U=;
	h=To:Subject:From:Date:From;
	b=pBingOZwx/K5ymdI7y95TR2pRgNhUi0AXT5K5aEsb9uPLixdfQL2/giFp25Og/snX
	 XI+grXSwmGcQdCMSwk3waC4Hm9DwkGsFq0hJt4zCE3kEig6DCjrpdwePuk/wy0bApD
	 GoGR0YudWC9JehY+z7S1w1QAWtF50AQs3XdOB62FyV20Ki0NqASOkFgtNGJF3+ryBP
	 Y2AQcCYW/7rilMDQ+159t4Jg67DwiaJ0YWGKMgv7Q+gXuiMVAU8tTELLZT6u+X2BWh
	 h27sjt9MyMZzXP+tsO2Oz0rHoM2rJgTl0DDSbuNpJDkxYwAkYm+HdgCXxEiVcZJko5
	 hSkijRG0AuymQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A062BC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173823815362.26823.7534859936805468875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3c8853e66eecd743b4593cd0567c2f6ff9978af255e392d268dc86db668ca2
Date: Thu, 30 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738238153
