Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BB542AA6
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751005794; cv=none; b=XK1CaUyCRVfuflEdCnEk4vjhvfahCxaAFsGG0gvQYH69E5ldHkhKtzuwJegvBXBUaFPKSRbZ0WY+NFkHNUdy68Qor0XbIj5LBWCQnSttUN0VPbllrtP6xmnr1gi4nOwIeNfgDqbdPPWSsAFgcUtIAvjitW6SjB1CFwp6TD2YIv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751005794; c=relaxed/simple;
	bh=/ICyvDXN2DpevvZnZ9wPQFWpxxpLHOpeYtBU7q09f/c=;
	h=To:Subject:From:Message-Id:Date; b=awy7aQM31l8vf9FvamJkqASJO58esYxFiJYJHgcj+ib29qPWDctYAOxUx6ssG35fHQFBmonJ7jgYyh8rJVMycophw9rExq94BtZQBYg6Y92EnM9xVLlP6BQjkasnLn4k7/Ke6Zni6oe0Vs0QbHSxBWE6LUEs8dtUJQr617eE6qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNUl1qy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNUl1qy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC17C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751005793;
	bh=/ICyvDXN2DpevvZnZ9wPQFWpxxpLHOpeYtBU7q09f/c=;
	h=To:Subject:From:Date:From;
	b=YNUl1qy4VUBYHiWuz8timSi+7jXxf3Jx/aWzecSmQFSRRWs/Tl6NaBHvyZKT2zn18
	 wFrgGEluPRvzK4ph+0icZqK1dRePSgammxfQrzcmEGv+t1i1P8rYaD1yA+fPyMnMeG
	 mJBjdT5wJYrjgN3lcG1W9mtagW0BHD4gMq6FytiReoAiLo7pHGk17N1TfXbtpsvz2R
	 ItAleFZlLs0eQ0Jur10Ejxdfb+jXykebGd8SvwvUpVEaIcJ9iMsyEvClsHuu4fvBWg
	 xrC4uoNVEYMpXve4Rau0p+KnFWj65IdHAZYkd0PpgiwT9Nf5LWVVmcVE/t8OLq163Q
	 ZCy968hW7tlFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952B1C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100579358.5731.7844404428598674824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19c10ac692dffaadc5f140fcb9a494e7a46a4dd222eb5ec0e1bf088720509eae
Date: Fri, 27 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751005793
