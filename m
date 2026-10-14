Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8F6352C34
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791954034; cv=none; b=ql2LEEm0gVBNffjubBexOAhWSxfOu7LLHh8Kae2eNMdKkIbzILz17RH/suyBh3UfxyMncY8sOZLTovyWtRRN/kJImhuR64uLefnwJCpyYFGPUSSNHco1M3TCm+Cbt8Uqg0fbXWGJhFcCE5M1e5wbipZptScYozz7pJc8jZ80r7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791954034; c=relaxed/simple;
	bh=stqVV0jIr+o7LQy3Qpe7RhV4H0jia4EP9aLyUbQOMPs=;
	h=To:Subject:From:Message-Id:Date; b=kVJ8lxaDWDcwcdV0OU5WkU8ajK3lvDWzD4boODQNHe5DQzD/v8roS2eV+XL8Mfy+O6wxO7EOzd9Fy9moLYDMHEnnkAWhvFL4XOkJsuVapQwCsE/Dxg0FhW5s1AUun2wXgBuqzrCfRnZwMS2fkycfXv9rieBF5eMdieAlMgjFm7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHSqi+mR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHSqi+mR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D331CC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791954033;
	bh=stqVV0jIr+o7LQy3Qpe7RhV4H0jia4EP9aLyUbQOMPs=;
	h=To:Subject:From:Date:From;
	b=jHSqi+mR1KqTM9/E5Bqxk3kFzEYyTwTGMdMBJmNxMnNicP3vz/RBLTbMfnaYWIr6d
	 oB7Tj8Hc3abQIgXwnnPZj8xLKb4C3C/4ojafsvuqLZG9LoysVVxnj0y0n9tN1sxm0M
	 cGHr0eNWm/2KE51FRxzpRZK9C87d8/HK8TE/S6pohU6sRD4UD+wFUQAdm0tZ9Kis82
	 QU2nwQdERqnqFjSAwZ7eMfp0h5HavqHdoazuwmmko6hIEdIA1sDg4y+yhEytcEqPdU
	 x5qQBwgEq6iM7UBv5NKdiHyTdWfvETgK4qS6T/YwI94ekjV0ESGZeNYLXezs0U1pbu
	 51fcM9kO01dhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF373CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195403369.19395.9034486621010850028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4126705710a774ef80673d079eccf2ca8d1b41a9bed7be686872a80a7c94e3e
Date: Wed, 14 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791954033
