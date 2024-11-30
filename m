Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3727B2F3B
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732944954; cv=none; b=he24ex9TCZH8bij4woxl6jCab44ZGm/6y/qthxdFbxRWQlSmqve2tCyNg4oq0qHUVBjeLh4CQX6hG+vTCLhi6U0wFIEswVOUxsyFtxxUut4SAikXNBCyAZr6aPUBo6sK40Zjvwey8d9j64qySp+eJ7gsbZVmeCA4iIqJnQN0vZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732944954; c=relaxed/simple;
	bh=B8ecDJ7/e+q0rOJTzRuUNI0+GhPar7UvYwPQNcA2lSE=;
	h=To:Subject:From:Message-Id:Date; b=AFi7LKKnWZPTiyc5hCZ3ONsM5qBtvPH68nakAHxRvk6XIYW6A4nbhu8Fquk+nTWbHMrDV050stWLFY7w+duAp8L7C8eSQAGrd9JTGkfJyajDk2LLczZcH20rVV1pkrLVTzXcLb1VFkYEqxKV2L1QOFG1kNxShZKn3F9tZB7uNN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDCmaWB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDCmaWB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C82C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732944953;
	bh=B8ecDJ7/e+q0rOJTzRuUNI0+GhPar7UvYwPQNcA2lSE=;
	h=To:Subject:From:Date:From;
	b=SDCmaWB/wO5HYc8vPGkAb8vq2RAzG3piiwSpYG7PG/mn8lXbdm6uVenJMtxMNQgu9
	 B0C8SldlwCuwIjFTgWPaRE9pqQeME9N4U+sYmh1MzAIG71xecpkN8UnGnjJXa25Ff2
	 v54XSwazJvgOsx9mf7LepLEquFRsZpBFlbQ5iD1Jnf0Fiv6t1V4p0OuYL1+/dEuFms
	 LyvJAJX+cnIGEWjy0W9y1is7ElFumWtMTjEFRvYFhYGfBWB7cS7sZT78ldBEzJVyMt
	 6nYgHBciUVCHQRPB7JR6ySGCos1XUu0pxS1rDQmPH5UW4+jjPJFA0pHD5DdgBqanc/
	 BnZujfUbfTazw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB11D735F2
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173294495362.9579.7449814638581042926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9380211f5972262c56127dad60ce1fa53cc032ec3b3618503c5637d74f11aa06
Date: Sat, 30 Nov 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732944953
