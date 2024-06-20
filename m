Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A551B4C3A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718909423; cv=none; b=mujhALcOjbuy2GoPopJdHPcT1Y1Gp3DMM6C6DxRwRw5lX4nU6FDb3yDzvitNDUrWqZ/3oZFJk4e1iYurdtwrkiqyAdykYyIC53oJVRJSBRnItHTMqu9tK/UBZEojUS6WjupXGIyrRZd6CXAYonWMUVMDSGZNOjI48iwg2J52gcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718909423; c=relaxed/simple;
	bh=oBbJguDoq7ysA45rK3V33Xzf4+K7E0972PaRI9FLwJA=;
	h=To:Subject:From:Message-Id:Date; b=USQpfTuGGwIl3+wwEdV/gCsO8/cVNdF8uzneBUoPultF9l2E3d7BRFWcxeUSvwxkVunknmrdPRzhh5+ri5Z0LN+WiMxjVx8fiKPgTgLRsCPdkzJvBATkD71I5G1fTFDIhKYrLoQ0YxZaP+FueBBYOhOgQLGIsmI5KTXhP7bmKdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1mY4Q4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1mY4Q4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D993FC4AF07
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718909422;
	bh=oBbJguDoq7ysA45rK3V33Xzf4+K7E0972PaRI9FLwJA=;
	h=To:Subject:From:Date:From;
	b=U1mY4Q4hKA9u2+mM7K9rz7KEitanJO8e9drGgiCri4q3tpOzkwROXbs5vqi063gkb
	 gwoLKNMdjopCkxRt43AT3HeqIeIosMejSdGjxeaX9j6RyQJP4SJPMaVt9GwFoSiv4m
	 wYAthzbBxtt0oOyOO34FHJB9BpS0+kOWHnTG0vQizfnaNQhJVbfm79WWEDJNbwSRLn
	 l25SlRrjF3aAInuE1agDt0aLmS1LquKipsbkmemYV+0cf8g8f7LWTcSVw6gBl7ALJp
	 6rJyCr7qCVN2cO8PzjIgs1mczwNWuiFLTaIFt63dOFeP7HDuwNu8z7J9Q8Ou+J0044
	 usOinAu63MRLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4279C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171890942279.13338.11494151473771166423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 489b841983cc48dd210ea1325e61497a07b7dc410ae5f3fb0e359c039ead8de3
Date: Thu, 20 Jun 2024 18:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718909422
