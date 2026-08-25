Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3693043F8DF
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787661635; cv=none; b=mBLDqEp7m2d9XYxXnfVSKufI7+tuXGwb209OiG8+GeJfthVcFOqb1BOnHv6SL92/d37YR2o+pt07vvQPdrgLjgHIUmy0VwGWxIAg9GhZ49eQHt4aymT5zkyHovV7wKThTavnOGempWjjvX0MHao1PVdwDr9DpAe5tVIOeuA7Zd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787661635; c=relaxed/simple;
	bh=CVh58V3J3ZuI7g3C78WYD9oC5X+Y8LdRHDNWjXEKJ/o=;
	h=To:Subject:From:Message-Id:Date; b=WJPq02DECRb7SIbcGXk8GDf+m9A3Y6x216hRAUu18ns6g/j679FyLGE793VPjUVdQNnLq5oDMpBaQeiqdhugwH9IbT3VilGgTB3KWmCQRsZ7MlpmMBAIDI+feo2aLwNq98NDmtJOs9ZULntoBOBgvGx728uFwdaVdcThhVxA0kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mE2wtyCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mE2wtyCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE339C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787661633;
	bh=CVh58V3J3ZuI7g3C78WYD9oC5X+Y8LdRHDNWjXEKJ/o=;
	h=To:Subject:From:Date:From;
	b=mE2wtyCZc4NPNt9QLmIQdE40jbBXpK5uaVcYB7386QRePvcSNLqXco52Sp7PeK4qL
	 Pv4jtp0SmFM3WZrBzX14uuGY5FTuJOH51598744C0oRNcadmvEJIV611o3clpkOzZ6
	 w6Om6e9YhtijcAVgF85W9mWXEIhCAxE0A5kpv64hqi4xRWntQyV98hUrmsZFiTFf3V
	 1kRU3CV90v0CgtFnmGEAcnjdKDzC14CHC0VxtbDUIn/XVaYuSXwtF1bZp4rqmyz1pl
	 42U6oVw6xkbwtnLgAWA1c1pslp2j7DZ1h1Y1gqhpPTUIYEP0dw2+bHkP1eZvHr98XX
	 RAX19jTWGHg4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA257C61DBE
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766163368.32359.16074507562942368598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32667f6c08b97e7e5616559da1eef7363a2854a7516ecc2d2b916dc07565cac
Date: Tue, 25 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787661633
