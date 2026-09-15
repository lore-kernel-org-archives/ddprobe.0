Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9A83D4132
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789491634; cv=none; b=Uvkxgcpxn+gJ98Z23S1Gm95d8poj2pk1wuD8c0QHcDqfgJvSYb/Z7iLLk21AGUWZwtq9S0gEGsUzVjL1GniC6JjiWrjjDgtsVVhOdsGgIMj093Dt00qENTGBqkyw1mDTU8gDXZrUsyxBVL7rg4HX9MNuw42GmW2MNJvNVSjMiHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789491634; c=relaxed/simple;
	bh=f9wpl5PEumQmJCjezH0TucCJDexzALjSkJ7APBkRlSE=;
	h=To:Subject:From:Message-Id:Date; b=elSM1wwxk7l3djFQb/GfhZ/mQImL74huj/QKFv2Z7Lq1B4JsfnVrTt3jpJMxBCJqh/fmvzPMBpPkCGxTjJJ3zlBxrsoQql0WzxOWRJnJjIDqw/4ykXeE9HHsbSEzss/b++icN76mv5A9SGx5PUNpGWYjV1QxypRPkP+oq4Bm0d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0as0w0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0as0w0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6E6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789491633;
	bh=f9wpl5PEumQmJCjezH0TucCJDexzALjSkJ7APBkRlSE=;
	h=To:Subject:From:Date:From;
	b=W0as0w0qcyuqYqg5Q4RPCtiLCIDMhYXe9+EuIeOs4PevSb0U6ItybhZozTqOed7fx
	 N6/XMPphREoZi2LOaEJO/bpU9b6O0FS/agrGY5dqQIdadjx9Ih+WWF0OhRYgIw3jlG
	 7a9GVEC1G1nsMSlA/0AeMmzbB7mXi7R/6G/y92s63cERVyMH/ArYSXeI6d5aZPd5r7
	 aEp4XeU9flVko6UK5Ch1yr7nYHJiFWh+q1UrEMhrgXVkUIhmZ06m5MIqh3oEMyfSMf
	 N2vLllka71akvJER5xyqd8JbLOd1yOZkmaBDx0kMpNU2uRNjH8HOInZQDQs1lwR/k7
	 SYjCj5aGbG5WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0B9C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949163368.8270.17782782483840010174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3258553e4c9f2014b2aa837a9e82270a0c53649faf2110dba8af5ddf26a031b
Date: Tue, 15 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789491633
