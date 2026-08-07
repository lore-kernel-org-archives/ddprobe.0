Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B798A473C71
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786103434; cv=none; b=ewXT3SmHZe8dSlKeOkvZjX+/T0i9MYRpevlYjxE2mmeMxphVi9cFuyKpNTWWz5+kdjgDqFcyWaiRz9ITYhSulWQOEhEUN4QjD6WZEsUamm56NlNF1NgfZo9IFrfFY5qLMRzNuCB4VKCurqNMKE0UT29SaH5gFD6WOitcQrwHnTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786103434; c=relaxed/simple;
	bh=A1QM/F1BRy9hrdedmwg8hS/tEeMyCE+Kbq9kWRUg0Bk=;
	h=To:Subject:From:Message-Id:Date; b=ku2ggbXg41GR1bKqJREbmtE+BRdk/6fmKdpGtaoO4KtZjqiOkAlMifSYcNSjLO74sYlFkr2GjJQcLgqGS1C1deGbV9DfT8k3nl4/t2Tjvy1XHrWMYQ6TigzchsezpFaekhYXEMj4267zSo1lwR7MXYK3uT1oIyYjL8O+qgU2ySY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EieyHh8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EieyHh8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC90C2BCFB
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786103433;
	bh=A1QM/F1BRy9hrdedmwg8hS/tEeMyCE+Kbq9kWRUg0Bk=;
	h=To:Subject:From:Date:From;
	b=EieyHh8qp1Oal7UNu5ej0WVrx1HnqD6h1ynOBqVXE/TsGiZbFL+GVs2jVsYcKrYgs
	 jQxK8SGMq/weS5cBZ/lYsN7ZQSTeVyPyAXvzU9t+CuTV+i47uiFU3671Ycw4uDW2+u
	 wDcIUQPK5sy3Go3aF17s2OwfeSa4cV+0nm8EuJ26SAvnqC+wr3TFkkLAUWCcJpFICT
	 xQnnrz/AThE1wNEn9mGBVb5fWMCDz/2oP5F+Wfe6IJQkbNItmQp8ZLW5RDG432TxwS
	 Fif4uBBsBYWqQIh1DUuzkttFvW8j1K66PZJ7aBQbWTrlMb6cfUOf0j7Icle29J1EBp
	 hviHI8tfBJXfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4C7C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610343369.16647.7145192679707306785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11018d1de6759ab31498b1b2e4cfeb03e3e99bee7bda6455d384295d8f23fedc
Date: Fri, 07 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786103433
