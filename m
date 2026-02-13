Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E5327456
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770957294; cv=none; b=FO0/hoCXwSXZKjZeOlIZB60XOd394n556tnj2yi3lXMK3AYrK1V78M1izKt3bevC6h/Jb5s7WXQftYZrJlJDU350kb/uVf61EYS79qN3CNhZVci+GciY2AUxi+UB3DV6k3CqFUjzZ8cIPEwvHTdol62GKSLygFSBqzN8XQG5rKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770957294; c=relaxed/simple;
	bh=cbi/ibu6+wpMmgHqmKRUuv3N/ESfSmEDkVd+XQpV+Vs=;
	h=To:Subject:From:Message-Id:Date; b=TdtXOu4O18vWOS5UOtgdFtWjTc5vr2kUzMGKa8M9i7qn+oBi9r5HTHsit4ERagKivRUur8g2pysHP0Ca37Attw4YvLERh6dlaq8hJX+fyU7ZPROycJvHOkG/HTaaxo7OMvjPs+uL0l5BFImdVmiYYEpjYRCBzNrnoJYdMsPid48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZiPoZ6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZiPoZ6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F1CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770957293;
	bh=cbi/ibu6+wpMmgHqmKRUuv3N/ESfSmEDkVd+XQpV+Vs=;
	h=To:Subject:From:Date:From;
	b=VZiPoZ6f5RCqK/UkmvzLxBueSnqVvuhD23tjnQfo3tXDVCi9KBAYUyFuZbqBJP/j0
	 oxNqcL6STSQB7GjB5ee6sZ+RUaDDB5273g4BTVZqdbGMD9Crxw8dyGprpOoEhWI7YS
	 R/OueeZgnN4m6A2CgYvQGzID8vAlqVqFA8+DJtBnd/m8p5lfY3mOqfmZqb36BT5BuM
	 +yXM07EBTBK/QXZmZNAO0wppMJbW2WPdMzSKaSzAdEBanv7hTqemHR55Hp8TbCtMw6
	 XZni/J8WSGprw8NsVC5px//Ygtj8/dWtr3sqx4N+eQ7pVtC1ucMxaHN9JL2dJaLjTi
	 JWU/FMpF8GMXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D866EF48CA
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095729360.7565.18279975166622821172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf67745dc69bf4d5b0b009355f76d9ba435de0669382a0df6dfc6b00a942a28
Date: Fri, 13 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770957293
