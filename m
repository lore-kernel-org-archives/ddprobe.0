Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292B47489
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706161097; cv=none; b=IUeAtGYN/rnmDwtNCorsUmvzWVU2tlOjDiQB639+X2nUGwFu3xxQUEhXSSVoFQjfHHGi7AJF+d/QVQCvc7Ju3/LYcR3Swm9cST2r01dlVwOW1tUSm30Nn8Kx46d9NgnBiO9orxLOePP3KwguqnWkVgar9qJpottcXsxDMQpT+2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706161097; c=relaxed/simple;
	bh=twKZPmB4tRBX5ASNxWKUlveknS6Sxr00fI0u+k9pGOA=;
	h=To:Subject:From:Message-Id:Date; b=CkASABlcfibR6n9C4Z6NW7kWFCjn8rDfvshmfqjlpxhDM4p6V4aBxq2JmVTnP9febQ5pzuqCAFoscm94Y33G/X2hvnuJHjNoPS4qD9YEoN14oKQqt6lB8fRFBZXd5hz5Gv89Mt6ZPQfw7zkp+H5GgZiKyO6/IP9cChCLxx/WO2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYQDGKZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYQDGKZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D539C433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706161096;
	bh=twKZPmB4tRBX5ASNxWKUlveknS6Sxr00fI0u+k9pGOA=;
	h=To:Subject:From:Date:From;
	b=EYQDGKZV37zJveEXuTT+iYup+kDhH9bm8wsPM5TopUrUhjFyhmfSDDAXFrHVrLmh4
	 1Hcyu+jwW9ZAK8grzq9xTe5Ds0t5Q+1O5EHEWHgrVBXjwpu1Si1VXEz+SbIfCBpEIU
	 i/CKa4KyS634G3+At55YKyJARLN732E/nmUfNiwpa/IrrRb+gzho+nsveYQQnts9kn
	 YZnyHqPlNR5X3Z9kd/Zauz/67hGOsHiakfagyCoFHYg8v3YQ+cv/isxzf7V66b+Rqa
	 wNVqnl2Jw7AY2PVdtJ2He7+3/eyMGZIeMQz24OJ/znYxXDaa/+JVopu8an/xcv4cXk
	 JK6z3t2VlAXrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BCBC47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170616109639.18801.16921210805180888910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a403b7c3a651c967561df7371f69b218a6cb65bc7b79e8861381490a5a1a18b5
Date: Thu, 25 Jan 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706161096
