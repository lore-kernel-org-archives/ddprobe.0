Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528A117BD2
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 08:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715674943; cv=none; b=rJL00iG2u3IWj7+h43LSpfc1cvyh6pOXTskIrYtOi9/nSK4QJQkNZyyyqw0dMMzaiGVFPi3lMsOGye3r+Yv/YacnCB7iuJrTvYhLzU3d3vjmbmXgGD3dY6+mwJPhRoNIhWSog/VQ7WC79HnfQLBrNtNO+kkNqIrCMRJsJXduzPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715674943; c=relaxed/simple;
	bh=INYRcpnQNxtKxd6OyhUmqZQD9kQoZE+QVyoLp9F01Xg=;
	h=To:Subject:From:Message-Id:Date; b=CdwtXtTsISyaYK0BfsSH2BWRCkVJwipjROZiHWswcLRUKzsBUcZbiO5Urc4KWRRw8wjfVHbk/IZ7QxmInT+M5hVRpSFLGTMww5VUa/Oue9u36xgWJy+saDymoq9taAvZ9wccV/qVRKR79jGxB3D/Qmr9HTOGl/xHZqmHJv3cob0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4WEDwEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4WEDwEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED444C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 08:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715674943;
	bh=INYRcpnQNxtKxd6OyhUmqZQD9kQoZE+QVyoLp9F01Xg=;
	h=To:Subject:From:Date:From;
	b=j4WEDwEnchrJSVfVM6JCQYoBBUfTQ+O1kjPcIM3Ij1fLA4fTm4iXDFc1G/1KJuCmy
	 /HK3/6BN1F3yf0bgdWJebMzloSq5pqYOi3K6L+I1CJQDgIpGopI4Y2px06MadPmQqE
	 RwHPl21OD5/fK28t697wNMEPqVSL4fACEDwmEvWUoHx69DrfcMutWvu8WBgHQzui5H
	 GvuDtiWPSOhl+HWcqYoniqyemLxDabLnHbNgHnJWVDjrrKIlhYGDNtLVpizKlMKMSL
	 QPc92U0SPd/4x0IxX/eC+h+MgI1re61vHV3DGBzXuFQJGHIVRHPQQSO1/OBdL6fc1c
	 Aml8Ox+gVVqKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA0AC25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 08:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171567494283.21333.4654769189488869699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f20571aa6c1549a606eb24c9bf3d53086bd50929e044e99a0362dfeb9b1b2f9e
Date: Tue, 14 May 2024 08:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715674942
