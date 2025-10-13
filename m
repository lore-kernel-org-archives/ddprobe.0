Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D41F2343B6
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760363394; cv=none; b=K5FgQ0q08ebs2kjFurypmo8633uAtuvUfY9wb1mOizBFfd3RRxt/kSX+z3uIEiMlnuJyYlNWtkqiDKs3lD41uTLEbWo9BfSb3rgVWuzQAkydMYphHkfgzGb1NLiL08KHFEpicBqgdekkaFnpHutNEvx3s2KWGgIKjk69Ut39tPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760363394; c=relaxed/simple;
	bh=9jnpaNgjxWW5c1AKrfWUM6OhARfxhLWjeTcFhso3cjs=;
	h=To:Subject:From:Message-Id:Date; b=u++S2J120eUtxlOjy/MqVgFKAaV4KL+t6rwzjwmZW9oiKF7NxwbzHuXwW6xcshZHMe1BBdmKC//nEFeyeFhAh6nR7lKf9V+2qb+bo+IExNiWTQLdLM9j73J9lV5JkDwtU5HRBMQ+IByEl/hwX5jng9dSAbLAu7nscDaBHGeg0rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObVJKsAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObVJKsAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1731C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760363393;
	bh=9jnpaNgjxWW5c1AKrfWUM6OhARfxhLWjeTcFhso3cjs=;
	h=To:Subject:From:Date:From;
	b=ObVJKsAbJsY4DoU2ZOjH+FTCOXfSO9qbOwAK4u7nWeBLs505KmTlRlKw/F4BNSwSU
	 YA/mW1Ft0C44RkEwhcvWa7VSupGQE6TfmUW182rKjXsJ2ZmCvPwLmpHwft06Po5B6X
	 ed8YMa2fwI0X5CE29uNysNNYUZ0jCg29oeG6VzHu9fT3M8A8rNffi3moXZT+KA2Tp4
	 z/aZfQZOUOK966fcDrL/9oyBJgi1a6ttU9TuuXQi5xF98f0uHsnOJZ0zCprwRT+EYO
	 ez4/AxgncrvQQPCYt61XqCztbRMtUYPGvUKpRjQ4HQF6ohX18l+JqmLdXkoASqgCIi
	 NnfC+OhvAV4nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB8CCD18E
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036339357.32611.9846596308667316188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff6f79db30da819e432cccd6380d640391a76e05ff019504c176146619f727c
Date: Mon, 13 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760363393
