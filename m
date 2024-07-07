Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECBB210E7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 12:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720354583; cv=none; b=HsYZ/gAwQoqgiqodaqDvMDzd4lGgnpQDl/v8nnIW7O48BrJBwHIYBTAg+ELCiq7Is5xwZzz4xvc2lyDSaQlo/b7B03PMHyyC4JX3ifIkLWas8LCiIQncEb5C9dj5H5A+LJH/wf3/CMKDyACInLkU9Dgk7RsEqklxMQYwY8gNuYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720354583; c=relaxed/simple;
	bh=CBDmv+OGh5jEeu6Dwnoh7zrLRio+i+J6lMIFgpcro1A=;
	h=To:Subject:From:Message-Id:Date; b=sKqK6hTJ0x78YVk9eBnWiHH+brk92iDgVUSVhrhxx6wr41gg3wywZ0stp1+mc5HBH7NTrvECv+hvzpyrsVBt2yKPLEoI1Ua4YHObmmBsw2w6He435y/UFxoSU4k9dmhX28fQpVVpYrtbDIYhb87Y58oai6SJB9AkvUWsBjRQVIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6TvsBYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6TvsBYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E4CC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 12:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720354582;
	bh=CBDmv+OGh5jEeu6Dwnoh7zrLRio+i+J6lMIFgpcro1A=;
	h=To:Subject:From:Date:From;
	b=s6TvsBYnBX/CftEzoDjEFAp8p8qBcf64IOAvx2aBE91S/NUFYes3nkLxgsXR2+Fpu
	 j+Fit+X1B9hkjm4Gj8XYzVjttsH4uaIKXg2O03iuoVmVo+799TwX0eT0zGcVnO4avk
	 RxzGwC4t6q0iZwbqDvfEFSXIeZoaD640y53JwbH2IdCB6RbJXd6sls77N69cHL+q33
	 4kI0DAPYqKEilXVeMfVKRzCVZbufntpQ5d+/SiN4qvDP2U6NnGUDRqRqUF9e/iqYZw
	 2bFHeCo4Nqk1Re5Gz/0EkCbgIH5TI6x/PxSnEyFb8dssWI8laKw9HIIl2zIyz6pJiI
	 H9gXh4XePBKEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CCBC38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 12:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035458279.21179.8186690224049548112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1cf8d7f589a56b92f0265a264cbf3681a200cd193cfb18ca4afde87e4923513
Date: Sun, 07 Jul 2024 12:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720354582
