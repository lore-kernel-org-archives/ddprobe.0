Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2AF713BAE5
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712806696; cv=none; b=txk0uhEDKmqcYZAbxyRwtVAZH7yw5ENFLrlPnLzXG7yPefEvcGmfpD1Gc8+vICuszXkbbsle+Ohzzvdw5UoLCrJB5Z5UXHpJsnMMhHDBnwhJm1ITq6VUcjIvxHbJ0AdyIkTOCL44T689FmI/Rp4oKL375U6S6CQc/wY8jzGSSo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712806696; c=relaxed/simple;
	bh=IvQH6AaF7/yetYA2EXlfxqYNXyMowXgSFEQzn/dajjg=;
	h=To:Subject:From:Message-Id:Date; b=XQ+KGAbNd53Y8Y4R2NWfFQZkj/V7LGZKS8m/gW57ovn0J3v8wYdV5uR5g6cS/J44rUPJv8/wlPREmSTaTls7Fvwhpsgj7bXtE1p3Z6RLsMl/2trrTzPfDFvN72g4iWIT/324SVhZdOPxBsdEoaE0PA5297g/QvnXOq+tefxhctQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NN3YVbk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NN3YVbk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A342C433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712806696;
	bh=IvQH6AaF7/yetYA2EXlfxqYNXyMowXgSFEQzn/dajjg=;
	h=To:Subject:From:Date:From;
	b=NN3YVbk2UHqxoziCQCoIAQc9FOspe1y4TRmPyiLhdQB4dchzG0r3bqeMSw66Eqnj1
	 ihl8ZPT0x6cdgJzWt0/DBoIswFFubx5vfFuoxeum7i78rVHw8NIypN5eHfFmMJLwlW
	 e+kjnvtm4PIXFwFgjGXTM0Uz8fyFuur/9Y2UbmwDzM/yBbvKpCo/XaFQP7znouGWVY
	 txnuUZ8hokuCXZV6UevxRvhnKsUn25qCfjkGCnxrwcpIZBbbd8xVJ76LOhhzd4LEj8
	 tU1RNeI46UbRRe9vhd6ZhEti8q8Q6ewxZo3LcD+yQ6/v8Ho7mxzNMYfbduQGgWxLvy
	 DaZ780Nvof+rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68E2FCD1292
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171280669642.13235.10901964139282115182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b705c458316c6815bb8849acca597b529e1077015f67d239d8d24c93cc64cef9
Date: Thu, 11 Apr 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712806696
