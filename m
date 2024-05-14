Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C24E180A77
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715724143; cv=none; b=rVlgXmBpZhnefsYoC7oSbIBnF5Eowz0tPpH6KJYmGxsiM5LuEHnSM+epBtgp/m0kjjA+gWm22sTye4qFdPRIWhe9z699VtdX0lgBmBuf/z/BfTYh7tV9vObyFlDU2qj/wF2ogJb+XAIwaz9TekZ1SWVHjpUsgRN/jLNkjgI+3DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715724143; c=relaxed/simple;
	bh=0yxD6DtX8YMwUYB/cFfJXMyoSPQU5iwsMMdsnnfA9UM=;
	h=To:Subject:From:Message-Id:Date; b=et9jsD+YwKApgSsZUuR81dR5q8OP9kCirKszJyi3gs4sKsPZJ+hxiiPtmE23Qqe1O5xRNibagxzfoxAPkws6YDhnXSGl8B7Qjd5EgtVWSlS7hYfUtvsxo/dE1OyiaBSEPihcawSSJtAvRgXBAXaWEiPb2mODmhHNna8MJvgPg6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfHzZLdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfHzZLdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04FBFC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715724143;
	bh=0yxD6DtX8YMwUYB/cFfJXMyoSPQU5iwsMMdsnnfA9UM=;
	h=To:Subject:From:Date:From;
	b=RfHzZLdCs4+AbImJSgJxKrNWgYULXa4ql0BC/C2XjGzatbR36PTzm1THvQAvqvxCR
	 Rm+WkzOjPobzpIiUXfMDPueln8iaXCXk7dN7axoF+zH93yfFzG9NoF4LS6jYtISlEM
	 KjvxZ969YosxszSQHrQqiwEubGD/mSPhMcOCZ6+hVIN+QleTQpV0lZ1mnLsY7m62H9
	 xLj9RPxAU3m+/qQArbcQ6Rz/tDPXeLztaBOqjfVdKnetKmX631OHcSLjnARcR9E11F
	 lY53rbT2lE/R2OFlCv4ZTufvaUEvn2GG6ASKJftYGfoATV2wXUHEYjg4l5OIi3y8lS
	 erwydkjhySmDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6EC2C41513
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171572414287.31179.1172783540605340611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c7a9aad7a371cd311711401f16cd146dbaecd7ef0afe603825fd63955320493
Date: Tue, 14 May 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715724142
