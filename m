Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333B43F8EB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779993754; cv=none; b=MXO32+q+/HYYSM1VKeiYwU5lG2VTuItCy2hj488W+R6Npmr4KejLNxvam58mC4jRaFUPa77j5S+0cb5TLkepmzgr+4tXc9yWIS0Idy0DIKvE3DwrNqcT/Zo83W7DQMGYSrrwE6Hk5RIU3ZLA+GUPPeDxb9pXHbqeJ5FWG/o7O6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779993754; c=relaxed/simple;
	bh=tT+iNvq8Ahss8v1wX5QD+BPts7HMH3n/Dsb2rr7XJsw=;
	h=To:Subject:From:Message-Id:Date; b=BPecUGOnXv7ExdwV+kSrzEwW9I+JUp756MOQBYyRtbKOKDE95ndDGlEzY8e19nt+BfBmTZvg7HjjkymY4BPayO/ik0sVbQMtSeUr8lEbkwPE4q/rECsYj/O3pTShCC65vLCpC1ngDpUgT9lfxm9wdCVnzsEw0eVYxbwoERQsEus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuOP97WK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuOP97WK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4BAC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779993753;
	bh=tT+iNvq8Ahss8v1wX5QD+BPts7HMH3n/Dsb2rr7XJsw=;
	h=To:Subject:From:Date:From;
	b=nuOP97WKa/e9CXusRoDirjnveENSUIu8bSzuzm3jLV2ko6WIxY+4GjtaR/l8e+MnY
	 r/a6FdGJq5GVF7fG/MjjLuHOuB3cP1BmDNa202FLXKz1o1byqZcQbpD25DUFPps+FE
	 vSqoyudFrTYCygf1/OBV1MbqnewLxU2GcfK7dKEGup2dFrKJgrGl369DJ9Cxk2dd+i
	 1qwyvS8Z2FSnIkeN1Y75aP/9Y6OkWleuAWnW+baqvQn1ouAFuCGZfgZqAR4UpQmrsj
	 EVxRR5Q5qXXUjvIDKmInDEGkiB3t6QKchbBsso9+uIILW4O6apHKOptoioo3XJw/r3
	 6gllXkASaxbeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8666CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999375368.28771.13140979457799026489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27107858f1a0bab8ad04bc2af43882f0e6eaa6cd04d7588ee917c9023d5af036
Date: Thu, 28 May 2026 18:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779993753
