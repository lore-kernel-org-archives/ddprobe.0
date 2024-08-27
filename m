Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72B36EB64
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724784353; cv=none; b=BmjnFIGEBFa8+UsYGwZ8Y9eN9HpVlAYMP19mEmck4TpXWrvj+iuGNxS7FhsTsZdlAGQwwxEMzBjfdtowGSemoJM3oMo+OM0AZb6GC+BEsTWrrt8e67V8j+B14zSGyC0ryqTgUOFIASQcksVPO4jXMk1ZgPRaddRPCT9+7XL40G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724784353; c=relaxed/simple;
	bh=1OOpqzLuN9hDtUHLZncrasR4ZDESb8/HTe8t6tbya5s=;
	h=To:Subject:From:Message-Id:Date; b=Z+MS7fZEWSmsjePJ7rWMJtfrFK29rVbticoXbBrXPFOTraEd6CNMyESB55sb903/2N0ny2xkNU63Fg82GPR6g7w3foSmz0Z3YLzUzMRjOTOkz16U1LhNe2DVIksyRiFL3dGHIqAB0Xh/lXC4J+2p+/JxykMes/S+OflWgODKdr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcR3JSWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcR3JSWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69E5C4FEA1
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724784353;
	bh=1OOpqzLuN9hDtUHLZncrasR4ZDESb8/HTe8t6tbya5s=;
	h=To:Subject:From:Date:From;
	b=FcR3JSWr4M4ercFjqnpglQvAFO/HSb83my40+WEtdjZAx6AXUEs2F3HjCj4a/dHg3
	 RhydyNthSvLJYAetLv7NnzJHnkUDhoVkkJ7ysxC1cXMNsoVU3+/DMnnzGtw8uQVaaF
	 9jFxLpdv5KSNY1LOTbtJFpbYHuRVeHORiCi7gUqy3ZH0c0HIuapNo8tJALeBMT8ChU
	 056H2sZtkMFc8ABKy3/ijVImIiJFiiKectUsxECwgS6WxmgbBt5fD+FKHyf4Jn7yg6
	 /lbJdqKWvh1jTdrpNG/9EsMXT9+BtpfHTr6ZaL8fIKySCiw2Uv2YuWNy8O9dRD+qoy
	 CBwNq0tOQsEmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970F5C5472F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172478435360.23345.18417811885558168408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 349e4f576de94f892364b97963ff8a5771c7de086fc692ab752ec3aea4b73a9c
Date: Tue, 27 Aug 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724784353
