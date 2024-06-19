Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A3781204
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718794763; cv=none; b=R3CDt3waarKGdXJKlT69Sec5v75aTkb7+54j/osINT5Qj1PHF8JGTfRv0oFQ9IkWdHY2LvO6gK2p/gead4MhFmzBVO7lj2KRdnGqEu8x/vaSxSF/YJCxGkEDd61W3OEYCiltzwqUP5VLSxXQ2nQUsKLdXtuLXYB1nf1Tu6O47bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718794763; c=relaxed/simple;
	bh=IbcgT6vBAQ1LX7SymDirZvQaKQveXS+WOVUD98aAUp4=;
	h=To:Subject:From:Message-Id:Date; b=JxLoLzQQCmMHYsoLl7VxG9YF2hGRvXeji9VFZkiTFXVFv40Piq4dP5SWQGN+K94mmHLeTL/QAxOM32XGnRX3fmQA6fI3h2pRgQ5RxvBourRKGfJkMBeWUC8JKfolIytZvLpLYnT9DsWhi33oLaZA2C0K5yUXtoMVROnNCKjyGck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sp+7Evds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sp+7Evds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3013C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718794762;
	bh=IbcgT6vBAQ1LX7SymDirZvQaKQveXS+WOVUD98aAUp4=;
	h=To:Subject:From:Date:From;
	b=sp+7EvdsHabnaFCSU1+XAd+mT0814C6Njy6uNr/obn9j7zbyx6KguOq5UUFuqt6kO
	 9xaqQO0Rrr64gdBuPOaMkErqdr2BNCSGpL9lsi+awKsxa26bZ7+Z0u5fnCrHUXGoI1
	 sW1Kg3HpNpnD1r6/94ixWb+2ru7+j+XCTjPaUpQgYfg1rHNRLP+kXG1+uXNockx/Ez
	 eF1ihJuoIOVT4S87+nJpGFjFt0wVJOK7sHjXrK8WJvgTZMMWVfOXTdbwrwPMm2xBHC
	 1ZWgu6KCXBvZapYSJw2oulv1eNWiu+bKWSQl+n/x+DQ4ExUbnX3nbnDO1ZwIgQ14z0
	 nCLyeVqNxidZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0193C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171879476277.11000.15187193633945714782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f75ae3a850162e1612a6fbac309999ecc05da4e608c9d02c9611c4bb42ea0f
Date: Wed, 19 Jun 2024 10:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718794762
