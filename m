Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264CE286430
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777454854; cv=none; b=PBM1AxxCEJ/0jxd7nD2tatCcZJ4oC6Ad4/5ltMELwH6t7Sl4xVx4akQ9oFlhldySsOl3050eKxqrXDs7b+E6Nh/dBcfuMlw/GcIMWOxFEAGQFU4Ieeh6BMsAxZahvv6sNqXxGXxmPf0G042sKZjiv3AsEObw+npst208Sl4P2Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777454854; c=relaxed/simple;
	bh=/RWYdfDVF48Fz4oh/K/YqZZPqpuoyOFimAGL05FZbts=;
	h=To:Subject:From:Message-Id:Date; b=MDkqaEe2OAzW0DNYc7PnitgnpSAnDEEii3ZUMnnezFjmDdm5F4mPMtvan1YxWeG2/t55B42EGUMTfGl0Kb213gRjeAegVz6m8KX1yhQbc/3mqp2fX7a0De9hWIwAUjgnGgSt5Q2hes915TRKSaT6NWfKnzODr7jdVVtRIKQ0mYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kpn0AbE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kpn0AbE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA48C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777454853;
	bh=/RWYdfDVF48Fz4oh/K/YqZZPqpuoyOFimAGL05FZbts=;
	h=To:Subject:From:Date:From;
	b=Kpn0AbE3/TxwuN7br5RRJ3qQvtRc5RxtHh8XRlQMAyYHKXyHfpqLWYO94j+8EO1ZZ
	 n95zcDSxRl+jgy2gjqQ3KyaF2XZzYzbP0L/XpkbE/TosJPW8ypBzKVRhiJocGk2LuL
	 deG1oKjsxwxA9fyFS5wb4FsIe+ctASI53b5Ui4mrJ2XgNzZ5hOUGlsXPPOcsI8H7Rr
	 Urd/HnnZr4UvIsMUOmMZ4jt3jlv+VU5kHbD/wu++SK/wXzht/fxK92kFZ82jsXmNy1
	 L96j3KOP3O4qGpgcMXrkiEhLz3J3C2crpEHgtP3dv5eN/Xn3nr0m9mwpz36luGZwCg
	 0wgG32VkoFRbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6DEFF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745485368.16897.12206065167373605941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0afc673264149b17fd288882bbcd448729d6badc3f6984d79d8f3f5bbd63762a
Date: Wed, 29 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777454853
