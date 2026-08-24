Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4142AD35
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787545834; cv=none; b=LiwZEfsvKKUJXV/rcX7l+sReuLRzGU5gmfeUSEudBVVfwWekom9ns3NMTz3wVSG+CR2HgrzKxMXDtnCu/mEwPzbYo2tQ7EWMpWc22LrbpXRP5VLDyIC+TnEIDYHh2LvjZopUsuzWfqI9JYPY7qp64zDXOw5iE1ibQLzV0eX4eEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787545834; c=relaxed/simple;
	bh=FI1V6hB9aVt7YQKISoFXKUBGn8rUBvoKVNgkyiFsJGQ=;
	h=To:Subject:From:Message-Id:Date; b=FCbEFHSOge2aw8eo6YCiM7687In+DuqnJu3P0My30wSuOGdpQ0YhNsvYDP85bPTchDfhiDq+Jdesf4zYKQM3w1mzdGsLCX9gZj3ArJNMOyTwDz1xuYFksi91UfS/HKE0aQU2Lgsy2TYav1+tWmxgfUUaij/Nf/EsfnroGvLqW0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5xCB/xF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5xCB/xF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF715C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787545833;
	bh=FI1V6hB9aVt7YQKISoFXKUBGn8rUBvoKVNgkyiFsJGQ=;
	h=To:Subject:From:Date:From;
	b=l5xCB/xFwIgeOUPV/gal7Z2FKe56pfKJBDFHCfmAJny2ss8ddTkafp7Gr1Lz4gfhs
	 wanvwgptLeGgaTOe0fm11bMSEcERqDQXxI9+uiDu+/0pi6pqP2jN0hftqAzuXIIarI
	 9FUD7XnSZNidrCrS5Py9ZLkuvRaONm40srO7+k5GPItPtzRqPPNGc/8a0znWP3hSv7
	 6TrcQ6CBOpbnJ4D8sx8fQqNalMJa4/ZU82Q5yr+ONfGYefe1p7N7ROZ0s5E08Q0jAS
	 6qaBu/3+M6xiTZgvn0QP3Y+dfuwCOTnZ8EM4ReUr5xcHS1xpAG/jGf722QXWiWBrgW
	 CAhDgp+cpy+mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A37C5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754583370.26785.7248496909952573522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c3989b3f77a3c88317e52f8555709aac9b5f94124e73e09721c940cd4f51b7
Date: Mon, 24 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787545833
