Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFB93B1B3
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778288854; cv=none; b=EnoevvkgcHPAn8a3FxnNedTJMu6mL7jNTCZFNN1zcJQ+gLrUA8Fz8HrZJphSlaP2SQLcRf29/eI8QhiZ/7wYxISFWJ84l4zbovDn5sv/MZmQWxNmnjDk2JPB2mwqORSkW08FcCplgLuaW5c/kmLF6T7m7z4scfLcd7/hqN+juio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778288854; c=relaxed/simple;
	bh=1mL/sm2RQzpiA9irsT2G3wpwbljtvcsweoWUrdYhV3A=;
	h=To:Subject:From:Message-Id:Date; b=a/BJf5f6AcK3qeutiMHwJyGQ7UDz+qZ/xeqM/fdz3oqIrldu+E1+9zqLN8BazJdm2n5iHkMsvhH/RgAsKKKq333GW+6I/3Q2ls7Zcy+zR+/jH9QemjDwiorhM4Oz7mkwRmI1cYXmIIGOC4FlLdIKVxCl7CSQFA6XH9OgfcSiPok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnM6Zdes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnM6Zdes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12DEC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778288853;
	bh=1mL/sm2RQzpiA9irsT2G3wpwbljtvcsweoWUrdYhV3A=;
	h=To:Subject:From:Date:From;
	b=tnM6ZdescGNvgjBeMKEgdD30fhyA2eVDbQNX1BtX1cUFJZDr9bmyPrZtybEhdtaDT
	 UPAo+UOb8fa8Y2brPABD8r0cNwFIHI6ESwmgT2q7mBBxHmfMJHEBM3DE5Mt2ybBkbP
	 JZJOV5UlS99hVwL6V2+QH6ZTxpiPyKjGJuW2riufPQbVEa16FZqi2n3oN8XdFlIQeH
	 WCGoxiZDr1Q/DOIvJL5L/b/PgEY6HPLRqiss/5qQN9s4YY6XGtzfRF2DmARWmCg2/Q
	 mjainXKkJS0Xidk0Sk0ZwKVveMtoRDRwT5+EuyPEGRx13iF0NUFta9zosERvLbQygn
	 OpTymvbmIYvmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE731CD37AC
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828885369.13374.6546128162948006319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241676d5b23c4f419433f9878dc3167da33df46abefc439c8f4cffbc29b77fb5
Date: Sat, 09 May 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778288853
