Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F1A377EBA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775296534; cv=none; b=UMWr+ofTx8k+CGiUabf/s1UjJ/N8OCSGaByUWrRt/Wr3xUDe00Ej4Q4O+3QN0QkN8DausnLqlQ/tsuYpEFNeqJrtRdA8rNh0R1AzdRpiArRTNi+pXIVqc5gCH+Kmz1Txi6CMxmHVYFti38UznB8/OuMB2YtEcYq1ZqwrgCL10mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775296534; c=relaxed/simple;
	bh=mOrlgTLKiv5lSQ4KsUOzTPM+m8V8WiQKRjTh4wetwUc=;
	h=To:Subject:From:Message-Id:Date; b=et2sv4cG5RNJT3N6s9faVAJvxuOhF3hUZvaBsVJvJEbFn1bYm14S5UwD1bgn9XFIa1AIYVS//SKkd5SuZlDvbnbz+VcDtkxBLn2r2WRgWh4Bwu15cc66WSC0J9l+m1nUWGEi2tSxO31PGiVl5RtIT8FROxlWgAiy/8sDnwuRToA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXsecou4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXsecou4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D79C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775296533;
	bh=mOrlgTLKiv5lSQ4KsUOzTPM+m8V8WiQKRjTh4wetwUc=;
	h=To:Subject:From:Date:From;
	b=kXsecou4aKMq9Ap4ObC6cB87h2gf+sMzsp7df0a2wCw+eJCzSXmsze599hG+mD4/p
	 PaNOXfgBllhRr03aSFLxZAAbf1Z80+Cq2dylCLFyLfUVX+R2QvMyfHLvI75xl1h+rc
	 04hy+i+xRI7QBDTxz/lQaTcTwXU26DfLCL0kK5wcP5rrsZTGTz1/VkLaq7785H39Bh
	 M7sCVfUw9JqaJYmR3b/DHwydKafRCaiNVZaHS9Vjw9yamXxNUqu8ttdVPqoi7vMTeH
	 rZQu+BoJPn5tON2shmbQI35DIbpdH9iey7TvjbE/90dczoyKL4DiAoDyWiFBMzwP0Z
	 jmDfsCQKKp3vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7365E88D97
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529653371.23475.11648500420908261041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2337a77824d0dcb8b0308e5e32093a91210709ecc1997381e0c4bc8a5ae705d
Date: Sat, 04 Apr 2026 09:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775296533
