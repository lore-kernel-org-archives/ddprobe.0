Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA17284B54
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768273436; cv=none; b=tth81yzbuyqs0yh/giS/rOCWg7Tqby90Ps8KAYRRT4MfLi9o5cd1a12FmCYe4p0kCs8em/uR0wH0USCEKJ1kcOOV3HnVXYb+gI0K0aVkxYqJF/CG0t2rcJutc6ujjIIqbxkR54HQYdJX81UR8LG7XRUCKVZ1zDhWlzjSr18b/8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768273436; c=relaxed/simple;
	bh=AgkFYsqx7XauUZzC2/eVtavnppjAdNOl90ueNicWnrQ=;
	h=To:Subject:From:Message-Id:Date; b=M2oUbKLsYwocSmKD+lNzGFRsUxljlS1/gWLXYDZbgE3O+K6eRLSUztE6OXpUpHov0HKhtVkmhZq8SUEACpQNquL06ryBVqw2xZ0D4+NqydKiga9XcTV+UCrI025rz7fdF3U6u/LlQJ0XQ5iyqX5WT5Gx6qNXhrknu7yxCaFt2x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHbJpmFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHbJpmFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE137C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768273433;
	bh=AgkFYsqx7XauUZzC2/eVtavnppjAdNOl90ueNicWnrQ=;
	h=To:Subject:From:Date:From;
	b=JHbJpmFbeC+UmcLI30dsXpON7qwW0rlNlZ//b98NoajQgdt0Xei03AXt5k8EfJHus
	 D5454eRsYoxDsogzy4EP38V2JOAs3rv1hiVEHitfBJkjKfhohQKKyfiPu+uA0ywH2Q
	 n2Z0TojxPs+/LE3GyYeF0wdz7aEvYmwJkBpRln/96CgcLDUNNwbORLw3coLRHkFjPl
	 pnZfEAsxIFoqyKvdsqf7NWHVHmBQcJcbZmxNfHIb4HNlPk1g7K7hQM7CJKLx+VLK5J
	 AGV8GBEutpzhPzJVgcN+UOvE2HFhKsoKIi3lIAKhB11zUqLyRucpQJP/N6/INPfYWC
	 QZ00fhhwz+WpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF0FD29DC4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827343363.11081.12016464278590104444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c80ddaf3acac3558d6eba8a73ec73e2b018934ab5cec718af73c66940f11ed
Date: Tue, 13 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768273433
