Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB8620E03C
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746091794; cv=none; b=RBR/6PnNqLuGSk7KFJk8XhribTaaWS+ME1qYCGCGpzWtyxuk0VFeQKCiSURS97nLqFFC/4J9uzxlFTil2NsERCZJIn/K/41TpEs1CeLsSwdpI5sRJNFYaSE6uoUPGE4vEVFCkdUOJXYsXdw3Z7TQqIwEn1bfuG3roiEjQ/fJAXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746091794; c=relaxed/simple;
	bh=a546eqLE85xeLgy9RRpQZ0475ycJI+vjSY5Z2CcR10w=;
	h=To:Subject:From:Message-Id:Date; b=kkcoFfmnC2n+k3ZeNij9sp24VLqcmXdxokhjuTy0gsk+16LQeD38fqgrWuqvIZjr4yfpcWEaQgy+iE4lftEuA1/nASakrT8R1XhTK3lmhuXtyB68lQtCJOY02GpGt2B4pQuEnF438DnUErg2Z1KeDs8vPcINRoevUty7YGkUTlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2wBEHXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2wBEHXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F05FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746091793;
	bh=a546eqLE85xeLgy9RRpQZ0475ycJI+vjSY5Z2CcR10w=;
	h=To:Subject:From:Date:From;
	b=r2wBEHXaH0q1DGsFlOoxbqFo/CwU546XZMKocGdbjPa+1iIJ9QLMi3jDxNxixkrtJ
	 BCznl8dt1irOIZcOzHK/1I1UV342jT3utk1dSBSUL4HxKyYFzJNcHZhTcnw+qKxy6R
	 w9sGupgbAh+tHf3QtQ0p5oXQh3maaYhSWw1O3spK4S77yW8jcB2WuMAg6pq5oTyYeT
	 DLRA33KkfzYb15G9aQL1CKS750gHJzubGUsDvOWBDo97xktrRLt27MVaIsQcm/QDMU
	 biiEP9ziTC+LvK95YBXGPiX7kswm7OkwxRbRAdbD0tMioGUsDaAt8KNU+4t7pSXxHo
	 OosCOs/gxf0+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE2BC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174609179357.11973.17101473460586476410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c689e5bac6d9ca4b23e58adb96f5718be8a255914e7e15b7d425f8b5911eb7ad
Date: Thu, 01 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746091793
