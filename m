Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA44A41
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767463434; cv=none; b=YOnVEY03a8ONEXD7lN0zuxddbGX3kpJ8zapieGcwNTN3VDrkbeNnFgYo45coPVQZFJJ9ODUMEigIBWT5rSHH0jFKcrV+dx1DZUf8rXjtnMISw0GJR6+toDJjX05phguz18KhnnFisADBA4K/dZDkSymldpIQCepNfBUqaIvIsUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767463434; c=relaxed/simple;
	bh=rCdZIl5dN+OU5lX3ErZiv/Xq/QWP7r2AqHyy9X4fIwI=;
	h=To:Subject:From:Message-Id:Date; b=rUyjL/f/3NQJ25j6qWs/fVJyb3m1d49S8PTq2ZEXgGKc8IxY0ciHGOdit3DP83K/LsUKP30+xlKQ43RyycmRd5T2tD1XS2dRM5BUtydRxjJ/nYrTydbY02V6tL0i9G3acdqexiiTgECP6zaAx84pPHKuIqm0022Pnx03jvsvO60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHXXv435; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHXXv435"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC104C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767463433;
	bh=rCdZIl5dN+OU5lX3ErZiv/Xq/QWP7r2AqHyy9X4fIwI=;
	h=To:Subject:From:Date:From;
	b=vHXXv435deWZY18aEazws3pcafXQJabZfZd/5s0h9dlF+p4f1VUBFZSzXB6WoDvkI
	 W2dbOuBsSlxKx+rof0vqjIDeHyZQ+nIBj6gf2B+Z4XJcza+/ni08+oxPkCnsvnkQXb
	 j+AjbGenbtjeE9lHZ1RaQaSECjxzVfED0OS9S0TEYYms3J+YjjSnvO7DUHqHBdPc1v
	 m+IpJkQv9BbWP5PjOUCjL1tWjKyiA8j+cGmXJAdu+8xiXyKklKN5yx4mh9Ctx+qyPo
	 gfl72zy1FK2c3Y/JxaByVkrHFe9K2B9PGwDcdK9QimWY+hWl5oNAXLwYeDI+2icI5r
	 qnD9lyaTcFjpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B819FC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746343362.22034.5639022219470915083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92c3748f7da0f76964b124b9d53733bc6561a166f8e8addb3c4e7dc86123556
Date: Sat, 03 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767463433
