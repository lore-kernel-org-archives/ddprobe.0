Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2CD1CF8D
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 21:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719696263; cv=none; b=PnA03I3VddY8aVCo/+hB5Y8nW3R5xbPM4CY53AtM8O/37IDYYgpOKckID5BEXdec/0Dlf6fvBBtCKJKmetMHDDSDpG0bmW3o8eTjq990VkrKuFuOGqqoexCqEf/BUFTFNR/IIV3QhsDc92zUCFcMINZ/lZSUkgvJ0S3EdV1/byc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719696263; c=relaxed/simple;
	bh=VZ2NWrY4WhpWjH1RroYwyEup6S9uZhW+MrSC6ByLp7o=;
	h=To:Subject:From:Message-Id:Date; b=Rhzp2iiTPRWKKwIGeuoT3F2ZSG8zxQErSfxkCZraj78LE4wzealBjQoiztRHcohBdcNeO483HMl17TLuOMAE1BcaWgfr8ZHlUfBpCwWiYENhC5L8CfLDdgfbBFfo7pWv3ZyFM6DXdznj5WVqFRmYrY3VDPNnqvvRBbedfkqllDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZRgeA2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZRgeA2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDBDC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 21:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719696262;
	bh=VZ2NWrY4WhpWjH1RroYwyEup6S9uZhW+MrSC6ByLp7o=;
	h=To:Subject:From:Date:From;
	b=jZRgeA2hirACB0tjzGn4mEOVKQTsgWjeJ681pRKm28RvuU4iDInB999HkSdRgrFo8
	 c83HTJifZmgEVqOGuzzjNAev/jPcKhox1F8x+eBrvaJGo1M9PKRqfypXxZZJ5YxZKe
	 DWQEyNUvyZfaFX2+EjTwRb+Wv4Na17XcU6FLWhLNhfOQ0LJfqu0NZIn3cZw6goVfQE
	 wnXagFfcxETZA7RBHVbOX9cjEtKjPTBEvXK5ShPa3zG5cNgbO2qoF8X7uasC+X84CU
	 eaFD8GoXO9iutMaoFQ4EV12E19DuzLimtlFPp5N/4nubt9etFU+kLpc4gd6DK8yjXe
	 wbMK1F6UB6GMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E72C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 21:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969626277.3105.2076551892610689964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6f089926d8b2310a5daea8fd98baf4a8ab18be84aa685e2a4d0871050af33d
Date: Sat, 29 Jun 2024 21:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719696262
