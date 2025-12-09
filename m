Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E37A32E752
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765299174; cv=none; b=ZV1xPfqlTDUt3iM+KpeWdFThpGPgpTVNLGiGIYraMzDPN2w+ltscxo+R+dvI31NoE0L7Aj2NaXdTfAsJ8vKKXC6TX4NuCcva8+71n7aldo5x4at9qqsgNwMg5sp5BqruKWM/I6CCwM0teDiz+wu/w1z0Rjy1q9UZHmSXkkcnp0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765299174; c=relaxed/simple;
	bh=Aty3UNDiv38hCBCcFXlvwxhdEGCSCfc6SzppVIM0cLc=;
	h=To:Subject:From:Message-Id:Date; b=csts7C5yAXpZ1pTFquv6wejguuWn24boBY7KqLklDolrBTXkj40GZwwODpQQJIOgKSPiljtjJmkxVqIoVSRvj3zEgb/lm9LczW5JYXy/lv35/aqjfMXukHGfRjgAFNvnwkMSQwezhl2tglFRg0CG2Nq3SwAYV1nPK/ifAws/HRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsw5eiD9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsw5eiD9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A323BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765299173;
	bh=Aty3UNDiv38hCBCcFXlvwxhdEGCSCfc6SzppVIM0cLc=;
	h=To:Subject:From:Date:From;
	b=tsw5eiD9diDIovT298SwQYNHkIUzlX0zAu7Mycu3uYCXkwQIufjKXCJJQe3PeLsec
	 i8nOMfVvHIf0FvQ4M00wrDH+Hl8Bq4sOSMMKXEEeHwxslvpoHiSZLD8V7yrvgUilBT
	 IZqvMnncZUC4d52QPrcHPQzauYQthQKorZTWrq5EQ9rwPDo9JM0vpwahHsmmzQzKK/
	 Ml81lDg9UWsmAeRNBed5rcCqVLLbL1JjVe6Ah4naWufi212P3Tv1XSF0vWHpaqpxHz
	 ILBtRPxI93BpaL8W/BI+kz3Hz3w3szvO79+f2YTK5uxwnFCcmorazycIlKo2mJyKN9
	 ohFv3O62O23Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912CDD3B985
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529917358.27760.12716190889245489948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527bbcf82c7f5108e5b823b24cea25644295d9804f8b94758fbfdde05b5caf82
Date: Tue, 09 Dec 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765299173
