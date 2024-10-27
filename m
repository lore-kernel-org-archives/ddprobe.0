Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222EF538A
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730066154; cv=none; b=SkYN9CTQdOC+gIvcJJjQBk80QuP/f31Ty6KTFkkXCVtmBcBQDQweJQx+p5Q2te2de5mmDG58f7An/0sC6JjfLF07WQRHXZwD8P3tBjqHvvQgukRFL1RZXrlKMpShGD3CSvu4b6UIMduA1yGumo0kbDHe2vKSu9AACseIuFb/eN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730066154; c=relaxed/simple;
	bh=gdyKfhpxJYaUtII9d1hpT09XANerMk0WN7YhvPHyvNQ=;
	h=To:Subject:From:Message-Id:Date; b=lpG6cTWiTGChO6aODrO5byvD4uugMRrTmViFt3YsMVdsXHjgb78mPWfQvYOdM+TsHROjVmLFUVkHqwlDgdtcHRzsuAEjvur9l7jPDQk5cXSguZu7K2c0yrHTkL9N1xDnXoYHbDl3w0qL8nLWDkfWHTsXt8hThBFCGRlahqwQY5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJ68WY2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJ68WY2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4CEC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730066153;
	bh=gdyKfhpxJYaUtII9d1hpT09XANerMk0WN7YhvPHyvNQ=;
	h=To:Subject:From:Date:From;
	b=kJ68WY2rI6HQZLJViZJlBrW1+DPfq5FYo5v0P4YUwomOp5KPhNEPtQeiBcuWYKbT7
	 s+9pUM09n0Z8v0VlhugRqzeyRyLjVlKsKGpODGP0nDqxY5NLhKzRD15wj8YDitH/HR
	 RtpycTGYhGP2+NTV+um0qfkCOCklqMmF5tkRGKxDxybaJk0MHGYigAPXIUBgEMxIMt
	 Am/sEx1o2hcY2B/sv930O8dpw29vCAoVeWfiwHYBhub3E9Qj22AWmjTWvh9X4gMlus
	 A7WYN0rDYGGo/q1ZSJtiNXJj2HKgmnWb7qMWcOASHRdVrN+J0fQCMOIA5gpKMlEzmQ
	 lexGcU4ngsq4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF59D13587
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173006615362.32569.2695485015075026142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1562b19b2554894ae29058e3adfdd6a925f56838a44d352a291011614a817b43
Date: Sun, 27 Oct 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730066153
