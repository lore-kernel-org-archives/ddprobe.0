Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A02F5D477
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742438394; cv=none; b=kji3QokzRar/X9cwr04Bhg2IGy7fCI/AHNMav287eKPjqIVbi1RPUVC5fBvQ6M7SfK/e1Obs3GkoZHNjNbujRVThC4De9+0ZroO3BAdZZ2PgayXzWQPLouVvS9qmYuQjWc6/VCFQpgIRzHuyNixvYFDbXwbFPiWlHtXrj+0vBIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742438394; c=relaxed/simple;
	bh=fkl8YxRNWnBnxZpq/rigFNEIS+GuBv0yYar/dz7trxc=;
	h=To:Subject:From:Message-Id:Date; b=YHUUArUqkysSW1T3MPyg6oQDcEpPpafzAbqVfdyJ+mKW0EwSJkAX1oOF0KnYEz8jX4dXQ1wDEJrs1dhsQXsuqjV7lN0JO14y9UEhcQoAhJ9dDvSA4U1OwmBAPVYLdIwpd8xR/1C7AISs6RkZ2kqsGFOkqaQsz5HuTfhrBKtBTOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAUkMXra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAUkMXra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7871C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742438393;
	bh=fkl8YxRNWnBnxZpq/rigFNEIS+GuBv0yYar/dz7trxc=;
	h=To:Subject:From:Date:From;
	b=YAUkMXraOyV8Q3KOqjf3MCZ1NUhLJcxhfcuaYnLIntSFTnA5OwVUtwxNLm0vpKbqt
	 0bfz31Yu0Vji2qe9hWU6av8t2E+VWKfZe2XTcpPNCFBv8hyOfmmaZ+SPNvK2Q+zy5P
	 i4LAz85UMCVcIO76y7eO6KLh5paDtKT7jldGuzAC2z3XAOJckvOtS0viP1BoYf+UGV
	 9Kh5E0tY1P2YUzQh4XyRJvZ69UWLP1oWAucD604fzdKMMrDAZeLsS/yHtyDlKcxGT8
	 Tij44WgGKCzo2DezQbWqhcHNjt5AXeFa0sTdw7GPtb6ykPqbw573Sd8/yNYZ8ZLtpm
	 P1bvbI1dVSLrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D610C35FFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174243839362.14644.16324487384672009869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f3127f64f7f530674c8b7803ff5a75d210c34af79b500e7312cd7fae388d20b
Date: Thu, 20 Mar 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742438393
