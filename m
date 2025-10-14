Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A1124A046
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760476794; cv=none; b=gPukqNzXCq/sCLveOSXJxt0BqVz0FBp+OrBOnAg5f6Lx9hfUgDnQWnPKcLueVUtcb2dcUBMX9oATd3KUt3lUDCXeSAhxj/RJTI0aiM0r0IfPyhbVcHBTjLrQrzw1gydBTGzHLzZSNpJI6H/HzQH8H8sh4TvnWlInOA9L5TrhcbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760476794; c=relaxed/simple;
	bh=SoeVQypBlzqpezzeptQPN2Z/z6iJRj6F1tyPrswGDSY=;
	h=To:Subject:From:Message-Id:Date; b=geOzw118lRPt/+XEx4EOgBwahjcJcdMfi5PKEVpr/M0BfyQZMBCPQ/tR5JIL5nSalguriJfnzaCQ5yrzP8hHdEIDK4CrRm0TE7/sSV1pqun8RTChMYj4QhNJQ4cSzmTSQQFm7dx4lmBHZqIvlMRCLcEtC9QhNbaqsYuoAHUIddQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbuHmaG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbuHmaG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD299C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760476793;
	bh=SoeVQypBlzqpezzeptQPN2Z/z6iJRj6F1tyPrswGDSY=;
	h=To:Subject:From:Date:From;
	b=IbuHmaG3DOlsTlUJUmBiolYVxp7D9wNB/ZHQinzzIglg1DoRlQ/xSqwBc6/aIw/N7
	 BPQYx4fYaaNderPUzOchT7srCoxnH2iUDQ84g7jM1JIqB0VjEgIq+qJXDHC9Tf2Lxz
	 VXXqHbh+p5lyilzepC84AKC2DmuXesFPNT7C7z5o0VSKYNK8kLeT4Hiv7Cvqwguy1f
	 8pqfFC4/AZU0XlInZNyboddn++DLtHvwVvdlThI9j72JbsN4fjjlAiD9RvDMm/WSvL
	 00azX61Uq9ZfW8PQetn7I9CgFGrt/fk72PQQXY3kHYbOU+1JiFG40cgNQQvI6lgYUL
	 hC+/ApAevnkXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9609ACCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047679360.16458.3427309477516429983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6e7b704455966943532dc15ac843d8741346e50d2b3ce4b32b95706c7f2206
Date: Tue, 14 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760476793
