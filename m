Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EC32B9D4
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722819954; cv=none; b=uRIbOLfekLc48E2fGaC8E02k0LryhpyChprHj3j7vCWNUxVRxrg4SirdPeHVsp/z8bGkQ9Bcxw7u81t9iB9JX4+gy61xG3HvWfDgapJ9zP4gsPzFVbdXSMJRxO04SWA6mjbW04tcnZANg0xFlHMjI1kEs5lFEVYpjv16wkxuox8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722819954; c=relaxed/simple;
	bh=vm2D2RKHs15SvWczkXAniPx4HZufAIG+U/3866zUtD0=;
	h=To:Subject:From:Message-Id:Date; b=Q4MSBkpy4FOA1Q3DMHikTWmwwt675VIV8AFu0ZcYNu/UUS4NmfXCwwxwtutLctP7WFAJHPTbMgCBOoSXjn3VF60TeZ+oIKydURP7jExesJL9GWH8nrbfkfs6x12zqGxzmQOFKjuXYSt3gZw5VQm+1z1haZgEZi0cPlnXxebDeGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjtSjrdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjtSjrdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AE4C32786
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722819953;
	bh=vm2D2RKHs15SvWczkXAniPx4HZufAIG+U/3866zUtD0=;
	h=To:Subject:From:Date:From;
	b=qjtSjrdtk0yFYHYa1Wa0BC5zaDHtrWGUkzjeXbIUmlum0IfaKEAahCnmTtHothgVY
	 A+wrbNxmPFwhvtDNgkqrJHyS2jh0m58OkQXXnQqmXDo5LVxYds+w4HvCTxuZTrGLjp
	 6w0FLcBVz5HsyUojd6ywlj6O7RCPTr6IK+VZjDYF5OhUW2xHq+1/oUKI7sFWMF61/v
	 yAPSFK9nm663noTTng2JISh1h0UD4JbaNi2P6q95u1oqCitAlZXdpqaAKpfx2WIkER
	 P1fnECwlS0QNw/3oXv2qfuV+5Zu4I9OD4NlahYgQAivaY3u55bd4kqtH7jpLI7CW3Q
	 /eLxluBlGcnjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9054AC3DA64
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172281995358.3953.13848497282453666593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff313bebc709593644ab0a90ea56542106468f45f9fea3ca3651025ecf01179
Date: Mon, 05 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722819953
