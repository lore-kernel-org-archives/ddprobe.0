Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331DC156F57
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737903355; cv=none; b=cLshqmzQCg64ZgsUfDh/UCJqPpZZovo53KTt3tnp8lVE9nYAPxnZMi9/ROnzNL/wm+GpE5Q/pR7V+iMnnwPbHTw+N5LLk7t4lPPW5f+Za4y0yhwNl/C7hCOd52uvR8xtSS78SslFY96LXqjVezB+3FJ0VZwVruZ9lULzXd/y+zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737903355; c=relaxed/simple;
	bh=YQY8bZ/jD7kDganSbuYF7iGT/iLFs2QPI5IyjNNxOdU=;
	h=To:Subject:From:Message-Id:Date; b=V9cm07CchOXdV32K8skFVtrOLe8ush2yvscGmr2A1z0rlD9YZ14U5vJXIp62VJNLXyOvZjETuf/5fGh2mx5LhaW/pGRFUhHGWmef2nTB7fnhnHeKmCMHsXXGctY/Bww+F61dqvNrHZ5B9Xa9yhwYA4ZK5vZ+Y/ldBxSkKzX86+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFuzNr43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFuzNr43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61D8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737903353;
	bh=YQY8bZ/jD7kDganSbuYF7iGT/iLFs2QPI5IyjNNxOdU=;
	h=To:Subject:From:Date:From;
	b=aFuzNr43qHK8T2vRllXMeiI+Dnvaa9CrJEAePgj6MGS8W6RoOsAg22axbmXKcQmmw
	 QMCBpoOB77WduVymmILnSqO8KMJB7djdomE/dCBQcT8a+rN3Hsw7owR7CWV7BnmjyV
	 54K1eC2OsgZdQsswBwcL8ViRrhL8Ww/CyJWCVXqiNKL48rk/T5QVHT8FKNF5dAy1XG
	 hZhnITZ+ntr9k89gVvKlerF65RSZPrvPhc0EtfdPEa5/7VkD+ArO4xdKe1OcNNlW7i
	 1pFBA85qUM+gkzj46IUuHi4jtYnsTJyIX3yRv1NS5U6Hg13549FiuX0zHB7cb4zAX4
	 uH8DsBu7eNKpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94157C0218E
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173790335359.16739.9830226823133733267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac49481ab51d04ba0d4d2992a9bed64cb47f34a3cd0479fbe7200a2a8c595fbf
Date: Sun, 26 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737903353
