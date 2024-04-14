Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF343D552
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 21:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713130763; cv=none; b=eD9XXE21BpPvjVwW+eOaKjMcZSATWumG6Is5aHGryIAHByWWzVK3wgBvsMi59hSyjd5TxgYmm5KpWpmQjq0el4JGdI4bsoqkU6VB/RsKpNBFxXm/+2z2W93K2Ko/GqQFEkpLbtmavCSUPXwApUpsw3yEz2IF+0QA0zJrnRh0Nzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713130763; c=relaxed/simple;
	bh=VUpWMCL5hG2B6OHbKUVEvsSDfBx4z4dA5zqSKG7A03I=;
	h=To:Subject:From:Message-Id:Date; b=Gx5VypXLBAANdqiAjCYokr3nAtBo9MQLbNyfZLAGjvJPok0VK+op9r9awKIejg9h6Y9za29IgqUEwKQjrvUOPHfR1D7bu3fny5qDvzcj0Q3/4ShVkcf+O/SMVXxNdCFCx5v/NZ7SWMkOMZBb2D4IBSzdfFyngWkBlD20MgbIbQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVJ46hEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVJ46hEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AC7C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 21:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713130762;
	bh=VUpWMCL5hG2B6OHbKUVEvsSDfBx4z4dA5zqSKG7A03I=;
	h=To:Subject:From:Date:From;
	b=YVJ46hEb542MdZpukkhfKMCoByYFdH674AQTd1S9mrW50UuHkKBpo+J9U8sDMHSSF
	 jrRXGE+laXERSTMzjmbhNf7kNrssUUN1mcfdifPLDGW6ySbUzbLD0rbs8IbvaWjL2j
	 pkzC1gwxzQjmAburOAfnX0HYiMtNw2POYEeYsTCzIeTH88OD4xHfmjRUBDaij10dsF
	 tpKvu6YRxP64OklJT9ZJ+153YN3Sg/RcsYUjtD5z03RBOGFtvaHxpgApODHs0c76Hj
	 r1GD2V8XU01FGa+r12VO5rIK4XhJTzdPE+r5W//T58brWCPSYIxgk54tKXqggLbOAv
	 Ren4MGhUg+7tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35B1C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 21:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171313076277.21590.13840827512659405151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b52188ed904703b23a93576d98fd5c119231af366059c9ac9180e90bfabc124b
Date: Sun, 14 Apr 2024 21:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713130762
