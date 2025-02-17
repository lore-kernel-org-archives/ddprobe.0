Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5BC3D68
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 02:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739758134; cv=none; b=Oks6EoiDybtv3NFW+HMtRokKsvrkhLUiSKJY2JwtWUk07wf6UQtrbQSNPbO7W7vy/IpsH6K3bwbfoktUhtT7cZmA5mkEckZhWamgpgUBLNuzpB3y3AT3RAKoFKehNxtDfirr95B3OK8DiJCnG0JZsbhmCFzY2CeohSVMdgidzwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739758134; c=relaxed/simple;
	bh=xdKnEde5tBx1CDX08jcZkMNoIx3/cNeRGKZ+7QpZ3dI=;
	h=To:Subject:From:Message-Id:Date; b=XY+j0y3weiRb/frdCrUiiswCvVnkgeowlcn9RrvmyPBX2oHArzMMGK+0nRvRLQ/fjW4JE+hXNUbPsNSc3UpEr7B2PcCXWSRsIat+EDl0WQEq5kzfUxpDqoF5BaYStciR8k9eyUthGlIwrDQMhL4V0I+6tJJfQ5IWWoFDBeuJuoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZaiAr7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZaiAr7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A1FC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 02:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739758133;
	bh=xdKnEde5tBx1CDX08jcZkMNoIx3/cNeRGKZ+7QpZ3dI=;
	h=To:Subject:From:Date:From;
	b=fZaiAr7yVHdpkTKwCrIrQhviacAl9yGrlHacY9s94xiOZ7JC60N7yXT1Hrd5jJ/yN
	 hub/p6GSMAQkXgUAqyX5JRt3C+1wb2B/KxW2WAstcWzgFUAnN4gttnXE7NSgx33uVq
	 tajZiFywobpdLMEhzS1DeE8tcBIWNt5NMfaXiZ+DzTLrvZBfxpOIRZWPPbQzxnDS7/
	 c1u2iIRohwbXbB3YK1CPmy4Mr+ATuzyzn7F+ZJmUr9vo7UwA1BINdMghWN+Mrr9ws5
	 3jB99wijmgmD2/q1KX2ib7CeBc/OlasuunadDcnvVWgUnvACa9cuS48//jIwJJJkoi
	 d7bnIzc6X4Krw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1353C02198
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 02:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173975813362.27363.3107591287142488424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2094a5e03a3b2def20d262f4b08e7720b3e85a4e09d28bb11d2d30cfce12afec
Date: Mon, 17 Feb 2025 02:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739758133
