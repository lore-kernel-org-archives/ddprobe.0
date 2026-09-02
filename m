Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC6D332610
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788327034; cv=none; b=lR1hPydiR7kIh8Mk68imJmOH/R49laZsx3rWS4bvN9UyFS8NyKpdErLPToO86DoKK3TjYeAcrFptRiaq67aQiNTHFOuCudofdnygzATU8vV9/sSlnAQKaisLsg8IX/z0mouPEK4B4p7d+etDcyr3cY7yZ6lZfOuKWY7wJKfc8g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788327034; c=relaxed/simple;
	bh=D62a+9RwSm6JKh6iTNidWW1pBQLgBNhRgtLKKYwTN/I=;
	h=To:Subject:From:Message-Id:Date; b=R2f+DK1lTowJSLzLYlpODZpfgZfALJG7RUSnI1PKo/tczUGJ9bOkRvK3V0EqWyfgqPfBvGrhd0omC6cVUIEQngovAtqjxg0BHlmSr0PXY5raufvcyykoHc4fYbKHUgexDGHNXs6Fp7Q9du0wts+2ubfIXS1OCTKF/60LhvSMhC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9VU62DA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9VU62DA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFABC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788327033;
	bh=D62a+9RwSm6JKh6iTNidWW1pBQLgBNhRgtLKKYwTN/I=;
	h=To:Subject:From:Date:From;
	b=N9VU62DAD3L5A3V0PeESGpITaaY1XNaZHhO5t8lZH8KM07kzd6CdC0kHS8da2i/TJ
	 xJJujzC0KAhYQQm+7Q/54PYumX+RZwUBiqX2eWjLZXwbroyAR1q0fBsxRtCaxYJFmr
	 AZOLSjVHyaShafwDvbtT07k8n82vcCZpTbTYV3fyxC6d7PxnWCnwprmiiwL6QfOc/A
	 NTbFTKgoq/yPnG/vtoR7QCMJME8Gkv0jBVhI479nVk4lTzzXKGN5in36bVo9uLcIgt
	 uNz+kHtUYcBMgTn2nST1/4a3YWo49s3ywFPR1fg07REO5ZfkYc0mQg/iBncux7sJS0
	 qSMh1gOfMWvMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA96EC61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832703368.17691.7249517966869298651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ebb9a57f089f9d376fe4a7f4fde76c939ccdafbef64544048f2fdfbdda916b
Date: Wed, 02 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788327033
