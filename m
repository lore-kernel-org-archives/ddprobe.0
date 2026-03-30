Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D241D3624DE
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774884893; cv=none; b=r1+SqnFcX+LVJ9Z86HIxxKi+rJ6d5/GExN/5Ji+x3V4xTq00BW8hSM80V1VYQ0NqcFt46fBtbYcqS5OIKD0BD4BGGRCT+46gwJ81zj2VkxCiNQW9Xuk6MnDwBOyJRQDt4iQuWNCwAHqOu+aECHni/hSV42/FDBpN2tQEx/se9po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774884893; c=relaxed/simple;
	bh=fbWyKreyzOFcGGIjZyt9eUGIsHHlHV8HZrFeAtxlOmE=;
	h=To:Subject:From:Message-Id:Date; b=ftDVOpbOyDHBKNDbs/yTUcZqfhV5cIP4de4ZW4AWm2BF7KCT5wn8Mox93MtdGdqxqNccW0QcVuN10/FU7v5WXkEg6rLsoHGNGdwJBwj5rmzvuomN/h6lRn8xD/YMy8EKYO3dS7AQuDxOp5yzcYTzd/H7NZSxaDwHzonfH8DS8o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoFXI/zd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoFXI/zd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADA9C2BCB2
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774884893;
	bh=fbWyKreyzOFcGGIjZyt9eUGIsHHlHV8HZrFeAtxlOmE=;
	h=To:Subject:From:Date:From;
	b=OoFXI/zdgyP7wk8mIt+ILjgIEWtUMtCZTiznxI2bpeuU819HLmgXdR6AMwqOTNOt7
	 5x2W2OlCEr/OF5EMU909ZbyKt4yoX8um2Ismxc4Djra1PeufEaBgYmS/Z6rsVvkvJ1
	 GABocVet8Sd63QLRLhr6CHw1/lOJBLssBog8752j8LgfRBf06C+elyu8kGYMYUntIf
	 4zA//8Rj1H7d403bfNd6aAxSISgTOpq0Mr2eSJ9xvjKSH1mNaYvlRYcD9tCCfc8UPW
	 y8dFT4SL+Bg/wvcG31yljFOG1hpYwsxbFq/s3iOU6Na6nnyTZFV3wosLWTMV/4coLE
	 jSLMzwtOelZ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D8A1061B0F
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488489359.14349.16085470980982754461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4b977c8ff542f8a4f9fb2eb099ac233a54428b2e1e682f91651a9cb66d46ec
Date: Mon, 30 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774884893
