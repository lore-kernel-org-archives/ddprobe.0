Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA4428D821
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754075395; cv=none; b=JJtxtS25wGJRBZUGvx6ZRGuaCKvqa3jIAfNurfL3UC6kMdsuhGA/poKhw2zXlob2spJQ+28Jh+TrhZf46c2aTz7llqtYnwBuxNihb9Rq9lt7TRbVS+1JT7c/Viy3q5K9F0N10TaRst9j27PvbvMhCpdKTLU+YwR7OZxdCwvKBAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754075395; c=relaxed/simple;
	bh=+wfHVNF3sFrxcG1OmUoK3zoX72FRbP6fYYnvBlzWwaE=;
	h=To:Subject:From:Message-Id:Date; b=sK3u+t6zBf+B4/euU+BN51ynKSVIWtAPV/X7R+eHcM3aCivgHXaJWJc9LKyPNLg1+3UPYpGzOaxE7OgsTZiEqMHZSJyBEbICuQ46dJtcFqrCzurkxrC6NDT3NYX5w+NSEUAqPVp/Lif45lzv5ateC8jSrN1OYF+PMATdAEkcAn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmhRtQgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmhRtQgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30E3C4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754075393;
	bh=+wfHVNF3sFrxcG1OmUoK3zoX72FRbP6fYYnvBlzWwaE=;
	h=To:Subject:From:Date:From;
	b=NmhRtQgniVUtqt682m3j8ILTR7/K9KAHPrtbBg6JynuGRkgab6SpddlK6OoR9V8pL
	 zy/+9sfUPuSCoBt0bzWk7ktkH9fihv+HwhkMTzWF50FsNmn5f6KiR6pMS1fASfBPWV
	 hZ2VNZYH/6JOTsyHClktNhn64eEZOH/wTVyLv4X31QG8wCeD96jtOr+hDMijQ19RaY
	 bmllDLwoV6XOFDY6v+evEhhqQ3oYZjX5PsisgSNG6dmNFZiUi0dkiCsdrWm49rUIrF
	 lEUbwP/CXuvfwMNAlK0mimVIZgS49U+k1Bbk/3W7ujBKcj/ihXZ3Z03Z4XmHricth0
	 N5RkRVx24iZXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933C3C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407539359.19551.10689319962029177449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69899583e55dee5341bb75771d56d6aad6fa10b9d4e770a049a47090d44179c5
Date: Fri, 01 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754075393
