Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0F019AD48
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758005994; cv=none; b=F75/O1ZJwbD8Q55nr5DmncAuleuUqtxGjh7uLNU6xwaQ8Wd5lWnqJvDuwJSFuEwqt/Q5cWOZRGEF1L0laqgpaSXVRQ/f7XHKL+f7sWIZtN/B6Fp4M+OgyLOL3SjG2oefb17qsiFm4+Vf88y6EsmcVVCvop3aLsgmVk1yCPBMYtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758005994; c=relaxed/simple;
	bh=Rpkg2RP0QZ1BE7fW0CA9wfu7ginWOij5iczjJQiryMQ=;
	h=To:Subject:From:Message-Id:Date; b=BRG2y7O0eJClKFyLWGeL8oSCsnNA9isl8nS7dKAbBmNbfohD65fL6exPXQrnz9+QSlmXB9JUK+WOKQyrkHCwJkbYgh11jHAwBX+eZBFoOW/UX+CMPKg6Ud3WAtsDt6kFFG6M9AXOjDG/ZwIFy2czT4nJ/MzPznDmOKCvlSr1rT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjaE+wfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjaE+wfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A102CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758005993;
	bh=Rpkg2RP0QZ1BE7fW0CA9wfu7ginWOij5iczjJQiryMQ=;
	h=To:Subject:From:Date:From;
	b=GjaE+wfEKlomC2Gc65032WqR0jLVhc6Im/NMvol5k7qO4bmJTvVte0Hkyzkdh9WKE
	 K0ce3Q5You/OYUXYPSU8Ofg+IffIIhJK67KHLaQCeA4gHru01cipuePM7FMvsrFr/E
	 2lGGRMF0p6GCIPRciJofuvdtAehtraJ99gCK5Z9akpWQhV2yjAWwaU48Z4przCYmYp
	 vLuB2qb9Bkm6ATUyzX3st1NZs3IL4O8cuFLGHNSk0BUWctL88BmiRXOca/nIT92N06
	 TM3o1K0hR0vy9/I/+LCftiuvv13PoA6xlr+0wBXXdObKlt9a7VnbkQCRlExYvnSmM4
	 wxDvsj8YcKE0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21BCAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800599357.15120.3756459120585638438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e680acec5ca7fdcbecaa4e3e665d70fb62642b90ae4198981e0d5e7c127373ae
Date: Tue, 16 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758005993
