Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9BA28469F
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760927394; cv=none; b=Ngy1HfKL7XyIWLDawIgpc9mxR+SIiAFWb2pTuY2wWDV9G1n9uVJTGldcebEAVAX1pJh7XqPtrJJe22wK6uj2ccGx3Ka85KfGviJ/adci0e/i7aDvTZqCjCWOdougeUg2JDYB/mMrY06EvztHIoQs4lfvdnOZeEEUf1vMD79cCGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760927394; c=relaxed/simple;
	bh=7oql4uW9ydBdQ+FUY636wURyjANs9DgoEgXYDvzYPdY=;
	h=To:Subject:From:Message-Id:Date; b=cxSrMSQaf2rqFonb6dt6UZXmzCrVeCoAUXhYTg51IyP16VU2oxuzFKflkRg3dNITHnYKF0jOilWlKCwM9c8lskgHPGMBvwk/ChqMjncoiMKQMjyDUuWJXzpw/JQ5vMPEgArTF8VX5/DCky8PFUHJSfh/bcmG5BRE/rJTpfWdsZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUUk7uVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUUk7uVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0838C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760927393;
	bh=7oql4uW9ydBdQ+FUY636wURyjANs9DgoEgXYDvzYPdY=;
	h=To:Subject:From:Date:From;
	b=RUUk7uVgdIgZODfcF6CXq8yqraR+lf3vFjRvPSxDzDzYVYJ7zWLImtHTmpjbQR+OS
	 rI1BXEZHRqIl+qiVXyP1Jhzd2OIzR+xIhCI5h7lJX8wIcMfCs6+escpqypOD5cKAQN
	 G40ITVhp7MCGgkpyMDbwPWEpOdSYT3QzGyoQwQipWfJOQlEJVPZdjZ0Eo8ODzbrUXq
	 gkK2UrdAGoBu2Pe9oXUioQ8nwL4j8WxLkaTcpL6YhtDMsIR9QfDk8MvEuwTnibpzma
	 u6WjoPY2bmmUUBATEDNoTd2G0O2FU98gLV2Q/QgETgf0ipMo4YreGy+eeeUexBPlTg
	 LN7LCMqFBcfiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC58CCD184
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092739357.5048.9192632059403218752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c18bb0884a00665929d618f943ea3381e1cc37f40eeb747e8ae7e23cb9cf947
Date: Mon, 20 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760927393
