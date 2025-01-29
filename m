Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AED179BC
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738119954; cv=none; b=PEu8XT3Pvjoo8KYuZsTdFMe4K67vjPEyL0wXrfcXO1zpxH6XJdudaK2QLlBrwJYhWSwpISkJCoo9DBSTM3jcVkB1OwKGspo8LBLMuagq7ifhrdo2mqSC4WcB7uq8Zuuta5HW4awPYJAiPX0tpDbOwN2iVkmSjx4EQpdIMfaGZ8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738119954; c=relaxed/simple;
	bh=ESZ/iY6i9xGldmdfEXbWV6t1IWlcSvwxi+4FRShxZWI=;
	h=To:Subject:From:Message-Id:Date; b=Fz2oGr9EQl1kNDR04zfQwSI0SKgRxozVngLhMMVR2lTyRmaRUMjw6MiYLB9v4mWlaVg4ir4QfEjNka2Iwg9aBHOetPvvUumLZmj7EO6BT/rx8Xa5Yu6vSnGCTP9KkrJoQWu4IeJcI1RqgIwPAkJo5iVqTMAl1xeOvOy/SQsmewM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xj1IOhAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xj1IOhAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E1CC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738119953;
	bh=ESZ/iY6i9xGldmdfEXbWV6t1IWlcSvwxi+4FRShxZWI=;
	h=To:Subject:From:Date:From;
	b=Xj1IOhAhYLtoSRxGStwOQhCn8istgVARUzm8YRJ90GjY8ILiIB1Cdn89phkhY0k4M
	 yMZa6uev29pUFTRn9f7lapGvYL6+AyuZ54kW7zIN0l/jriQXWRxcT8twsZGcL/ybq7
	 vUjKkkrTJQ0xozbekFt6ByvKIWH8b+FVk0ahO0rBy/9690O35ZT4RuMPz/THdeJdpR
	 5rAFRzHnayttTzVU3zlHx22ZctQ+iul75N6cRIBxzu7vkSbN71z+V0DiLDJByWMPnv
	 xkSAdZ4+81H0cMg6K/84osxfb/DAQkCbmGmUofyWY4Z8a3nr0v4+Sn6cB0RKBF6Apj
	 0wYr6WSWk6WYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A15F2C0218A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173811995365.16101.2665414125969594381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c35635aabe24c97d7973581a67e766d9af3f9df05c27772bb5227e470a79b51
Date: Wed, 29 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738119953
