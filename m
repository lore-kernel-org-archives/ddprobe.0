Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6AB2B9CD
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725772554; cv=none; b=SWDG9otPMubqyKtm04amG5s/jIKH9egB8RON9YnPWkY24pHSkchvQ1a575SvyhKExP7+kXvZPLgHwPQp41691ag7EBZCQOdUvegtHAXfmODQXsCaH9EnYkRQqPPuiAgHKo6qlt2d441nP5bwYU7LfQDAfozVednsnFAwc2XCSdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725772554; c=relaxed/simple;
	bh=y98LIIcipZCHRz0eOBJWclfoELmEIpEFKjkEgwZ2KkE=;
	h=To:Subject:From:Message-Id:Date; b=gXKHGOavx5V62fK3RkixHm4JyBA7xdGO0oMMQXRQvf44Mc/tYDiozhS7EJHD9ZPAcaBSESeUR3zUuDvIAZ/AWbGlk79fNuD23t3I7ybrU1e+KZ0F1aSYjDP+E3L9qt6rWG31KrwzGbKD7ofpYwX6ksqNofGoIwQi5X2LMyk6134=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhBoV9Ju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhBoV9Ju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B308EC4CEC9
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725772553;
	bh=y98LIIcipZCHRz0eOBJWclfoELmEIpEFKjkEgwZ2KkE=;
	h=To:Subject:From:Date:From;
	b=FhBoV9JuBn6DMoqfe/JqTuyW/hX4fnhY5JkCI7W9l1auWYpM8/7tvJHVriPwT55ux
	 Lhgw28WCiimtvpxBnRNTY+LIcCmasyk/i0Zf/ppjaMuTG7GvbLH6Q5dDVlAja/BmqS
	 HW2WF/oWe0rFvwM4DOelsXpTKLDx964d8MbXnYhsdofkv2mVHWXcEUjeMLZ0ShhJva
	 bgVE75ovtKXgyjPWUDIvKRjJnFwd/WMqiUObeyI0Zsn/HHUhGZSujhXzkph+CZFnJu
	 Zi6fTa5QSun2DX3c4i9zYWygKMvZl4wYd1D/vdHAt5N1HjwctrseGYTf6frQdQ/Iba
	 d5RmNQNbNFiCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDD5ECE579
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172577255364.7598.15141941649808931221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e259b8f78794127f5ab39491f5c7007afd735fc47e0137210aac3abc90e7ed5b
Date: Sun, 08 Sep 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725772553
