Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BF4374FE
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716758063; cv=none; b=ojetTEnuLu5Y8GAjLotwWArMYHP1YsTqNUuZWWQX7+RRHPtVhK+seL2d4KK60BIeHu1ILoXCT6NiRqgdz5O/i76aok+edL5UVGO+KjFtdeDVWbGJtC0TWwH5lHIq/OR3YFKcvca+lQm+RTAqyTkSd1eLJfhGJbTPSAyqvm6mRSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716758063; c=relaxed/simple;
	bh=ZttZQjtgN+s1AKjkVWJzoQY7QU780NSI81NGaxAMFUA=;
	h=To:Subject:From:Message-Id:Date; b=elyw1Ica3l8Nbw98vIkE1xkpTdikJZNQlhtQs29JWmb3kr0u0pW1swvdueVZ1C4rpG1RqmTcDRVoqTCSIYxjoPSjeSKND2gIghlGJK5xMItYyvNq3wzWSa6du8VRp9m53mWpb0ezclFT2+PDXRG/1tEb2kd6+cpF6LT5pU80pIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzNhCmD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzNhCmD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86D6C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716758062;
	bh=ZttZQjtgN+s1AKjkVWJzoQY7QU780NSI81NGaxAMFUA=;
	h=To:Subject:From:Date:From;
	b=nzNhCmD/5s9QCfUw+7lGc6Zh4CeTQ9Ppmc7Q5+08lWL5hwd8T48UurDslxsAORPsH
	 coAjoQKMXgmYj9k//H/wyTZmCf3vgzOZvci2Gym+qxpeQC/71+HM7IyFz3hAyzc68j
	 OCXygG1tMV3fcP6tADXCxXmnn7fc+5TqxZWnZpDQDaOLLDcmnO4rR7X6xQ4e34EA1V
	 /O4AQ+wOrvnUAzUEqEAMVYm/nxPTIdTaTD/h01AvarTFwVn/die63XxfAag5XRK+gv
	 v3Ih3Rb9nysptSuj6ZVCOjvhvTyLehi0DcoisofQJq/Mnl+gMWm3dUyZfZdZJP9d5Y
	 Nqqj8yNXVsQEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C390FC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675806276.30433.12199190114212086183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c387e19af142c5430ff6879097a4964e7dbf275c8ce14182f07e7acac17f261
Date: Sun, 26 May 2024 21:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716758062
