Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25828376BD3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776789454; cv=none; b=Gee0xVUD2B9y9tg3Y9A7u3v12IcIBHdYKDxv7kZf1yXxIU+PPg2pUpOfhiylSy91iSu+SR+EN7hCttK3jr05ZrrMvpYxTrdA3HfRaIvHA+/LYduO4Lyw90KILk+VqZVnlegDD6XqID/stC1nicluXZVRhCD6++4SPnhZ2EpLfp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776789454; c=relaxed/simple;
	bh=9ow1InI0ScvfXzbNJ89ykAghDyGy8gcaEhQyOSj+TNM=;
	h=To:Subject:From:Message-Id:Date; b=fPufCQ0XQ3V32GVjSlpZZAMAKhlJcN4sEu8ygItPc4He1QPrhrR9qfMBKvQ99mCINHL1+bXNKFPtWUTO41tMg6eGEQQyaZbeZSS/ikKnAh5+3b/bzcPxrH6VQ+tKNzmYWEL9ojOToqwOYx830TMknYrvIkj+HpyEx7S6YdD+/IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DY0Mi2cF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DY0Mi2cF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60CAC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776789453;
	bh=9ow1InI0ScvfXzbNJ89ykAghDyGy8gcaEhQyOSj+TNM=;
	h=To:Subject:From:Date:From;
	b=DY0Mi2cFeL8AaqcgVJZyxUgCTEBsbZb8RVEOL5+BZYklwofH9Ah570Umn3B5N70Pf
	 FcNgBr5S98mN5fHjI48kb4+sRrz7Jd/cHy2pUo+izUFZy2f1Tbky2xnG8ZKD+tQmP0
	 OJ9DnBxSmcHQT/e2f4fe17Ig69mfopAAXWh95jTuffOpLnhKQA7OM+4yoj+3kdnhm3
	 hRUeE36JHpmNo8//hx8Hkm4Gg6reZXytvxnHt3oEhGwPNPC1KWccoF7GAHqPY55iYO
	 BM1g6sEjzl4vcXpVP9/8Y9eOfDYPMEYKf57YvzBgJwv/QJEGhZ9xB5RvthAdzDJuky
	 dT7DhcRea8kDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C4CF8FA90
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678945368.23201.16903567221375279996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70cff7b6811cb960cdf986882ab013c10ec77ee8a1f3d0ba61de871afd4587cb
Date: Tue, 21 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776789453
