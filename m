Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495861632DF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753990794; cv=none; b=Db4oZGArx9YG3zXBfrM5Z9/vJfgUjmEGxn7n4++uFF0hng9PrqvRn56oiU/7gtRnJsXlfBOhy+jm2yhKg8DQoPUzjo0G6A+sxal1ufBLXZKs+djEhSfM5/9suQDrD3JHRk5gygsbnyTS5umSYaQVJ/9m8gnl1k6tAGhSl2KS2cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753990794; c=relaxed/simple;
	bh=lAmvKD3EOYN2k/8j15lAQ6Z7tK4D3kwzTBaBBSboZ5s=;
	h=To:Subject:From:Message-Id:Date; b=kZPSeT4ltoife0mIQEr4e4A2pdIF44/f7d4QrG+ksJUoa0/mxrkjLPsNaWXRm6kNPVkov+WXgz9w0jiKIOcvHqOu+cnLDAgfL/oQrm3Xz60Hxzaq6kqzAOJ9ulWVQrLvOcecmdQPE8iBvlMhZOVllpxCe4Wvt922Ro5zeM2Jg84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8Uf/qNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8Uf/qNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A636DC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753990793;
	bh=lAmvKD3EOYN2k/8j15lAQ6Z7tK4D3kwzTBaBBSboZ5s=;
	h=To:Subject:From:Date:From;
	b=t8Uf/qNunMoUfRU1lL4gzeknk6GIi12jZhCEjMsNiFlRMW+HUGyVBqmFiceRUsmIg
	 x+qRj75w0UVxOZi7j7c3Jo+p0dEo3/TwvHz0P54bn17TUxeT5zePS4uZRuDGVELlMX
	 tMRX5B/f01QvIGVlZvdXUpAjgoVEscYL4Mn7VIB1UCnP5Orj6uJLD1lAFK1BguULab
	 9LGNflJqCougL1OhTzLPkuUxviSOlfmAN+TNg8bgqmVfn3mTX+BdM0vjhd71uiHvIQ
	 5yqQKVp8RCMRIHxLALQLdOTvqC8gOyWvX/X9IpyC3tLUY9nlD4qGw1/HS/bw9yeIcF
	 cPze1ECmxWlww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9018AC87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399079358.7378.9671372865292363263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83bea64bdb715840789fb57acd41358d829fb00b9efdb3a67d70cfab7ab3bc6c
Date: Thu, 31 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753990793
