Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BE028E7
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 12:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716294803; cv=none; b=lyAfSIA948c0QBkaKce9FP1GZLgk9bPs0gkodrUA1zbHo2BiMhsCwv2WqU9Ocd2cvjg9EIWWV3VqegMD+LK0UfmBQEg7jxvXYxXuTSx7QINhv7ldmMBcATaRDEa/Rhmo5+/nu8kJW+rFpug9Flviw0pgnTpR1HjZ17+SaUAnZ4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716294803; c=relaxed/simple;
	bh=2dClXh0aucoboHHZO0w1t5Xh/io4iJ8Q0dZ8d/r0hgY=;
	h=To:Subject:From:Message-Id:Date; b=PbUP83D37azWNRbhsFrbipAKUkSDsb2XYG8fJ01xJOsIOAEYYAFst5Jf+BgaRpel2m64QDQjvin3y03gDVVOz3hDwVa7qe6GSF/1EglxIdXv2goWmJEL/NtBfed59diLxcYxIOQH7pNz3qMNrHlXuljScGMJc7jm8FWic/Gtc38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qodU1u6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qodU1u6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E061EC4AF08
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 12:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716294802;
	bh=2dClXh0aucoboHHZO0w1t5Xh/io4iJ8Q0dZ8d/r0hgY=;
	h=To:Subject:From:Date:From;
	b=qodU1u6wmSiLSPFjnp2MypCsxt1gZ416HIUwclNnIHQLFrBmgfda7kfloAHotUUrb
	 3K6r7mNl78tnJlaiJQs+v+eaMzJBQmVyYC4e/gcMMWc7WM+pGr7iJGOzgwR0p92KQP
	 sFH55/EewAUagGak4qPkn1+yLkDdagQ3jaOpvIjDUinnND9fb47TUzF/eATLdQp4iK
	 +VGSd3S+yQ+WP1FzalO7lUE4kgQlW1CGkbwTvevgDEEtvyBtxtx5Ebn8b01io+H4/1
	 4YY5efOdTRZE9W798ef2/AgeaWxCafPJYjfeVTsqeMnH3cXm9GeOpg/Qo+kW+c3vS/
	 yiGqdQ/UI12bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C51D4C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 12:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171629480279.25045.2549558380879044682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f831395291adb8438af588e05bd447d4538b76428f2db0ee2b6d6c78bbfa17c
Date: Tue, 21 May 2024 12:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716294802
