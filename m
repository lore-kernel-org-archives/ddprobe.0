Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A8A3B71AF
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791600634; cv=none; b=U84s+p9dwR0rfo/ZlEFIen0CkwY0Ko9jMstxzMkWvwm3rrTw3sT0hyFGimqX7/pByxeJ/VcZRrTRDnIlUwWpZ8SjzaXLDS0HxjhKkuiCtYnqs5185LKIrREdXi2qFr5siSOh5fCvzMdZ4CEAMQkyFWo+7AhPvGyJd7fqv11m4lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791600634; c=relaxed/simple;
	bh=lA0qmtnlwNdYB4qi2WqRxt6ghuM664U/HKoPon6EZ/Y=;
	h=To:Subject:From:Message-Id:Date; b=QTxHXvtlmxLd4q85V701xcXjTPN6S6bsUtGIYnCPSvQT/85BmMP7HVaX/7JLbgqqztMt3FP0yviPES0K4dEGvOuPOl/NpTXPAYIaKZSFMku1yoGVXYjj6A0mKJrMhUU8v19wo5JJRXjJQJlTs8tp6qGklajoiV34lMC0CyVY+vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAboZhWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAboZhWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC214C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791600633;
	bh=lA0qmtnlwNdYB4qi2WqRxt6ghuM664U/HKoPon6EZ/Y=;
	h=To:Subject:From:Date:From;
	b=CAboZhWa9J4cXybjEKqoBlI69AiIceDqxey1N5FGjweoq66Tf6TJCDHZMIIKG1yFF
	 QEGQ+QJeWcsYhGYzH6mUziWEDJtQD0VXHMambTk5hi4SNsZY2lIQgBdpybrDXcCs8n
	 y2L5/SZkIJXvzPWOE2beTwBI9VK51TbiwPjGBUdTrp2lnOyLTq+6Qz5BpnUibiyBqa
	 zsMrWD4it0mzk32nzsiV9ErpngGY6tKxizmyJaHcF/aGRZMRzLUhmiHUX6tTPHYkna
	 VEoTl1OR8cC97kvIfajO1M90vc3zwr5VTRUwd3UXwhQ/bHp1MA9OHM5IDL/9j0LzMt
	 3P6VhL2ub7yWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CCACA9EBD
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160063368.926.6979166418000418061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f730476fc1b7c58d155abf0c5c568a8d0b1907013dbdc3c014120b6b8d5cc34e
Date: Sat, 10 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791600633
