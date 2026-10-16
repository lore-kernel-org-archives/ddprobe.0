Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0A726C385
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792132834; cv=none; b=b3P6FAaMaBwVmp4ZXGKVr1VOTrOuB0cBkIgP6ozNgIVoG+OKtHUzgS10EqWdIBLXaXOVgMOusvFXDFPO6rOJDORKsicgD+T9ZxVIl7TMqFt4bgTj5MCplYJe6J9PcrPaBUtdY59kVuPzelYIcDlrJtCLMV5BvREEZiDDGmBad04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792132834; c=relaxed/simple;
	bh=Wylwk8ngiZKcVqCYcFDKlVux8lxOfGL3BD/9Njw85Y0=;
	h=To:Subject:From:Message-Id:Date; b=Ha7U0R8Nb7prFII1uSqQr/8f4EqDNvHh/pvWaRtlE3rwfuTwHiL1MtbTRD7VnoxNgZVugxeNdn51/vnuqgLKqj0P52sSTyHgjBfmaHB+iv/7dENaYhBDY10oULYKcgCns0L1gkx/HxSv4b+/PknkkoYKGQAYZSdsisI/gIqnUwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtW5gYDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtW5gYDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A59C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792132833;
	bh=Wylwk8ngiZKcVqCYcFDKlVux8lxOfGL3BD/9Njw85Y0=;
	h=To:Subject:From:Date:From;
	b=ZtW5gYDs/GKTdu/r500oBWapp3zOuwy22KCO4fFGBpjkRqOwIi2MpdaiI9LKsZZPh
	 zi9KizBCIefGkvYNtPDul/jChAHLb3An4HcZyOYrvstw6FuWAsAzPy4Yko+oqw4sde
	 yjpFJ/GcT5N31CaTXzntNIfPx9gDnJIlLcNGZBk3pWuXg0crfj0aqg9Nm4uubc/NFb
	 av/US1W0XIwpyJgULEhd9bpZND+xT/rE1KHp49xzJtDZ7IU22VfzyMq3TDyLGhsrOa
	 UD5mIYHpkvy55Cb2q2J8EhjzDfZ3pleo7UzKTcu6uFOpfmrp9Yj/V7jCVXFjieA5u4
	 KyAeOc6p+A7mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2F8CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213283370.19507.12196688414638902081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f7454cd508c7ec36a7dc335e48ded9aa188e8b0b072ee00643efccb478190a
Date: Fri, 16 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792132833
