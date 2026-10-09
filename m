Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4771E3DCDBB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791579034; cv=none; b=RQWKtG5wLXf352lMYLDiLHIenpE35EjCX9SomRyHBv2jXWlaCkJSkTDJHIRav2CQVXfPybGJhrZzEb83DZMiBTAJH9TQHfBS0oX/nXPQ+8wz4/8s3SYYuYkHkr+PpKXPycKdTgS7YFlCG3J+ila6JZz5kq5h+L6yCnH7VZ1N624=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791579034; c=relaxed/simple;
	bh=37D3611NYZF8MO07o2WRfZJIJKXAxz3ihmnBsf9ODsc=;
	h=To:Subject:From:Message-Id:Date; b=p5XqmKcdVjQ4+0DNbCVP+RpvrAymmexqKDWzKZUBD1Dwq27QRpBo/nHmJNCCJJdUCDaJ4gmi/CnW1U4MlCjtiHnZTdX//FvHin5ud8rKjJsbrtYlIjcg1dEYap0HcoyyN3BAg0UQ6dj43ewdNgznWCWt9JVS9NLoAI26t6GwKbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPx1J3bu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPx1J3bu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE154C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791579033;
	bh=37D3611NYZF8MO07o2WRfZJIJKXAxz3ihmnBsf9ODsc=;
	h=To:Subject:From:Date:From;
	b=YPx1J3buMtHRwwJdeTK/UphoAySJMgz+jjv+jZNOAWSIV9pY38jiRp6fiW0JtMGSS
	 kDqeNBqGrVGydwmkPzbubyQ47gwRsm2OTJY3At4JHsTmJ6qhihUDE5+4jMI0FD73/S
	 z0zaTJFE3U15SGSRm5dbns5ZiMlXF64UfBtir9M8Vsn8+bBKyfxLbQ4t8CixC71P7/
	 XeBlE62cTxVe8WnRM5MInRDgE+DHapbRht0V0lpZS8I68hfNEXsFtWtoqu0Eho/S20
	 MNHYVbA6ajYTnsRW4u9tbtzxQNvI9irlE5rt2Frj92DOJC2OiNVCYkeucOsGGn79vv
	 peWiJQY87Pj5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC1CA9EBB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157903368.4123.3046467187582801389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f64f907ba7329c8bdfd77c13c766c8c7a49523daa803fa98e4a52a73b9798ee5
Date: Fri, 09 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791579033
