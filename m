Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303013CF5E
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707150497; cv=none; b=g1OFNlxPZ/7b4tPYDD9MJdsZfuAZrhpIqyfu5HjG7yLTIwVSYGLzP3l3NJk4VREkVKalAIu2loNSzQI6WcqITcPMF5dOK84pIgyEaubk8Gxisxwg3q82poFJxfREv9D0nuwkdVxYZs5nerTGgxbamObWO4MtHS3Ijy1L4jeYVok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707150497; c=relaxed/simple;
	bh=O4cjHP702j3fZ7kHVuLG025FXKEGK+cYZsvqhk1InbQ=;
	h=To:Subject:From:Message-Id:Date; b=gm6828q4AK47bCLxmcFzdJC/WN5sqV3tLlYAhCjxt1mqsMSOrQOoKXO046yQx7lNStjuQAqb61PhS+lAr3zX09mhjY/FAE7cY7+02E+dyodgSoDZ4VEtzcnsvDUlOCorxmcZSTjZ4LYsMLo1ti1pcv9hdhLeIlDp/B2B/Llrs/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtCCUq1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtCCUq1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8729DC433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707150496;
	bh=O4cjHP702j3fZ7kHVuLG025FXKEGK+cYZsvqhk1InbQ=;
	h=To:Subject:From:Date:From;
	b=ZtCCUq1/bLdj3SmeiKtZVLQ84tE6ndufWGR08NE6g560NH9pqhJpVj1f23QEY46Xr
	 NH7+/yx3AsPwpF4lr5c3zjDtZnqTwfjrI/pczQT8tozrtd0SKttW8yKjRvak23JM3x
	 +dbtjplYt1e1wxDcpDB1Fwt+XBLIexpD/tk6TgJP3ZAOfflTA20nb9DLdjMsJtpsWe
	 7+CQciUjmUwF2oV6bRM4vn7q+iK/B3pxHSPIsJWie/7ZXw/UpY1E7KF1SXb9bzyupF
	 j7Fq0lz/tS0h7n6QGSRf4ARBsalb6J4CsYfN4J6D3DpRLQ4acwSqwxSdtvskfUDfPM
	 m7kPWwSJ+vEZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A709C4828D
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170715049641.29860.17767778508831168902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 323125bba5581d887d4fe871a29e7c21463238fb81b2cd75656a8b5e8dc145df
Date: Mon, 05 Feb 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707150496
