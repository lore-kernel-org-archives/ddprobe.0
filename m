Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4110030E0E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781593594; cv=none; b=rRjjzAMmuFLLxFqVZhGrPehN/vhr3KkuO8ghk1vtErb6Rz+RPurg0u9ExHixP+Of+4BjFKtbm2CklkqQNJu7neVhzdKAS7fLrHF/Lln2YpoXhWx02aV/sW4JYcKrgR55GZEi748CdeglKb3hB5YJlKMPdNVEVlAKC9L2TJ0Gb5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781593594; c=relaxed/simple;
	bh=s5mhXxBuJ3t7teSp1A2cCKNEIaGhvoUqI16DdASOrIQ=;
	h=To:Subject:From:Message-Id:Date; b=QB1NH7CEbNxFO12QXT71IUOZFsM4hk5+xgr0jwSJwE8o6aNipUfUhj9BqMmNNUpsNVyV7ideOI6vsjXghgTSNZzcLsatDMAyUBJdktLr4f82VHJQ0Pn7fgnbMTYd1VLjPr70DKOgVVBJDmVxMoZmMAGvyDd+6h8vphXe67OUu5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPN9XigH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPN9XigH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1408C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781593593;
	bh=s5mhXxBuJ3t7teSp1A2cCKNEIaGhvoUqI16DdASOrIQ=;
	h=To:Subject:From:Date:From;
	b=pPN9XigHkbZxyfl7ZIolueX+yJxDDqSo4iudx1jsgqrjdOgqTdVXkp3EAuUO50+WW
	 rwSk51pB60LDsaC+m4b/9y3vTTMXSm/xO0z0limU0j6Ei3IszNfq/OyXKEDFSWWGjQ
	 XhO++QProl5382puXhx1HF1oCS/YiZz99dpIoowpD+8BBg3SC8m32X+bzcbs0pN3AJ
	 jglo8rLD6I+6vD/DWc9LCXDyyQIVxMya4l1hyf0Pcml4c3b1Ay3mNv7zORqsS5eXfU
	 KWR8/BEO6YKEGd09r1c0M2CqDymtcjiSG+wvHPur2AiQZpqDb9RneBTYjwlgJW+Ya3
	 f8exENHxNy4zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30A7CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159359372.11303.16615862967852536758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4399a88d48d90abaa7784856c47d310dd5a1c5f79becdad0b9c875514ea8bd5a
Date: Tue, 16 Jun 2026 07:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781593593
