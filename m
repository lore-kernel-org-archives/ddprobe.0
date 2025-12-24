Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBDA285CB6
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766553834; cv=none; b=Es8S1J2744+vBFSeeQzpny+8s3KRZ+1M5GMq0DZShP9M2dwY2J6wWFmVH94z9d/Jxho1GivlJeTSB/fQefyJKTLt0EfI3vIDJpqtV24SEuUP9q5PJlw7tbicW1ZsMo3K4AJWfTRrHbdZD5A3KG7RvbgUQDOuoG6ijOfZDN6eS7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766553834; c=relaxed/simple;
	bh=oiTtNsK3q+ZyE1hHQTHeyo1obLc5vFdCMiTAX7rHAmM=;
	h=To:Subject:From:Message-Id:Date; b=Rvc1opIfX4hpcOxwQ155MMjP6MzfQdPUeJl+mTHzjdaI3yXp0/3D8pmesWjpwqYqlUUeZrdcMufm8syPvXc01q2cvK8/C82hMW/R8weLUe+5Qc9Lj7fcd8m39PXbsdoWeHqxvVU3bDl0+wVwJkWiU+4S0jnC4aPggjszBAlBpXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZWxrLii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZWxrLii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F846C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766553833;
	bh=oiTtNsK3q+ZyE1hHQTHeyo1obLc5vFdCMiTAX7rHAmM=;
	h=To:Subject:From:Date:From;
	b=LZWxrLiiMtvTrvbSdHxpJU66to7pbibZgmW5HMo6B7JaT1NEOYyACOu2AogKSLCTF
	 DeP7Z2R7FgO5ttsGwOyF9/5I5eaAirC4VLJkFs8sFt5R4vQag4YPdgEPhxKLtX3tBH
	 ETaRwH0kv/m1rs+lxByiHgMhwl2bHNQh6NUdl9+bfZwApoW/EdQcDZZfm7D/DYdb+y
	 5F/p98+ZY8ZAN6CDFbH7A7rxDuuQdjSMqvDgmUo4Y3CJe92aeZ1MKlSs+Zq+IFarra
	 6Hj1N1fDFzAtwmgAfKmrKdO9XlblL5p1c5XpVujTcXYJsVBZsPM9/bJ8zG5Qp6gTpC
	 hFCeluP7iKPYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8EBE74902
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655383357.10370.4766619665123795182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9803e51cc3c272d79cb0c41968fb713fc4e137abc585619d7c8c43a45955e614
Date: Wed, 24 Dec 2025 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766553833
