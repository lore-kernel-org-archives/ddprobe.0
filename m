Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58584EED8
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790906434; cv=none; b=T/xpVSSwwwze6GR3Jl1cq6/4wUpf/VOKssqp+ZNCJi9IFoXow1wTp2erwG2AA4V372xDdkPi0ffpQsqshniBnpz/TeYh62wFFoINsUMbBj8RkEFyk4MbhMBVupT0KpO3Nzu4002oN4Ycz4UaQ5v6BCpNUeFAkFT1SFgEr/pdvJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790906434; c=relaxed/simple;
	bh=rtppdGNPzrnqjoDWyv66yvmYjlBUkziLBH6okP59Bq0=;
	h=To:Subject:From:Message-Id:Date; b=I/90C//tY2z4Txmlp/Hr2XNdRco3KYPPjyZ9E6OiVtHdvy75gzLt457LT6Evgt2USRJjP6RI5HEqtCwLnATxcNTlMpF3PmNqOallIdArXj9oyiaRGiGvTPJjGe+LcBJAgBztNeE9TdSo0L99lnouvk86m2nkvORvT+xIdaCB7cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0dfxCjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0dfxCjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55A8C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790906433;
	bh=rtppdGNPzrnqjoDWyv66yvmYjlBUkziLBH6okP59Bq0=;
	h=To:Subject:From:Date:From;
	b=B0dfxCjtffUN/oFazUuzypoiu7166Q/e8tG/7hFn8AC6S4mqqJhcN0CurGuwFZ3q8
	 7Bf/CLn9HHp5cbv60B2xAxUX103Se1CBCScs822LNxCkPZba8nKaHbpCWIyq9Lg8Gi
	 uLeyce2sB2dv6NJaWDR//mtnQOrSOZyeFkQNV4yLqoeiDhKB3d+bbfDf9mMB7ljhXU
	 9YFNYxSFOTFMqnUT6K6k0WfAj1/ZyqVfHhcv82u38JhkB1DmQzdqfMVKg2DstDbbJU
	 OT4iSYk+iGyO3a2b2Ju81l3ApZ271AKLWLhdx9AXCSLEoisE/bC9GsgKQLPrrQYMIj
	 KF03xoH7Dlw6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBDECA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090643370.17429.4008026685908908451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8045abb6b0b2c07b24fd3d6cca92f5b4fa9cea4b76e743f60b2d358c0b7a7a0
Date: Fri, 02 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790906433
