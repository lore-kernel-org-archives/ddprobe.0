Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589B6522F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748837994; cv=none; b=iNAH80KbpJXMy2IHSZy/jEXcFSymKF0hdYUzoafn8auMs/pRz9m9sfgqmR0MTZKyqe98RgBfuEpVS4Vst7fW2u/Go9SMRBDST5KbByir7we74NqIAnZty98Sn92L7UJW3swM2xXxsc2mTgVisTmkPuY7gHQy5hajyi2sKFKYBYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748837994; c=relaxed/simple;
	bh=o9DXodmonJs0jWSJgYCXjsEB3T0C+8oZSRP+CkCioEo=;
	h=To:Subject:From:Message-Id:Date; b=b/KXXw7zvI7j0pfAyMiXt/kKdCHcuomm8HuNZ3SwvXFQGMSaBgz6FPo0OF6JgDvBaDYonPWQWRM+GeHbdbjLQMiNJa1lt48TgTNmAMPLmn7UfR4ByvUQVd6Eodv1QYPQDbQHHf3nwHCY/4zlGeVCFqRMJy8mF2GsXWOYFqTeKXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h77vMoGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h77vMoGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDEDC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748837993;
	bh=o9DXodmonJs0jWSJgYCXjsEB3T0C+8oZSRP+CkCioEo=;
	h=To:Subject:From:Date:From;
	b=h77vMoGwNkCwwUA1r78W06Bh2c0vukuDI2AJWeub9qMo2Q0O2EDkDMdhjp0iLraNl
	 HrCyGcLAeKkKRcXwCxoXMsrHBcikjDMtVdwTU3ApzwVP1vmBXX7v99GbrwdFfBLawL
	 e/a5O/P+0bXGxktH5OF8E/UNG3Cgofq2HoLliPbWLavjsWYf206bdZNPIolkG3Cdr/
	 prNcNqUaCvqo2mkt5AfcBMgQg972p88mgQyq+J3oHYHDpOPWr8kWnBlY9k7MkJ8ryF
	 DrEN/kGqRm6O2SDWv9H38u31Sz4TfGYTJx0++LjiWd/o479VNATO73geQ9t5HpTv9R
	 YyxPv1W/eKo2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7514C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883799365.29915.586713645111673350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c584d9ed738c84d201e9f18f61da5822d7dae1048ff6d6b0cd3f2fd058aecb
Date: Mon, 02 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748837993
