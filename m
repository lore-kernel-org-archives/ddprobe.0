Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578ED3AA9D4
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791709234; cv=none; b=KGBsgJRnSA1VJejo71vAILVaXwvZtNybEoLYNaHhgNHvpWRAkOtaf3DnTCZyzuAFo6e1dTv8T3wgLHvS8TvL2X1//m3s7EccvIeqscp9XlblrQ6+KPk5hKoZbtH7YaieygV3AWBcEBeGVfGww16CpPhbCGhsu2NGQ8xL8vNlC5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791709234; c=relaxed/simple;
	bh=JDfA2yOJ7bax89O8pBAMtsBPQ09liN9AwUbM0ZryU5U=;
	h=To:Subject:From:Message-Id:Date; b=t53m/j/XTK7vzisW8PajbvT5xB4tX0XCqhwYJDfdpBlnX5mh2l2ixTtVfs0LHelAXqhCLHFeoGawrB1JDJx4jDvOXWGw/879VosDkFvqgPGxEgPPj2d/iCYUl6biNktheB+vwdCXDb7vU7Owra79wJFn+xUpFgMcC6Y1g5AWse8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqEBh0Lj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqEBh0Lj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D042AC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791709233;
	bh=JDfA2yOJ7bax89O8pBAMtsBPQ09liN9AwUbM0ZryU5U=;
	h=To:Subject:From:Date:From;
	b=PqEBh0LjgCQA9gR/ISWeqlGBoDh/pQkxGuZgxu3da72iOV+L3xdR1w6q5HTfP//Sp
	 3CclA5giyyOP0uXAfUVg3PcPrWe9XGjgFk0Pmmct7LspjjLuacXxhq3p52OgVmM4A3
	 b3xIkYentxBnuOlDBoyGiTmBTS922LZwfye/djAvKA74DhmOPywXWRom5JYV/617QH
	 PmX0WrNuiAV3EGkY0ywUUvifgtx0ZY/qG1E3mVB30vVjzrkn8GmHBrV08hmpyMcY9b
	 gLRFxRlHR+BjDJyljuiC3z1zsOl2TZ7gDqR+/P19OORV9/7OzMxe6zYYDWTEtdPtiQ
	 CiMlDCKKceV/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5B8CA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170923368.19976.265500647287683820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095548c0aaf149a0057166394a6fc36e9e9efdf33500d1e14a40837acdccabd7
Date: Sun, 11 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791709233
