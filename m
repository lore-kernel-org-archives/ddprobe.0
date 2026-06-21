Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF6378F2E
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782020194; cv=none; b=NzgkPy3ZKNPqGJv+jm+TwNRkvQ+1WYkGVYoE1UUY+6O9r3pZcAYzZ5t0qApxNUiueDYQvUGES5M//ipsC70+tgXnWQeXJA1Nocu+mXa6V1nkcRW7/WqRqkeojTzmszuNPFq4ePNryJV3hMpVKujYfv7rSIyAe6Ifc0k9YotVvf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782020194; c=relaxed/simple;
	bh=eN+jIT1lg1COx3rFcFQFlMMex6WlHHfI+iwxKq94ppM=;
	h=To:Subject:From:Message-Id:Date; b=YaD3N7yT+exB8bDMQOm1xbOI3GcgDbdjQADSqzwqo6syr0adVq8LR5eIGI2Z6N9oCrm+GmTyifZ05gIEctt8LtTOG0f7sg88ZtFo8Oef4iBxhDKWHrff0vwd79juNm+bEXDUNZHxoo0FH5fldl6+X9jLrZ8hYiQgv5YdDjpaBD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ywkladiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ywkladiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AF3C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782020193;
	bh=eN+jIT1lg1COx3rFcFQFlMMex6WlHHfI+iwxKq94ppM=;
	h=To:Subject:From:Date:From;
	b=Ywkladiw9T+sQia3eQhD1hGcHYdc8llzIh/ohzFhM8NwRASaIagnVqXEq9eplxDSw
	 3B4ItEnYxz4Ji2x9T0Bbbsgj2LkWTjlbFg4X4iDY25q9vPsmEfo5sO6WpMDXzmahd/
	 NPRRpimJT8hiK7TkvSy2WmnhCxZRgfis+t7QXqMLrV8mJEK91BsQLfYsY+gRlnG/0i
	 U/lSo2RXOpflqO1WnDoqVJO/NuMJ1kyMBW9RlXZp1pjIszb5DUygoP0C5F4XNjMFun
	 BavyYHt2RkXUOD1kA0MIjSzCJ+R59X3/aVlVPxDX/PGiukebkt0rtIXm0qSf+E0oqP
	 rLZUyyjhRtYDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D09CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202019370.12887.11185537950021395300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad62bef6ecd2316bbf437a3af9ba628304e9860b5a557b9962b7e7bdd1e7138
Date: Sun, 21 Jun 2026 05:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782020193
