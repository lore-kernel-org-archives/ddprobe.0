Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FB33A1E7B
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788088234; cv=none; b=nQIeuVapPMjLvXNALwYC4qtvbPHrBQ1etW1pBAWIh1Qu8UyBBqsIh4fb3zeulzSKgerBYf9VfPAeZf87Rd+oZT7ug22VtK9rFDehf948TS3XtnrZ0R9KS3u/JYyk7HXTkKF2e3zeleX6TgK7JuU/G00LmFjaPpCv0tes8BCENqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788088234; c=relaxed/simple;
	bh=/2Ga1zaS34jQtQQYZNmo+fiQKt/UXIiRHKsR7sYlWF8=;
	h=To:Subject:From:Message-Id:Date; b=OqY1C6OzzU71ylBVMkItJqdx8VXOdz1KUy87c4O7m754/BfB5+cD+kxJiRdEQBI9CQZ2n7P/hwFRcW3wdG0b9K74uONXPH+pwWi7Gwqu3NAkDIW9cYFfjt8CB3XZMzyWpSTZszbI6P/3g11cSH7hlOLOde01BygZBqW3wzickSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgDjSiW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgDjSiW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D228CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788088233;
	bh=/2Ga1zaS34jQtQQYZNmo+fiQKt/UXIiRHKsR7sYlWF8=;
	h=To:Subject:From:Date:From;
	b=RgDjSiW4yvtjRTGwyyYuHqyCHTzaAXz4FdF8lHxk2cSbIavxEvkP1xYT/eUCqNWai
	 aD9ECO1HCGdJoeRRj9bt/C8E+vzsmp1sw/GCIdpqitrUoSNQ+AErD6rObntFjYoaaa
	 bYHdbTdZ1MbwH7Ew9ZVYlG67tdlwD86RWhK6MIjxTJamVL1DAzCn0/MyUD3YddsS93
	 k02xPepP76tuGXDldJPNbVUslDd65L5C4pNGhSqDU2cEcrzL/0ZI075YgNCYKkKYlF
	 v9SkEb+pX681p1YBpRKK/vGbujJ91rnVo//y2AL3ztUJtVsLb6g3jShQf16vA9fqAT
	 TjHsL/QZMMy0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB52C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808823368.24820.15607410479417533673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c5dfd1d6cfe088a54326106f688e8336d2be2cdaf7541f7b31fb9f249c3be9
Date: Sun, 30 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788088233
