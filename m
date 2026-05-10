Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B4454768
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778375915; cv=none; b=Yi5j5/JYb7c3mYGUC3kHLI2XyxG8GgwrcR+8BCXgZNCLL9zD8VPq9t4pPj6nqFOtFgmP0NOOMnUtvRjd6mXTC7CP7JAitlXaWu4nCEoW4BTR1nMH8Wwm0Evn2BGwbMQRY23aqDAP3iTU0RGOh6YBROvR17Hv1kF/ZwmhZ8FsdTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778375915; c=relaxed/simple;
	bh=rsqVkOMi/xZxglL/ADi6kaJ6KMMxB04gzUfLVRqoI0A=;
	h=To:Subject:From:Message-Id:Date; b=F6aaoxZq6G5XgwEaq120emlwjjBM1xuPcUC3j659x8xioSrHFp96ki9mTbqJljraI8U906Nq1g/cGgzSHFK+7wpGn597y24cDLZKj3t+1zQZ+l6VxY6rzVB5dUMdDzwT3nx1jDuDeYakyROKfPqVmZI8lmlDY/YpTIIZ7HEfFwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRCjDlC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRCjDlC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 51839C2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 01:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778375914;
	bh=rsqVkOMi/xZxglL/ADi6kaJ6KMMxB04gzUfLVRqoI0A=;
	h=To:Subject:From:Date:From;
	b=fRCjDlC4GyXfPB7tJNs1xLbgSfuS6iZbGHy8o+faUa1oiXeFzsf9IGFFfOeLWIL3p
	 kdX6YDE3IGXVirixQGNRYhTjNVcr0/h6vm5yr/cRcbcBMC0tDOEs/MBftkhyjEwqu5
	 8L9igpaca/MKUxVf/yVAmeq7fnNA1GkWmpdfI+mClEvZJ6BpwEOAyx79kbUtkO5UTe
	 R6a8gPoCd6pMX1m2vL/tcOzMwnT40itL1es/cmYpun5f1rd9I3ZzlAXWMw/7oAsu/E
	 78PzsMrstxRny3vZgiPyYXB4qPfYEb7wxiFTVkngKtCPLFXGBBs8fKttpmVWbrkP8S
	 pKao3DXKJSKng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 114E2CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 01:18:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837591393.2875.6868812314032169390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 434e543ea089ad392d87f6852120c87d6f3754616f4047244b30171574460977
Date: Sun, 10 May 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778375913
