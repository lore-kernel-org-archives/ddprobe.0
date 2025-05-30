Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D8522126E
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748599194; cv=none; b=UX/JcqUsMOQv0qpffYr3dW04b4HM2On93uFvkBicse7mQv7Z6RC4eWrLA/WJc52XPBGfhIlL2d9JjlLBYjtIVjXSpwn2308yROvOOSk8YLu2e8a3CL3studh7IP+FWA9/PRwNHKnr5/hhbqUTxAgdZL0quEiM1fC3tF/+JLzCXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748599194; c=relaxed/simple;
	bh=FcL8l7hwu2CsPJvfG/w1TPqeYFB8xF6gBrtjvJSAeZQ=;
	h=To:Subject:From:Message-Id:Date; b=P9szHTGuxv5ZbRXeLvhW7V54Ow3o9dZmigBWKTEpfZBJdJGTGPf9ZSMFrEgkWYEIhnb8FrT7aSg/Jv/fqvwXVvPEZ1xcVU/C5NkN9ucPv+eaCpbDjvd4ky7oLdHgT41OouBjgnx5C0IvbZk6LfxMB7sKmHFlAbjwxzoMbQKTaqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCEf/sEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCEf/sEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BD3C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748599193;
	bh=FcL8l7hwu2CsPJvfG/w1TPqeYFB8xF6gBrtjvJSAeZQ=;
	h=To:Subject:From:Date:From;
	b=eCEf/sEI7/6+X4rLIibKRIC3/TdFcFrp2PmoyXzDE5t5EB2v01JvVbI6z6CyckyKc
	 PHNVzITVkDSFdqJGTm+hjkZzjxZwG5PlsDuJDIFHNzmXE2rNxFVY0yl8uzAz71wKII
	 FD3AXW6z40T9W9YONdXqTXIc6GaGpq3PmynACu85e9XtV+GlF66C/sGLwgqOsHxEQ9
	 YlJYM/A0qkSPYhR0PYhVtdKIlD/JXZakg4yZ91L0doGrTVJ6T2sSmYf9EdcPzXBZiA
	 9Z8JEBjRzsyt/4m0EEhqeDLjAH6GVzRv84f95FGjOoDGMZ6w264C1bpI9VQW9gr+OF
	 olLwuQ/v8oeCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD7C5B549
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859919357.9809.8554156530149636972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d3adfc3682e162cfdde52fc71f7de82256bf12c2dfad151e8837137cadf7c2b
Date: Fri, 30 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748599193
