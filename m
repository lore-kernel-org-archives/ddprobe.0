Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4894C1F4631
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783185514; cv=none; b=tt93XhtGgzIY9fdyFs3M3vv6CKMUG4gfawvcobU1xqLXNfwJYXxDS3YRPaOM21YvIHNT346SWKEiGexyXNeXJ/SNzKIu+AghZil7ES7i1ZzYsKt0am+pmnS/kI/3B30X5dW5CYosSkxzmRwRo/OJP0kLTCEKMjAWlQt2pc21apY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783185514; c=relaxed/simple;
	bh=MXtexh67payMJFJOLnWImzwCDuajnOzaQ7yFD9GN27Y=;
	h=To:Subject:From:Message-Id:Date; b=llU+UWDYNKn6AWnVOB5gZAuijZ85ucU5jPOYEjQDYNaFPXofXV+/EQvtQpPxpPnV7lBqDbQ1wvAEzjSrtIgf56W9/rgDqCy+4p7Mkg1jVSBCetOJgb8MzjKM6HW7neFUSR4RmMDu9oZeAMtabGTlMYk1nSKr4XmXRFi7glbJaUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c30heP2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c30heP2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE899C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783185513;
	bh=MXtexh67payMJFJOLnWImzwCDuajnOzaQ7yFD9GN27Y=;
	h=To:Subject:From:Date:From;
	b=c30heP2Dq9xn8eGxTILtPd9JCyMqSB66gZSdzUEz1tb13n1yce1O8UjInbAVY69Ai
	 Nrmzhqeeuiby0rMYokyJmOTMt358/01lG22CnwL2QIBRaOF0kx/5ODVZ6gBhYxzCW/
	 JzW95A65UESIjc040noX9d1ZY2G6FORO4hRpXzysns6+1wENXEbvxQWX12X+mcDG7t
	 5jUsKOtMh2gMCqf5ZPrg+VHjG5oMYOJvM/q94AmSqOGlvhfNS4dUut9uyffadt01ut
	 DuqLj+3g3xW8Ml2ZV7hAUfHuGS7J9kydT8ER8g2mfYMKoQk/1hN8LvmZXkrgYgRdfD
	 SlyDq7qBmZQ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F42C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318551368.32515.13441498711674408331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67fe212e200bc715b3710ebaeb2007b73a6c040702392d07e2168617672aee7e
Date: Sat, 04 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783185513
