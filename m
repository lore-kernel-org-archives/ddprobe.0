Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344AA1643B
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776309454; cv=none; b=FWZA51qk3ibEF8gVrt5SRBvm+oFMh2cvj5BH2dSxnxY67CAukhffkQujoVLVIsEDHWWPXXb6sdSmxTptNm0TvQJ41s4RODAqO8mUOn2zjc+A6tY/b9pwPVQLeh50DMO6UQnoCJEacl5jdPX9OAqeKkM5U+FS5VG3UW3rRTd36Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776309454; c=relaxed/simple;
	bh=+Cxo56LS1e22hfoyEAKScclbIfU7sfGuGXovfizFg48=;
	h=To:Subject:From:Message-Id:Date; b=hJZrYa1ngiNLsO8Sq7jFVVzSzf4cun6u/qNL12ITvn9b9xmvqAavGlCeAkFzCpo5ugPbguRxrTQUkqq5g1oobhbhiSAuCSHc6+15b3qS3HK8fre7VDxz8n3O97t0aqZrvzYja7KXdPN06rXeOa93YBfzUs/QeHLLWf/23PURfIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgbVH4GW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgbVH4GW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AEAC19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776309453;
	bh=+Cxo56LS1e22hfoyEAKScclbIfU7sfGuGXovfizFg48=;
	h=To:Subject:From:Date:From;
	b=XgbVH4GWem3rkMi7IWfIHnrkeydkOHhrZB+Fb6nufnsA3tdAVLe/N415OnD33Oh3s
	 mSJJHWPyDZrG7NK9sQb7dLQaWlwm1jFj9SqjjerD1G/xsbo1dedO5SUQzaU7XyLMeX
	 QwCUdkxNSzBunqQS38Ehb7eGwqDWf7vUDAPMD1e+1Urx4Bph8zIC7RkxLkMztOTPop
	 oJ9PigZZNl/wzn4eyI6XEJRaKgvr3k48X2AIIpGIVzZWZhA07kaU8HnIEJKqXNyXNl
	 lvO8jrW+UmNfuuskWu4X1biujqa84DO5Kxx9LAYc3pwTfz83z5Vzf87gt7JOempDxG
	 RRkK/MsGvfLJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7765F433DF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630945374.13821.16370180154303934765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ab579f7e4ea2ad0b0620d3751c8776faec7a45f387ab51505028c45ef84822
Date: Thu, 16 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776309453
