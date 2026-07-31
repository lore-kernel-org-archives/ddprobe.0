Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7D925F7B9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785536434; cv=none; b=TennCrLxWqBJGcBF6a/eFzIxPQs4/mqH1N5UDL/faih95YmHkNKzilbog3zMThyTSrMN10U+YwGBoXMCVspWgR68gKNKKQoM0fCOsiQN6GjHzPR6bPoVXfsj8bc/dm88e945EGxVwAw4INH/YapxA9yh15ABaCPcuFg8B9kXOus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785536434; c=relaxed/simple;
	bh=XB9Of9UI+/pn6sulPBZNzVV/xxH3oesPpwVqtj9u4no=;
	h=To:Subject:From:Message-Id:Date; b=QM3dveOwC3WlzDwRa2hcE9059QQHyqNvij68vf6Z6luWakbiV+cL1j5RBFnTOUNIVEuHpoJZcI+R8fs3rXDxwOyrDUGfjePG4hRlgqLg5reXqUZfaSp3vc2lvbfv8UvSOcbkZ5dtcLTo81q9DWfnFlcUi5oEEvszBlIJ0EbBJvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vM9Wzn0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vM9Wzn0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0257C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785536433;
	bh=XB9Of9UI+/pn6sulPBZNzVV/xxH3oesPpwVqtj9u4no=;
	h=To:Subject:From:Date:From;
	b=vM9Wzn0b+FcZPSZoxFqZg6DbNwQDUmZ06CAtD6qIf/wf+cx/BiK493+QWBKEAx/wj
	 4wIqihmFEYeH93kvBAH/6ci0dR/W4D/Jw0sSHPV+cg9RhJrBUMj1EFul9NzUPIDa6W
	 BDnh0j5RSexBTx5q+7LObHY5ZegE+l+HC94EnKkJelsC35CqmarhM85r9HDsFbtRqI
	 REjjlcyMYSSuVnDfOnIK2EymeWnTYj/QmTZUMVG1SRDtQT7oKfZf+zY1O0/5ZaCFaq
	 7GX4416QlcrO2n34ZD/4NLydcoK+1SaCLc0OXpnxpTWy2NJekRwTJD3psoRojT8qBl
	 BkD6XjIuDUm6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2DFC55172
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553643368.25210.8221651459904736170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 625c8a18bba61d6b8f0aeb7be931c803eea60e82ca85b9cfd116eb08a27ebb00
Date: Fri, 31 Jul 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785536433
