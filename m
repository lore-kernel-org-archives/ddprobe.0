Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF573C3433
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777298854; cv=none; b=emKpSZUkTSMDBl7cGeoyWeRtBnSRXw8R12VP36BKnPHugpwHRNNBwbanadwtfb34n3n08JLj76bNV8pWrM8yylUxEozwtCajgFuY3sMhnjHHIqFfTUd2nIyJ8vUSbt1j/nSD9QPi4e0uKrCjdS7KRPqWIaOug9MO2mq27nlg2Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777298854; c=relaxed/simple;
	bh=3PggZeDW0LuxhJSAykzNVs1Pm/ajZjV9TNUwqthNZz4=;
	h=To:Subject:From:Message-Id:Date; b=BVQCsJ1YC5tgB4DkZKqGIFApipI+sBeGOjzGv7TQB9jNt2p2eKaCxHwjlFaIdbS/n7Q9UKctRuhOPBImtiVZvWJTkiL8XxF6A+IwJ42MMRDciM2VToWsaeZp19Izn3x+onq5QhPXQV66n+j0i7rUDcTzDu5P9Od9DhgSaINFKgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jW4dbBbP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jW4dbBbP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87BAC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777298853;
	bh=3PggZeDW0LuxhJSAykzNVs1Pm/ajZjV9TNUwqthNZz4=;
	h=To:Subject:From:Date:From;
	b=jW4dbBbPytBfjYEhp370eYnHJOTLJJFMF9Djgc22Ud1IcQ4RHxRvA96Z1eW2F0ESE
	 QtYX+RdhFpXBMS4BSZrWWMtMN7O/OQS+fxpEQ8GEZaGQT86MRKnp1rh51g127C6K2m
	 07VvoI9fqD7Ka6MuxJ49EVuiQVOoHoD6Ulbmmrwh7gtihYGJh8R7ZkqgFuQDbhHmkH
	 reGaWblwtCtBFg78ezP8WYZuUjCU1kqF1JO7cPoP1VKdJSqCYoGoCsuQNYj7HpCSML
	 kDHwOcKLvA7BbjWUABNkRO6HYNbqPXIUBI2FjEgA2iPp7qT8ph/+OZBfVj7YeoaobZ
	 +FytUWWVKV9UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA18DFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729885368.30209.13147343139768968569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32305dc13aff11e601c70b293774fccd51165675e601bfacf3edd9d48996e05c
Date: Mon, 27 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777298853
