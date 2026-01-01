Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5C3296BD7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767285834; cv=none; b=BOjfACUAcxFg7udxY5gMKXApDhVO04KSp+e1cqp6KpJrCnY3ZHHimr+OfqVy9LEsGTB5bUTtro1o78p9gF7uUCIsruyGlzhTaG7dO8BkRAHWAp3KcPpOuxDJ8elwPko/2MuxCo+dIsNoy1owO5VnVvsbgFYFi+kKghufDy9cj+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767285834; c=relaxed/simple;
	bh=y3mBf98o8MdhtmSD5s9iaXRzmvCUXxiJxmp1ed+Zeys=;
	h=To:Subject:From:Message-Id:Date; b=o6x5TTgK001KWl6iQZ8OfQrd/yfZgQiQJbSnnNLCcYbQTtASp0ChsXDNsty7R6RHiaG/gB4N2eRGVUAcWB1di6mLWueOeZDHh6KvSrCga6CRDRGZ1V+h/vMO4q/p9IYMM5dIdimCpTUW/0mRTCOYObrehsD9J1NE4qAA3101jqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plEWP7fY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plEWP7fY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DEDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767285833;
	bh=y3mBf98o8MdhtmSD5s9iaXRzmvCUXxiJxmp1ed+Zeys=;
	h=To:Subject:From:Date:From;
	b=plEWP7fYl5hJ/O7x9bwmBZ0HS4L7hOdeHhwaPRSHEy+HXEHndSHopvx3pemwPAUe6
	 cZ+nV8Sc9nNwGxiZ46yq+5UzK3vnynEhiNjnSXOMb4GqaO4KYKmuwRtPnWh5gVDbUL
	 jQtepGkOdsAQrsMoFih3wlzfXgWWTnf1DA5mjyeJlloZI85Y9YDvQNbHfvDJ88Qb4R
	 vRggSKC/lU0IT6RZHDpyi5Mr6JJhczhUSgbji5ULdaMpC70CqJ9XXgXXyZwgZknhka
	 AHzyQ1Iqqc01ZFpyIdbPkip8+PJ36R8vh8bHohmidiAu5LICjcYAHnI6pGG5YfVh+g
	 +hQsdQUNed+Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FBBEED618
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728583357.30455.3362441748732473722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e58520c338b08f50ab49704801a447b8d8d580496c1708bc6ed8a3ba70f888
Date: Thu, 01 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767285833
