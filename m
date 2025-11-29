Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED46322A
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764401574; cv=none; b=J4agRvt0F23y2Kuv/p8OPOxMjyYditDATl3kAYWznUSNn18vlMQ5v8zFAVwgrqPvhsj4ZxHwEN6HccIWZRmdKw6HNaDiOUJ0DUoYKxWSeTT86K7kT4EoYJ97tYXmJJjdslkP11zZIXPRg5th3qDxKT6OX684W9g+P+lystqrlYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764401574; c=relaxed/simple;
	bh=UbFv+q1I6ehr8q55JXveCXou1Gr7RjvOehE5A3eOh/g=;
	h=To:Subject:From:Message-Id:Date; b=N8ULVoH5ySWcnBsqPjjnA7YmIs9eRQuzaShZuqMvH6k/M0B7tcCZ9jes6G65y3FMYxiXHGoaxLcjcrhf7qRRKGE0bPRVSD3zwDfr3iDATQDbWrIIMtc2789Pa0rYAe1Yk1tmLebTjDaP24vtnwfWImIgdVTyC4fG73jthleVeCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekA+wYqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekA+wYqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE02C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764401573;
	bh=UbFv+q1I6ehr8q55JXveCXou1Gr7RjvOehE5A3eOh/g=;
	h=To:Subject:From:Date:From;
	b=ekA+wYqBsE3Ao3nKxKJGOyIKX+NbQ6/qxye0YUO5z2rOmcay2usk9bbDqik1SsGWn
	 jD/0I1ZyuWiX6uDvabKRfCykGjTBhczqYOQgyAuAktya0TTzos/bp4icIt7rQhlT00
	 /Q533lYqHHIhUlY3Q0118eBPD5dKTSCjf9H1yIl3VaV1/958Y3RtY85fFUxa5jFXtF
	 mVOkoWpvXx87Mivg5aOLyF6ZRGmIkwjuFm/5wfO2Pzp6oW4uvinjX2RIFoL2SGFOjY
	 W/58h6bXrieZSR5slqLLR5BT7b+dxKunC0NAh1sR0sqoQaGyEUOImWs21fg/T/fC7q
	 vWyiPrePvzxBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979F6D116F3
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440157358.32600.8239878463135323637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd98a31af58fc5beef143459b8a9cf19b1a14625184d61e39b1d0cbf9dc8cbf
Date: Sat, 29 Nov 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764401573
