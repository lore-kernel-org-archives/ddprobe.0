Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109273DEAD7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774352694; cv=none; b=tfg/qfuvatwDytrsyk81ImdRrWgvNCPT6pamrlMspObn4RXKjIPiotthSq8JLnHgerWHznK1jmSmz3NXM//an2PogjLMr41uwODC04WhUStO+94QppbMRDkRnl1xkhko89cLKkemk2fZzfj7kMW3+eu66oPDrcj+yuUjjGtB/qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774352694; c=relaxed/simple;
	bh=K6FFvGYzw4akD0CkVSw5ATHou9WKT8VNB6ifGuLVWZE=;
	h=To:Subject:From:Message-Id:Date; b=WwekXPezxoanlUCXNpWqnbd8eg0JAIV35GOsY4C4fV9YG+H2xnqpu7Q+w6UXNb0O3p9AGMZzKbd79yR54aCNIW9iGlfbAOvJWy4Fb0h6Pkm6ztzvvAfR4iSYdV2yfYvs6PBrildisNzAnhv1SBZBrlRo1RULq8n2Dm6g5xUSo1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8N/fsSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8N/fsSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4691C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774352693;
	bh=K6FFvGYzw4akD0CkVSw5ATHou9WKT8VNB6ifGuLVWZE=;
	h=To:Subject:From:Date:From;
	b=V8N/fsSYe1cTD1bCG4DpzK5deOE4pMHU12AQ5DZVtShFEAjR+KS+g4iwM6FVRThMo
	 h9cRKqHDxpF+Llp3lQw+g3roMh0goje3WohmcRDzKoHhCDfDtYZ+3x3ztLLW+pHU/q
	 iAhCwLuo5EsdjrZX8LlSOddsvr26g4hbH+/REUaT6YpFzWsMkhF+XMVQOheRArYfg2
	 QexOgEt4kmwYC9HLH7FCf1kD6orT1jForZFBkSCG6JTJryRA79WgJZiyEATUCxEaJQ
	 4uohYH+H0NEXyIkWYoHkB5S8AhLTZefCm9ehF6nn1Re6FidlNQQS9AsjYRRMgBjyv7
	 FbKy/Fzeg+RGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E76E9A776
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435269358.26121.10428196108832312961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a6c0ba745393aa6a350ed62462eaabc7ae39c2b6985d1f3c2373cb06c0bba8
Date: Tue, 24 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774352693
