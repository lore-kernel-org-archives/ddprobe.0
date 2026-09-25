Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5963B367291
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790313634; cv=none; b=TkAq0IbxV/WPujN0pj4N5/YugJG4phkiOZ6OdXbC2DDahAHxJchu8uAkY2Qg2XoB9Edg2ARn7cZCEDPk6ORb6rCgMssrXYPj0szm4DFRjSOYWRnLa5Du/74cVv70DcA8wzYFVcAeo2VpqR3DZApW3SXCcmPKOYplDUvPxwlruEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790313634; c=relaxed/simple;
	bh=cx/8UGa0CX5GPFifqwjrRdG8bK672OQSqXVxqZQnsYo=;
	h=To:Subject:From:Message-Id:Date; b=N3v9f3aDzYjPpD3MjHhJaI2cWuF7LSHwpRnvqGMazyWrGFBez/Qf3kXjLktKavslNqMUNZQMxtYUhLSCwoGlwMJpj+PXqc6BpMG1MrbvNPu+d8Po2a/Tjva0OEk10or9vATmRO/5EkH9GOwapPUTWVM+5ann0SHtYnzMHYavn1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/F4gVPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/F4gVPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB50BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790313633;
	bh=cx/8UGa0CX5GPFifqwjrRdG8bK672OQSqXVxqZQnsYo=;
	h=To:Subject:From:Date:From;
	b=Q/F4gVPO2uHloAK5ifg0PFn79+OtVcVY8V+bkbSYgx7K7ziX5tAPLjjnwht6j9JFh
	 9FOKEacWTYEosowXGb0jYdIYNduddv8c3Y4zZCYLosezzpJJTEuyLKbaTPhzml05uT
	 8zu5O/DegTXjzNYq41EZ0n0uu7iARiZkX0GB13sblvKp4WnQGlrWeoqz1xfAVCrhiE
	 ln93ln5T5qP3LmlDyZGJnHCA/vINqeGOBUM1ItilxIP2A0RzErMcp/xsFbO492Spd9
	 AvZk0DkM47CDly0NngwFW74IDfqwHqDI/YThtzUUoE9nsML9DJt2wN4QR1rSaw9tBU
	 1kB0iQNvPXIzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B648EC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031363370.17220.16488495059982969740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f636038355c8be8744565ee88fa2a8f44a22f319c9edb0ce6ae6cf04cc2f07f5
Date: Fri, 25 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790313633
