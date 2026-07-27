Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BED03A1CD
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785135034; cv=none; b=XIEdcKOz1OHiO2duNgyPFzhBmBwhfKnMVh86lmerduvygXb7SI/fnbZel/eUOurx620M06dpKAVViWExHQa7SXwOGUg55YYL/d757UlZnvxbeUeibZTFr40zJOen2XG2zjXFwOIY+dbIcymztY8ATXsYsz4yacxOIot6nUUl4j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785135034; c=relaxed/simple;
	bh=hWNn0cWTdQKWpZ8nN0Uji8zgeUlUkJNAhxcjx8XW/xA=;
	h=To:Subject:From:Message-Id:Date; b=nz1OMJoHh/rT5pvicFYnqjSuKidvtno2FKuZESqNIzPcXHgHqwI3SJO6pxc9jcNjP4sh5F+Icw/N93nS23IDyGse0PDtrEfjxKiPVqTgfzQdF9ffFi929MmWPzg/oWaZhpSMcDe4ObkdZ9sohd0KVd4J3UeBtqGdgq/y4eI+sFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNEpqfmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNEpqfmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD26DC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785135033;
	bh=hWNn0cWTdQKWpZ8nN0Uji8zgeUlUkJNAhxcjx8XW/xA=;
	h=To:Subject:From:Date:From;
	b=PNEpqfmbjIp0/x1vDxC7KsFVu6H2YorRngSaTS2B8dcjsD2K2O89mEfHMz0+5HwbZ
	 mGwFyKyigvpJKYzIyBeiXPreZKUYYtLwJ+WhroLJUwEAQDji2kgZQfwKkDuVv2DRi/
	 zTq8bUwR6BU4liKivlYao2pGP6QoPe/Fqq7fR2fB0nmqNePpE6cQkd0rWFraMit1NC
	 V9ruwGt8ZRQ0plZ9TVp+Fz+Q0bhKLjDCL4WfePJioh6PhaK/NWTG96MhYVUQWiA3Ue
	 mhP1BD3M0bc0ZBiPlao7GLqKg6Dr+HYpDruH6a38+FW2JjBu+LWlGfHLmVgIIN6Ww/
	 ju6+VUVxA+Nsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B33C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513503368.5133.18303969241569303900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21bab7902fca76e2992c1d172d532dc79d0d530ababb1d9d2f095234773a70e
Date: Mon, 27 Jul 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785135033
