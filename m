Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2211A42D3
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727348754; cv=none; b=lcXQ/Nb0WPGYumkdsZF4o6ZDUFRFwgQR/MVEsRbHlDqgXG/fMM4VE+JwbpCClyY4eyDg7jHT+PcZiMKl2QLl+LMd499IhyTC5jfQmLmNZ7k5p5HM6YWcZLewItEqSdjsIDaqYuKbqs6xc3Db7YAGjBt3Usci8HGJI+vPz2qKcpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727348754; c=relaxed/simple;
	bh=lhG1r7SwruRq8pusUCKhFwVQwErMB9U4BTpYaCblPKI=;
	h=To:Subject:From:Message-Id:Date; b=ZUowjvkep2qfLQZ5nnBM+edIOfMQ4wVnwExtsudBWT8Qy3OwGLZkUftDF/wD6cb+2NVtt6HLSNGJ34vKvO5WhBc5kydoxzVQaYAEqZqdy1a0R6JNahOnrKJhv6dLdFnppTDS1LpWrAJGhvoMxkIYwlql/lHJ+ANwK2gmjGH/tPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9tctSew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9tctSew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A28C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727348753;
	bh=lhG1r7SwruRq8pusUCKhFwVQwErMB9U4BTpYaCblPKI=;
	h=To:Subject:From:Date:From;
	b=Z9tctSew6C/aUoYGrX8E4mLW1xGNgFsqUEsEVKGdzGdVcKdNNRFDQL7OiK/n6Ao0j
	 ji01BpwfulnB0dSZ4yDB251xG13STadUPyk6/GF5BxikzlJKyAq+X6JpLjH4O+tkli
	 aqY6i6Eo+qfMBxTlJCeJkJkvaB0ORdwhi8/Uay76CEy++OFGG9u03rwdCZ2s434W1R
	 q3xn5o/08k0f9q5q4nIZqENaTwICDgAsxIeYepNh2VXcLUzKK4eId3FlNUabdTa5OO
	 k5am4KQJdlzFrPnKL2/pXqlrzgprOl9R4wuSFeTAz0Vm3JtNWbTaEXy3mn125FVI64
	 Mco0fx5XifE/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C88CCF9E9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172734875359.23551.15665860674510449161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 563011d63ff0c97546145dba6da0e7969f6a58cb9e3c4ff67354e8ac47445682
Date: Thu, 26 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727348753
