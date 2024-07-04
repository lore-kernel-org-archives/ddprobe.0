Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A93E1DA58
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 14:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720103723; cv=none; b=lFhWiJJApdCynVAaRJOAGT94YKxl0YmD+pjS9kdsXS3bTKnWhmG2sdrgyKPfs+Q9vjkr0hawJAvBamIrwoY+dZyf6SDVvNRADV79MCXQkLq+UA0gVNEaaAR7prC+yxvbfOHePQ8dfzOyu4mrGylJtKF0CAYS1+JglGCcdBQDuzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720103723; c=relaxed/simple;
	bh=UkyGkCVsbH7H+BuOyn8oVoAzxeIop4pcQAy/WX+niSQ=;
	h=To:Subject:From:Message-Id:Date; b=remRbVI73E5E1Fs3V9JyFkojPY6Shx3qNwvtTudkMgvcUynS3CpR4KpwBD7V6t1z/hps/5JUy4SIj9wcMkEZRIMUyPOSqKtcpo5pWrrCgoDZZD6GK/DvVkYkJydd79FwGJwWIgQGejj2rbm29qUE5+JEYBAxhFK6zdNJffkL3O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDrVRBAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDrVRBAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5A8C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 14:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720103722;
	bh=UkyGkCVsbH7H+BuOyn8oVoAzxeIop4pcQAy/WX+niSQ=;
	h=To:Subject:From:Date:From;
	b=DDrVRBAR0S9eX7Q2hkbnwfli3CNRIMcJQsbCq1exDmm87KPQ0prBPswfl2zv1UMdN
	 c43rS1NdqaBGyQ+qPwIRW3dNtBxr9nbQmAaTPCeCGgHAK/0/NbFq2tsuNyutP9t3Bz
	 +5ws0WhZ2miQ5rbm1abbB9VxGPyGtdp2pLcy1G0J2zINLXKLaPumqSITg5DcZpO+wh
	 vQ4zzm+guqqZaaTlGZISwwBodOGQVet30CuriMe/J5G9JlZWeIGn/ktPnteu3DLTX3
	 6fBQDw+xdggrr7Sca2SAUPN/XysWWUWFpuxCqR6tUkrrh3BMl3xpgA2nOXifUKDzy8
	 y5p2V0STDS14g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FBEC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 14:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172010372280.24935.11357083166023035945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e6b068b6ca8675561fe083290d5a91522f4153fee32327d9d80d8e90e4624d
Date: Thu, 04 Jul 2024 14:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720103722
