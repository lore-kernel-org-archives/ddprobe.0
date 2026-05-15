Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A3A3469EE
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778876434; cv=none; b=GtE/YcXoAqMbY+VLZsjFkUdSFNX+8048g5BwmbOUMA6reHweTApZj9SVfXvL9j3IrK7dY7qVQTDLszFLy7+7MV1/jmqa03dkMmFOZchqvSNMIOrY/wqJ5LZDX9vjMoR+6rkwtEUMF23hUPxwRPg+wtJG0BXVTaXR5O1eQ6tVG9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778876434; c=relaxed/simple;
	bh=yOBTObdM/Hs24yT+jcf3f2p6SJECsZQ+8vqyuMFVr0Q=;
	h=To:Subject:From:Message-Id:Date; b=o621w3T3KScFVEHevBvcDzQR0Z+WvFKyi3dq84qfiW2Qt11b2m4QzpZTnuLlZg689rGiv+hsQmczGUnELJBCOjWw2Qj2N2wG7FXXnUxfcCAFvPmUydP8LTEHAcKqoxzmy27Pmp9S5MpuIduhSPGmsl0FDjrJnQdVfRPHyfct6Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItNkcF8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItNkcF8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52A8C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778876433;
	bh=yOBTObdM/Hs24yT+jcf3f2p6SJECsZQ+8vqyuMFVr0Q=;
	h=To:Subject:From:Date:From;
	b=ItNkcF8c8YLRnbH1RFEKvV8+wBLxcX9BgFGT66eEEo1D2VwJ+hProZX/AV83Mc6LH
	 qdpaPbBs6lg3uazJvisz+92l7E+ivnbwI6yoxL4eECDzbcg/t2fCUbwE7SoNxMbBhW
	 T2PMFqBGr07KPy59EYJthHAl/SBup6DvwkxXPvjevXlagiaFvCNmtr2iSkNQKVvOqO
	 iRVtG1pTAGt1ngmxjI59BPz7PfYxs2kxWfiDyX6y4LN3VHKdXOIgL4vlW6xqt9MA9S
	 SlV0fJPFycqNVH/cXSRBVSyHxDL+x3vXBLTQqS+HWb1YmQlpmEKhXPYmqG1yLXupWG
	 ZyQp/GjBugCpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1374CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887643369.15634.15363702317956906860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb020efd7ddecd2558d380c7a8819456f9f52c2859a2cd9e7e3d4bdee447d8f
Date: Fri, 15 May 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778876433
