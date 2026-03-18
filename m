Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F073C175A69
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773833694; cv=none; b=sXB0AVPVSBjvNRtAQlS6iOhmev8bAp+TWTLR7U6UU0lFB1tv26w3TeL+cpCSe6dybJEsXedvldzSrufv9mVF2a0EWzsJST85TLaH6GDbRagtAu8ZjKPxi5hVyCqIx+kYz+lLphj0JVRhZLbK/p8w/hc7qnTJuOgcV3TwIB8mit8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773833694; c=relaxed/simple;
	bh=HLmRpPHdCIqUTAZjiG+dPKKzFCdD8dQmC/jR5xqRhSg=;
	h=To:Subject:From:Message-Id:Date; b=Vsg+Zbukq4+4IGPNl/ZaoniWADYeQnOgNElAIE3mja1WfrLDe3neZ8vy34cJ6HFvxf603d0Mf6PmODt21PwBb2e4R9uml12BKu2/tCjeROQDK24dIgQSQPHw15hNU5pU0BLoaSm0O1r0Up+omcObALP6r7zkpatFXR7tKEUTv3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIKVp0yK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIKVp0yK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C89C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773833693;
	bh=HLmRpPHdCIqUTAZjiG+dPKKzFCdD8dQmC/jR5xqRhSg=;
	h=To:Subject:From:Date:From;
	b=HIKVp0yKBqvkF5g3qtPjSf9a/d3QnT7E9maRwieLyVSRzieLjCHgu07TL4pWI8ciA
	 +Gxcmv3FGz2g3MFdn+Ulfl/Objai60153CjSS5/HZ+geQBRhMrtFgunP8/6PQaG3D1
	 AIoNqQZvIhH4otlLvBCnhYtFG9aixqGQZBFalpjsoFt2OcLD37fsqLIf0npswtGq4j
	 hBGBO04w3FUNiv+csjYkjw3eakw+3+Yu34SgM8h87jtBVm9Wup+aO1lasttruq/z2Y
	 8K1DIC/7ZFXqPjq53LlZ53n6a/X67G1Kmtp0F7OPftqyxCa6qKVpAtyqwu3w1JgIoj
	 QFqMbBnP7wvkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E1103E162
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383369357.2581.7536204050496960627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5d9f64f8b29d7fb382b4654491c6d498f2af819a9850805547412007f381107
Date: Wed, 18 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773833693
