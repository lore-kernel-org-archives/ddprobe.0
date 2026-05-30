Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2926630E85C
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780112014; cv=none; b=rEhXeIeo+4oY8nGO56Cv2isiAh9JlskPiT7q/8/IKW1i3dHOJo5/rBuEOIRV46NP8QgVYcM0vbipeyx+p8GW0ua49HyDNqf9D0QvxOlApsyHZy5v6wTcc2R94oAbxR/xX84eWt5cu9/fzIPOUfbX3bI21kNfnVq5BcnMCUpgLdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780112014; c=relaxed/simple;
	bh=oPXFDV9/31AokMNGjz2r6vVk/y5i6/qmHK8UN0LBS6A=;
	h=To:Subject:From:Message-Id:Date; b=IpQ/jQiW4EBSdstEuwlO4DwXbQMRjq7GJ6AYvz6NFXYMBQgCDogJTYc6mwQ+srbyHgKIHlFOONphx5DYN8E2lhnDxWmlWAHQEvthJgPFKNanpw4dvLVZ5RKqICkSYoNRLwjZyaG1A0ma41q6ANLd0rR8iNdR/KyzcLJ/etPUy/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8ey7jK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8ey7jK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1631C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780112013;
	bh=oPXFDV9/31AokMNGjz2r6vVk/y5i6/qmHK8UN0LBS6A=;
	h=To:Subject:From:Date:From;
	b=L8ey7jK0t12DCmrasn6700gdEkcl6k+z76JP3Y8zd9TvzURf42AeABQJL+WXCwCi7
	 VWKrx5GjCM/KFWNleIgF1xi7J1yrwE4RY8yEf9X5xIa7KIuLdjzpWiUTYJ108AW+3b
	 S8D+4FUenMQ5ZjF0kvk/rOcuIujcJhVjwp3LwTY1eib8kAqblYbuhq6Z4caV/2VLOb
	 YVJweqUXLlOGE6U7wQmqgGMwifCijvFQJRfSJKNN94kpBebcIn1uUcCIf6x0q+J6Ho
	 SCnDcPyfevpZILU1vDdMx6JOTNLneDXZU9dswvmm4Q38gmxBfLhGR9BMpVU/mGIaRC
	 8b4KMILCSIlvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB197CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011201368.4857.5145309143738572133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5414ba61196a76caea62da2df516e306a2dda27b3a21eb2b9e51b4f53390dd66
Date: Sat, 30 May 2026 03:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780112013
