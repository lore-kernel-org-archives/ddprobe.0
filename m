Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107203CD8D3
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777361254; cv=none; b=T3uhfYBMcR+3N/XJgXGQ/a5uhJmE0jlMPBQsJQfQc9OILj5xc7Zu+cbJa3pSRbDF6U3Tk70BVyQVl5Z1C+GL+WPC72RROXA6OJbuAuJmD0tPUVUr4jG+VO4ZAymb6NhY/BmA1Ic2UHFi6VYtcWK3S0wX/df83Su5M6bJIv8SPig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777361254; c=relaxed/simple;
	bh=QoVTEvJFavthaL+0AUgTfVWCKB808mXlrtG3BCo0z6Y=;
	h=To:Subject:From:Message-Id:Date; b=VRdpOi16ohzJ1gCtteNjBLuqTPG1Pkgk16Cqe2GgHao1m+HPdxCChHt4RN8u0WfNVSUNHtcti1BGhSDvk3Nz5Ap2Wt88KdrznEkPBo2WHtn7Zdz4ItD6EmHxvQVHmJOiAt0JR0VQndzRdrEByIi+kvsBFyyAryx++ofBE6ZPOu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHC6QH2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHC6QH2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC989C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777361253;
	bh=QoVTEvJFavthaL+0AUgTfVWCKB808mXlrtG3BCo0z6Y=;
	h=To:Subject:From:Date:From;
	b=mHC6QH2gfk5WCWP/yK6vl6rUli2TEaAYi4dMT2JTNDr0rUiBaqvS4DWrawG4e9N3k
	 1OZuS/dGV5ssmXFEnLcV/dWnwV7V8fqA0JO56/7UhMl00iROhSUizISgGRI2HNgvsZ
	 3isyZeCUo4FaJrKZZt7ujtI5YEnOTxvxS5EHbYRHhI9aDimj3Qsi22VvHIuVTt5Oja
	 QIrNK2KxaMpSElH18yOE01W1ZEhxX5t78idF6tMrw1YZ0ARr4XtWr7ho+Ezu2MpkdX
	 iJIYXHkB1wOkuFTb9Dp35exHdRpH7NJE8dFnwTb9Zb3ZBRhZe+LObYzjG22uu0Cpaw
	 Z+Z1R1xoL3Hqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3345FF8870
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736125372.6520.10824000185069095215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4530248737b57a57e0a65aefd1a10f12fddff2ec6421016ec208090e4c33b124
Date: Tue, 28 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777361253
