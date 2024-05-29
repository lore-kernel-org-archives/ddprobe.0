Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637D415B542
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 04:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716957863; cv=none; b=pQtwT/2NX/H8vrRj8PW2kWaoQnJaQ1yLmpzjlyV6ARp+wz0rYQmi7WYhB4iMKQx5TUj529K2bdUFZV/vKXPKyqH3/X80f3Zb3PRhrTafzlzGW2Y22Z4eWW4wExSeHE2zywmW3E7WdHIbEeCuzdEdGbdtqelQTT81JS1++nOFQhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716957863; c=relaxed/simple;
	bh=N4xjbYNf63y6B5RxfZcQjcZ4OIH9WvSsuW2hRjdSn+s=;
	h=To:Subject:From:Message-Id:Date; b=rna9y5+AJCOsIULb9OU0Q8/FZ88Hr6Y6adjm55zmUyp9BqjTCIb6OIguvaDwyCKvLaBI9jqC8VBDjdX4Bholc2/fleHHj+Ll1zsMW00cVKCQjlQZ7gQjkvJH6O+MBkgEp/67U4sX4R5r+ijPHt+iiUUdKo7UoydyfqOlRA6x7Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uW02jdNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uW02jdNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0BFC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 04:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716957862;
	bh=N4xjbYNf63y6B5RxfZcQjcZ4OIH9WvSsuW2hRjdSn+s=;
	h=To:Subject:From:Date:From;
	b=uW02jdNRTbnxiuHYy7D3C9ZsaAZeMiEG/ETqqVv7p11xbSnN7FBV6GHvJBBrN+1Ir
	 so+ZrBd99yn33U9yDSePxSrWdan/uac6vsLyWM/ygem291I7x+l1uFuhhUUpXJdCMq
	 EIXNpKemOgvubleuPzHxlrTUAgW6Jo8xJbvLE00i7fvUNdLuovZ2lptU9ilq9BCIj8
	 FSK4WZmdDf8S0aER7AOkHMtBSO5+JIUWHK+g2TbRwo1UwlN3q6QhWMcVW6Sgie0+Co
	 aizh9kUCUHGozO5Ks5c48/tzzSQnntKf4P1DUJBMGRVhml70OvP0yd8rh1lsJCCmpI
	 rINbDH5SNwG8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D63C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 04:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171695786277.13861.2263345881285597189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a137a68de7957e2a5b3f85fc4d9bde6315747fd73ae0238a900b4b6f8a9311b4
Date: Wed, 29 May 2024 04:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716957862
