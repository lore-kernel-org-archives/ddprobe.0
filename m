Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6E834DB6D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777304854; cv=none; b=OA+sIzV0/4k111tIQWBTQ1jFUW3eZAvwXI5rO1WXaVTTf0EIEQxIg9/mT3KBcmYJj5vSlviJmZrVjEcaH+2If34I+gnVU14mCH4CJBWo2AKyT0A7hxYeqCfqATRIpt13VdnRB/nqvJgJDraGLe/S78BP91IE3mZ+OqPm8Lawq3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777304854; c=relaxed/simple;
	bh=C7dJqIyKj5WowsAAsPqPTCoArHXdFxCt6q7erTjy7Ok=;
	h=To:Subject:From:Message-Id:Date; b=QtXjYsIV+fjDdUwaSJTP8SjgEFWYFJkVyZk8/UiY3URRafNLQeieZ0b/JG6MHlZMpuGI78RJux0/+G7ZKjBgcE5cwT2YY/DzGRcGxp71xPIJbCAE4LEWU8PrUynwYtVvomqnSPy3pU82CwLWe0ciT+MTWE0jPoJqCeySDCZmGQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJPWKlVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJPWKlVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC17DC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777304853;
	bh=C7dJqIyKj5WowsAAsPqPTCoArHXdFxCt6q7erTjy7Ok=;
	h=To:Subject:From:Date:From;
	b=bJPWKlVe4HcOO0ebkUAVXJojbDMq/WbjafyH9Fi2MiSMgIU6JondHOvtUptYvi6wp
	 WiuvKgzjqKlAdXMJy+Au0rkBnhrTAL0aZMjAQ5XQSIhClaWZxltUdubOrOA/UnZaH1
	 ag/ec0yViNx/5CgnHx5OXcE3kMK5nhUL+WpQCMVoeN3Gy8rbDlxesrZmMBHDHpuyd3
	 cRPUVPmUF1NtFnxJMQLqKQN8jutncnqhxNquuHngmBOE8LAyJ11kixb8B/SK0mP65o
	 7AhSBRiciORrvJInU3SB/h+5V8gxDBuspmFd4TVJydHD+FIhEebao3PoI+m5IoIESM
	 EJ8iCaURm5zuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C0FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730485369.1533.2769362869402852651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c6ba23b98236e9fb0beefc3f853e234c31688d3dffc08acd6b12831e802b115
Date: Mon, 27 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777304853
