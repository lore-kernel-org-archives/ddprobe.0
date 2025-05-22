Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B05D24EF90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747901394; cv=none; b=mjV3GLKIkfIeudcVO6hcxHAa1MkqdtywNSEq6spGRaFl1cuYyO4SqIvrdSMA+0REplabyjaSS+O6BR5qvSxxeebxMLPI0lr2rrz0ym8ubDwz4Nvf87vu+f6vUAT2/KJSJodm87I6I1ZOTPtVFmUlycvdLK11v6ukZW5OZf9AN/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747901394; c=relaxed/simple;
	bh=kTNLX0p9umyJc1RPQMkqXu7Sy6j4Zf9ptseimaA9gks=;
	h=To:Subject:From:Message-Id:Date; b=Nmg6QbCohwh+jtpPVIe2pYO7Sv8tAOSkFBhZgfPiwXfa23q+TZT8OhZczfQJ3xJG5OO4MZ4XuUfYybl7lVA4s8JvKakN38F/6+1do3Sm7BmydHs6xSVeFy294pK1f422yjv8MXGI6KLYp0MuyOrPJLQl58Xd4SjNrGYq1/uLaPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cexObU1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cexObU1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A482FC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747901393;
	bh=kTNLX0p9umyJc1RPQMkqXu7Sy6j4Zf9ptseimaA9gks=;
	h=To:Subject:From:Date:From;
	b=cexObU1/bEa5z0XR9fxyn+YmVZ9REUH2gmWVMJ6tIyyXOSgnTAJVYSQvAsO8P9em0
	 hXEMbXU0qqe9ATkkpVlAAJqkCrHUrnG5x+NSXJ+CHovwQmMP6xX9fAjxVZJQ998Mnp
	 zquZK6h/r6CYcJipMEup7fljo/UHw7mi+/fywUICiokexvvw5vffTyMS3AcvrgnZCT
	 Sq4c7ZsAUSsAfHb5c/sArD5Eog484EXU92i3ehhRFrDWv/qAtC0n67Gmu3cVAvzlC2
	 sptkFWFGNkwF6X1H4Vjaj9RTJqiUeY2CQr4gC5iajeWZA9AkR/yJXp3p2BPNQ4FeLa
	 z66OPZDm8ruTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F859C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790139357.5866.12949634887231750394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9019c5f9daf528fd2f3ee7f6df3eaddbc088a33236a27ffe80590a30cf10233
Date: Thu, 22 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747901393
