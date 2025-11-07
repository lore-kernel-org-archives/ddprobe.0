Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9BC23A9B3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762549193; cv=none; b=CM+BUZvMehq2ccfbpeWlbuG7K2SkhKWT3p1ATfmxh4dSLN+A0ild6ZG/wrlpZibxaQKm30YWMwV+TjFWc2QiDUhqMDq1T/cv6EsTe3xPnGXQyoCISf3rcQLZjqzQKom2rtNTQz+8tdGSVc9kbVJ9OmmfYV3FTKVg+rc9vgbzewE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762549193; c=relaxed/simple;
	bh=0J31gHuMiIcdeSFvbT1Rlv8YGgx7V17oqc3cm4RNhDM=;
	h=To:Subject:From:Message-Id:Date; b=LaMmDfysJLwxABcjrCbplaFPDlV95+1NekAmILfGoDkYxYvOnAdYDKmr//k1SHro9J6H6ZU7+ONYDK85GPT1WpuvhknQVx7zEYBt79S/Y2/KoZJSa/vpYCzQSwHV/4AzvTZy00qMsVb5dzyJFeDo8jcu9gnkY6qegD9HiTHZFy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9vsqIhr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9vsqIhr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFA3C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762549193;
	bh=0J31gHuMiIcdeSFvbT1Rlv8YGgx7V17oqc3cm4RNhDM=;
	h=To:Subject:From:Date:From;
	b=V9vsqIhroivxRmt029XgSag6D0eXRKWGCj/qrWTxi0qmIZV5sMBy1MicRq5v1bD5a
	 qH5MC9rVPJQ0x6UeRwRV3xGbKKML9XwEUGVGe8gD+cZYK3lXDT2PoZ8LcIvjuK2EGA
	 Ci6j+yGS7YHRSJArun7f9fRh9Lc0e46c0kO2dXhKnVKR8gey++cXyjj+iIk7cAxivz
	 i5cOUz2NXo055+BiI68sHETdq4BKXZ7tf0Txej4O85D4mSrqeHoCeGF/ctwqswMJHx
	 0y715CfTltUlmFWIxLVFvVLhSRQNUo6qmecK/tNHt5nqohoe5mIa5DHHMFMhS0NAHD
	 iuLZh5knH2KEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D6CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254919357.22996.7951104009992780491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ed24b2f066807d0c86fceb3dcad6fd1d3e302a9752fd3b8c7afd9cf27e9e04e
Date: Fri, 07 Nov 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762549193
