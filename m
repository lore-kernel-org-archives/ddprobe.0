Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699A1B656
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 13:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720962623; cv=none; b=c4dCdKPWeVajCCr2RcMrWWam/weUAgJhMZNu/9zZPI6kC8ohfTyy3pasu8EFzEb2Kk9AWK9U1qWiDsoqzu/iOx1hJNrsY1IpwMjOz/Bdy5zBZwiokHvtMyirZty7jMy4W46TrdTjGoMbjHtq3bIgkBKJ8i6Qh2P4aLFd9mz/msY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720962623; c=relaxed/simple;
	bh=wytanfC3WaKsgisV7IbO9xMnBS9hO8IrDOaCvDY6Brc=;
	h=To:Subject:From:Message-Id:Date; b=RVJfvGdlHV16ctUzTL5TgQck5SnXZ4Cc0NVWi5rr0JVt7ij2da1BYPdKHa5djKTWojXTbu+rhq+749uOp217SVwcLajU7kCgpovseZ80SSKJjo7HdXo2D+TWubI5vlOOY1eAJVhzmgyiUMoIavH+/SAOtWdNrz+urJf4RFdev6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPcgEs1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPcgEs1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3122C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 13:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720962622;
	bh=wytanfC3WaKsgisV7IbO9xMnBS9hO8IrDOaCvDY6Brc=;
	h=To:Subject:From:Date:From;
	b=QPcgEs1VE4FsELquObV2hXGRWR0eaZ8JDzPQeCP2hU2S6tHQ091L/Ju+e/7rAeTui
	 47OSNH2s3wVOKRC+aC8vmtkAlbyZSv/wUf7IagvZLGjzhLIpCYBiayQlhkAnyb11l0
	 8NPt47fdf2Xffx28yPGwm0jjnE1t2GMaV88Bb+OsuHtg9AhhrWBdEgZpU3O/0cZaAf
	 A7g6lLYdUB2JiFHnA/JyaqWnRTosC07U/qtfLCeCtEbIDwhef7fh+jERyarsxJGZit
	 JIhpq0oasV2ypf9x8xPZ0AMa5RsEp+zZe+4bjDSCx/PWpHKZbS5EB4SxyIH5h2n1RD
	 kF+BSWpx/ZAFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C434AC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 13:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172096262276.30087.4685346421168324943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df71a11461b1ad2b5d882f03e82d4c590d43a211c4b7f3903426545a57bf7c3b
Date: Sun, 14 Jul 2024 13:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720962622
