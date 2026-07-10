Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CD2423A72
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783684714; cv=none; b=iux6eD/7YutcoQE1e7kAVk+QXrKrgsArQu8n0F3wmKZ8roA6vR6lp8LQlJ3BFQZ3IT0jELjE3sHTA+Rhzfs9E33p/v1qhv/bxEDetZjPnhctqdoYjHAxi7CeVr5aCbACBQRWPr1eH2WOuaRnf8KkGjrWL/tzCP72zmz0o0SsWJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783684714; c=relaxed/simple;
	bh=4GREehNAruhN5XuWuRBcVd/2YERzr+NXNJFecVnIldY=;
	h=To:Subject:From:Message-Id:Date; b=a8VzmmMX4zDUUlUj14erg8MijiAEv16wHxSzucMyL3LMmyyGwMlOntTLgSvEdKbbqZX4fSLfYd4s6z5h6x0gRxL5DEYTrPFu/Qy905BgzIR7RdZp5sqGTe+gfL97G6HEzLS8IbA+tcHt+wnr6n2uZaXMSLRze0T5kRH0dt48GBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuMhfQBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuMhfQBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF75DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783684713;
	bh=4GREehNAruhN5XuWuRBcVd/2YERzr+NXNJFecVnIldY=;
	h=To:Subject:From:Date:From;
	b=AuMhfQBZUYpMsdf5DuuK5rRkfp1KyA69A11u4vt5ln6k/h7bh/2pmG81Omfvcktmt
	 SytwfypU6WKs9lUmJeE7XqfbqgbfoexO3H5I0KouO6OO2I1aE/34WRlfVkbOy510yb
	 F2uIeUeZEYhqrxhaN5/kYwJjKA4CfyId1PPtS4ccMwD+VejGTmLqYPDoeh8nRPxqAW
	 rWiMLUtUei88osKZcv0sK8UhJONaH5l/ulk9AoiYd1CKSXtCzBQ1Tek0ucF6BYcesC
	 ZaVb7znwaS9fQdKWh1W1IYpU91YB2VO8tN1/qAGAjK5by79mud+Nnn68AdlL+EZCoo
	 77nMIR+LDCpCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3BCC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368471369.10803.17279425812329914375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b5c1268ad35cf7cd2cb0412eadb5ee2e97c6f22b9fb0af29d088fb6eee1e3f
Date: Fri, 10 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783684713
