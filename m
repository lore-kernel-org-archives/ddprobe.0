Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1584594D
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735379154; cv=none; b=Ru1wS/Ci/Q6DpeTsl3pLdCx/cWLkKnON0iNQZ7o2lZhKDg3NBCh3DXJtkRv9tjJ0TYSYMfpKT2k09KLQZpYujCoChpqOOuUAnh080HT9RMPp5EmN7hGIuEPkHzeW5EP1YdQvveNxfqHKYklS84vFL9jKOZnuo+yK+TXhUD0fQiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735379154; c=relaxed/simple;
	bh=GjPYcXxAmLxdiFBqp3Nwj0/DM1wUOWylHbkHlrxZauY=;
	h=To:Subject:From:Message-Id:Date; b=bU2HYxN62pNpFRMBLVwY2K88SsaiyPP+QMNKjtWkl72JgZQa472pf2W5vGbVgKsiax4FlC+DTom8WSqnAYEClUdrgQ2RBrdpvhYqHS4Qxixmg8mY7g63SrZFVGWdJxzoW2ZO5e+Tw+gS1msOT89yAX5QZhICcXP6wfLW47h4BWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVNZMCOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVNZMCOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C88C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735379153;
	bh=GjPYcXxAmLxdiFBqp3Nwj0/DM1wUOWylHbkHlrxZauY=;
	h=To:Subject:From:Date:From;
	b=bVNZMCOhNnT6skM0ouZJxUuasUYo3pbvCB90/ESO1xBXHIMKPEcD6MZAOL58l/BGv
	 yH5XW4zOGKo6w/h7NkbBnRSMT7lAzEoJ3uwIjLgUbDAhjSMCy7ZbqMSiTo8FLvhvWQ
	 JRQFTbs9al1UTKnh2OWiEet7U6EHq2S8ugk5FueAxWk1NNLhH029+CMIAWkNy5xUbA
	 NKQ/kQJ7/P80J9AyUbo3zSPvUw27mwNn7bzH8jd/XZsklMXkmuqY8PvjeZ9ehfWTf8
	 p6VECCksl16qOeEWXFv3snNNDD795eYaoTsKgJ8sN05cdCtgCPRaL1cbijAMqxLrJL
	 WqBUDb4JLg9Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB756E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173537915362.16499.11124815879746102445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e353e542680ef4b4a50c16c73756b3397f5fbd116903e3ab9b879a049e0d50b5
Date: Sat, 28 Dec 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735379153
