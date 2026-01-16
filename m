Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0431B43AA6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768568634; cv=none; b=KXQKDw3tWedkwvP57F4ObVz7GkQPFvY/d1PscDm5SMwq68d2o9hns7U+sOXKb59m2F31iR3bsgIadq6+Kz+v7OR3WpjVo/YVbLDqYA3bC0fNLqZnviN/EutAxanw9/tfEngZgltIsgJJzGgCpVby8J625/ep7jt53RxfMnh1acg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768568634; c=relaxed/simple;
	bh=DpY98W7OBmub8JrdWo7Eh4g82OX8ziR3W6mJmzNNq0c=;
	h=To:Subject:From:Message-Id:Date; b=YdvLao9S5Bs6oJY3Bq27kUSNNhipm6/VBNgvZwssiW/iTq/xh6/a1uLbrBhZTAnVDNGyYJ70qZcEGhbTZAgXnAgDc62OoRORuuMqywONqq2diaIeiSLytMuM/C2q5zRcebVx5YTiDQtEloMvTPJV8CXB1yqCzZX9MzBo5iA4ABk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rowK9gvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rowK9gvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D78FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768568633;
	bh=DpY98W7OBmub8JrdWo7Eh4g82OX8ziR3W6mJmzNNq0c=;
	h=To:Subject:From:Date:From;
	b=rowK9gvT++rvySSKXIQFD15JfMfi5mNy6KUPy3qH6YJrafT9LSXORGZATr1LR/eQL
	 YbhRvaUa+LKVoQAqaMAsQXPkUiow9OsjHgg1cSdRxSYGQ/CXSJg6bmxx5y7QK94Paw
	 V4j2yyCq4xbPI1wfwUmJZ9/tMhAQkNGKNFuzfA9+ZDozSFAgYWVnQDFh1Uqq5OGK7l
	 nklOVcrFUz5Y6GMUvnCc42z+yIJQ8Y4NT2Xg+RxfT9NePAcBOXf7ff2dziM/OWNpE3
	 J7oisuE11cVp0ysx96a1Dzo+9D099/wyFY8W94rDF4RhT7wUXXwFmyY2CvrUtcglwp
	 9N5nFnzVAsN/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB8FD4899A
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856863357.24178.18388756838326765996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98351ddb345e1c66c759ab3b59259137558fbe6cbecc000b16b5051e173fa157
Date: Fri, 16 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768568633
