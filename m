Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B60E347535
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783717714; cv=none; b=JCTJknJcwNbTIWAorQj/IuYbe4uTXePO3wwlOdMvuSwNXExGXGvaGUCf7lzI7yoq6vnqPeoKslIHjQPRAxUSvU2bKc1GIzp1bZ7FUGY3nlPdNwyHwobRKAkOLlhN8EaVXAj35xBhDQsLsK1Ws4Ee/kV5px2RfC88I3ihpu/3ZDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783717714; c=relaxed/simple;
	bh=O+3WykPecAnuJWlpFHvB6oFKteHRqw6+fpf+FjfD8Po=;
	h=To:Subject:From:Message-Id:Date; b=JMcXegNimT9uF7q+a34a90rezlBHwqP9KmSkg7HFbWd8KiVu+9nCcCbIkshQwgARW1F2LwScN/AbkGjkFKsAhLhTQCuRF1vEwU5CClLQl2E5Hk1VjjYP63IfE1K5pOoh8V55wSyfLk9rSlz3kdG/flJEavYuHrBjZh8qZdCljxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qlk7mZCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qlk7mZCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C945AC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783717713;
	bh=O+3WykPecAnuJWlpFHvB6oFKteHRqw6+fpf+FjfD8Po=;
	h=To:Subject:From:Date:From;
	b=Qlk7mZCEHE+1Ra75qcWtIX4hSxSGc3uf+AAdfqFL0cymseTK3YNaHFwGwyU47SA9o
	 xuJmLTMPVlWmwjz1kw5BS6qup/jFlYSr7m4TXQbgJ2aFy+VjPiwZQI9mZnvO/4ttdt
	 N9nxuIilpRgBsl/1drGX9SW6q7noaZshGsa0HLLdKHuNqWm27C98aTwevvTdtMZIeP
	 I+HAqP5zf8enKwPlPikcw3JGloRMtcj7f5Y5BV/2X6AcyBbQUn62lXKa7C64ZU2lHJ
	 /PIXQmLQcvN/CZ7oxb7n9BgxFzbwvnBZq2ZDOtdUmK1/uk+aeH16Rcjp+P+F9IyHxm
	 k/fSMT8LuBkfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0BCC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371771370.21615.2381569306989652884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3946ac630fe3f28bd5d594b88afd9f19b4c0faa2bf624a80004114dd782783
Date: Fri, 10 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783717713
