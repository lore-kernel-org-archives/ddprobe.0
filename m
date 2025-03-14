Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADFB18D634
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 08:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741939734; cv=none; b=mBDzxK3GrnuOH4utWBr1w/RxQlmc4+zPLk+lnRZWESAvRCTeeLcS+HnQ72ZiWwnxWB/yScghLSQBFBrBHMdMPcaA7Q14XVMZ4ieJLMygedogyXUhCvV1h2n6keoXpQASba1N6XjX2bEJPylggoz0qj+ihJwvOR0Fs6owPDulJFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741939734; c=relaxed/simple;
	bh=zBEA6ps3D/h764qnjRUe2yQ4vCXzdGIuVy/yUje+kM4=;
	h=To:Subject:From:Message-Id:Date; b=dAqIKq/ZygvNSsVg91/n60bBRxb/zBaXHv3ZIzjEBPb8G2NN+a2CE0qUU6VdyWpCxijd2KE91rmaMvQurFcL1E0Ke5atzVzDVn6AWHphVdAMHEjqFOIzhfNcLECGSTyfZwD+Wq8wWMFlpfKpppAXlmrqbomM1L0+clWMgmTBp+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQ4U+2o3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQ4U+2o3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45D9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 08:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741939733;
	bh=zBEA6ps3D/h764qnjRUe2yQ4vCXzdGIuVy/yUje+kM4=;
	h=To:Subject:From:Date:From;
	b=GQ4U+2o3AqqDtAsrtcmHl3tnA+eCR+wnYwNd4oBQh68ibqlKIRJzrcb+1y1cc1Uki
	 6YQxj3Z4YG36M7jFyr3fm+CqFBorhdKYRF6hZHN7p7CMPKEeG8SyxqRqtmZeMZy0RH
	 mVxSF8mXwNA7jTuway5ihFwZ8e7fSeGOx+H+hFhdQgsYOwOSmCIV4Rib2Sr0Q5799B
	 Wi21K5tr3BdTuVxE2jMgLrKcIDGIudSNpOd3EdLCbnOQB9XsjAo797wjh1hMn1C2kL
	 oFFu9E8vF6JerYgnO6YIqL8qwuxPavivJ6HHWHRKneF++eQ/4Nlr+Xe2B/WMcfIAU8
	 Ml/QucHqrOo4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912A3C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 08:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174193973357.22458.14802817121088317610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c6c0f1dae545cf0e950538f22db1332fc1f586dbaeb47d473498e032f37586
Date: Fri, 14 Mar 2025 08:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741939733
