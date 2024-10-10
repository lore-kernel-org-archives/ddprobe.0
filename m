Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165B41C9B6F
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728585954; cv=none; b=mjuUBzu0RS1fFP6lCRg/Tz9e+5/GSqpH1eJD3PgjTDo9SFU0/hAe/32MbdU6Jc2eKWHoFYfQNz36jndKVbXoSCZclwvXZVIuGkYm/f/b96dr8Rg0aeb6Fc66oTeZkwY/w7vcTlgsf6VDFGTcJUZWAReoa1AzAhdUbqIc7LXvqUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728585954; c=relaxed/simple;
	bh=B+xqiMqRMKBmok+4OwtENylUJQgDlmaTYbvDpLJmfhA=;
	h=To:Subject:From:Message-Id:Date; b=oUlyZH8nhdQQqgBpfSV1lp/HEF8Bci00IvGUoHwQuUJ3aYRl92Zn3H04jlVL1fqMGvNugjCZm3IMooskpkI29Mn34pWHgkaVnh47KAOmA/eHvColkN1hb9Ow2L0hlLOUBz7fDtEAIpa9dQWhYdyvt/KHRQemRCO+8KDK/QklUsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSOeiwhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSOeiwhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE403C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728585953;
	bh=B+xqiMqRMKBmok+4OwtENylUJQgDlmaTYbvDpLJmfhA=;
	h=To:Subject:From:Date:From;
	b=oSOeiwhU8YMLmDMb9pbrOU7xY2ZHORHixxi0g4yEMtPngylgNjsNWgvNEYWPX7Jgb
	 +LxvwYEjOezuIIbVl+p2f6XOAbaRKbCjeaNztDsXFSISZImEzyvm7YASVYcxCKLYGo
	 mJ3SqgUPqusHmtzMB05JZ4hLeHFm3bbOmFYOEND3Cp1Q1iG9Wjj7XAqf4sW/7cESFB
	 ADq97RoLASW56cqX+yrMM8dTgxtdcJWejkLweGjGKyGyGIj/nfOAfR3j8SQVtMqcH0
	 577LWmzPihcG4lfFf+lo9rsPP68tjjFJSUyrFd1Vf5W2cfDBHsYAnqhBDuwmPU2NRj
	 eaICdF+xbhgMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E7BCFC5EC
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172858595361.25788.1102175414766527397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1993a20c228b5a4ae914cc13770e1071ac7b007febf33b4aa75022ece35b38ce
Date: Thu, 10 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728585953
