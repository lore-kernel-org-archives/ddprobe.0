Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D737E23BCED
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771341893; cv=none; b=PaiqJ0CUUE1oQb5isuFc6/PECPm8VHPGivw0dy9J7e05oa9YNrKiFwqJ0uZX/b8hCpA/jlSNKVwOE8hbZpTCAbgukPVRgiCujVFRJJIRnLYBMfqGf3OgpiHEWOkJsoHTMouA0mUeR0zXclBKv1OUO59AnfsEn3/KZvmm/myFAws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771341893; c=relaxed/simple;
	bh=UNgCbyc0RRPlOgkW9QJ02BMw5DskQpXSAXH9RpxacKU=;
	h=To:Subject:From:Message-Id:Date; b=bVrALB2JjdLMhhP+02dEJnHBCgf6U4TfSOonyPkWd1t7a/5zMYRUFp2fwA3dQr4kn0jXrVXfr7B2605ELFWoBYn2zyvhH5VgLL0iLxEqHdYbINkUhCtT23WCJ767BtX9dULeVHA0/DngJTbCS7+gRt9x05BKbeaeS07e8WhBnxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IntklNxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IntklNxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DA0C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771341893;
	bh=UNgCbyc0RRPlOgkW9QJ02BMw5DskQpXSAXH9RpxacKU=;
	h=To:Subject:From:Date:From;
	b=IntklNxxPdNsXMB+eGrnxCT+Wv5CChALNcaNTkxBW+EzqKxDHSJc0+4ZTuCkE4jxq
	 qkNOWc10ivDRG/j7JA+uPPYrxFqviEkA6Y1hH+9bnP+EzDNtHmjUZyfAm0LzOeiD6F
	 lVZm4mVJzFU8pmHrmNHglo7BM0pqooARV1W5BVAdKtMPexQ86kizsggLYe6LXMd7go
	 zmwEQEyZ/Mj7JeICx3M5o4PCuPttogOHp6zh7um0AaQtVLQX9NhMcQi9zkRh8cdXtK
	 EQ65FxgSxv3/vRSdYuTsZgEGg2x+HXuyJBoy5BezSjc3x2NjD27ND63IptAxcu2HZm
	 AcXNGslhEINRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F56E909AE
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134189365.13899.14988860516607008239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7efc61c39d6c184b4dfd82a91bbf1d9e8780ef60798cc10c9ad1852c805fa949
Date: Tue, 17 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771341893
