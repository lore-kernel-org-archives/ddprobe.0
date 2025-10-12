Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352B72032D
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760258994; cv=none; b=RrKr8CGrfP7wIZoIW0QhgXXaqwTFQ68kA/j+potWNBK2NbWnYIDlmMRFZkdgIFJoJ1SGy1C7WZ8Y5WLPfhH14TlNGBIFZkHw1L69xp9DXf2Xm+83o0WhVE+9oUovj8zwkQ6shOkqTk3hrltjCdnqFHoJ2kv+0Qqc5mmUhSi5N8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760258994; c=relaxed/simple;
	bh=C4QqB5cpoHkWo9ebZ0nwKYsttMojZezH8k5MlNcVXtQ=;
	h=To:Subject:From:Message-Id:Date; b=pqx7O40RXwJY99klWue3Uq6TJEClJRse9bNmheTpKnh4MR2YRUYsaW+bQOEmn1tq0VRacBzwn1ZcV2tS5GpzI67ieQWlLKafxPdoPfmXFtpA7HOixlqgoNnvyXNFNiJ6FokoUcB0+UUP8ult8yVZagRlT6x74+eWY4tABW5WBqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCOamq1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCOamq1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5904C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760258993;
	bh=C4QqB5cpoHkWo9ebZ0nwKYsttMojZezH8k5MlNcVXtQ=;
	h=To:Subject:From:Date:From;
	b=rCOamq1gQnPu1x1z98BuEirESUM/MZ5OAIz7yLh8RYo5xHkJNO1DWYhZZJVdZiKEK
	 4yM9UtwiAESRA7vLGQbyZua/8kj7HdNRdXpLbnngxKE1ejN617K8ie+ViKfkLFTNFO
	 XoMIykG4C267dpDLiJmzL+kPxhMnsc+Wvx1Dsp54kkbjmz0l2yP7HdW+mkjlgEXQDE
	 mzSLhrTyRLzjqvkQsJ6t1BhrRsGtvPogRp+zpxXjFPPFN9Ir4IsvlpOfXkTI3JluiJ
	 2NSdxZKFLcJ0mpy9AxAynUlSUe/iRZeZx9f1r5pHT2p+qguPbrFaj1+GcBxP6FRPES
	 7LbJVIZO0Awng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BC9CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025899357.1253.8415286003417005710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 925eeaa89d6134088ffd53e7a40efc16b24ee594aefc189c009ef76f94cdd6d1
Date: Sun, 12 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760258993
