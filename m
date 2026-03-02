Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF103101D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772435694; cv=none; b=LbIaz1O//fJaT5AhGlfCaUh2xBtNGjsU99OL+irU2+OtvXFZHLUA2dCSR6TYfDg0z3jIewjIoOc1hJi+2O0bu2Emh9X3QF9q1S8J8/5lSqJG81SVgkrq2wbcbgmldpH8s8Mus1P1dvmWlZCBAkVA61/vnXrPg4xZJ5ow6yc2iPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772435694; c=relaxed/simple;
	bh=lThSmMgvCou06MMsWdmY5DTonCq/u7+fHKsAphuWOU4=;
	h=To:Subject:From:Message-Id:Date; b=HB0maOBn0YPHRuJvAgYEFGhMSWobMr17vlV2tdlrhVjqBpTu1DBNppaEA9G7rkasI7vDoxEXjiL22h6x/QAhMG86tSXBe9mxjzUUL5D5A3yjxuC4rhZtcjziywbbJhD8/GxwEGwei5CFBxhbyhK5fBTbEp7oxUEDCVngh0wl2jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWJhCdre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWJhCdre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D30C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772435693;
	bh=lThSmMgvCou06MMsWdmY5DTonCq/u7+fHKsAphuWOU4=;
	h=To:Subject:From:Date:From;
	b=uWJhCdre5C1H0MMxu8gcxwChoo0IV1NpEs4xCmyXR05lO0tujeSt6IfNg7MnqGRrP
	 z7GNfimTBNneKKcqq7GFxQgVUV7ITRfQ832LoEIupZ7jzNjetUUf31e64KUVOHR+uF
	 0SlGGMT15jZRyaFVetmzeivwbozRdtqL3xNF3BQXAqV6sfjDHNCA44PuLZtRnVjxly
	 0QTgP+Va5f/A9zirecU1lkq/t3rYHt/WNj1/x0mKg9oMTC0cz84nvE5gRzzvIzrkHk
	 D7O1cx1ehDNYE84D+cpRvpWqU/5yJFYPhHlNWxo5Mo9Sxz381HsWnEUUx0YBAE66mU
	 MA9+uBqtCDZkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C924FD58E73
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243569379.9100.16051131594387182674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd3d84779ab5457c87e21188954260da8b50b40d9ff0bbd0157fa60ea74c46c
Date: Mon, 02 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772435693
