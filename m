Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37152253359
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778802034; cv=none; b=ZfISDgeIILX8N1hyuNVfrdjSfb4/gkCP4t4NaflVUACooHlpt3Bo6xJRbE8kdfunIVV1X4jR+n6h5h96O7hcjme6V43L59rFC/JCfpEHDWL/aCn0U60Cy1XjRNqYBXFXaWt1C5CgOnL6xbWNmZpt7/gt139uSUo0ikiVuZv5JNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778802034; c=relaxed/simple;
	bh=FWWjRwXmW1NG4JHwJlLbmj+pYl+FJClyPs89eTa/YX0=;
	h=To:Subject:From:Message-Id:Date; b=XCKdAaaNFqwrsCHwPGxdO+ZjXDUj/x3OZ0UmtJJNByDWuWX0pL3+ZXgvpSTLkju2U+f1VQLAaJvmZ3l5Y3D201PiX2z0bKIoSppjVPlbYLrsrr5Aco5zTyDyQja82zVEceY7OMjA4VuXHYvdGB0BSBww84dfsIoLuSO0Wz/iS40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfVPasvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfVPasvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3DAC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778802033;
	bh=FWWjRwXmW1NG4JHwJlLbmj+pYl+FJClyPs89eTa/YX0=;
	h=To:Subject:From:Date:From;
	b=QfVPasvdkYn2NLqSPT5pjo7f9kWW9ATDO1as7BpjJ5Z2k7KvHpdkRjYhtSuGP2KDZ
	 3IcJHOB/L5ntL85Us99y0oZioGZyfXr49ayfvDIusEI5tBD9+iC6ZgH7kIMlsBxMbB
	 yIUN3VDPZKOK631KeStWwtVRCHQypQRTVOsPoi31mc1DoZ+FWSweyV0BTEZ6JQ3tYI
	 ud5xqhcHm0pecctc5v631VWs42dE7hhbPdpkSEhx/GVy+TLGt4bO/fWh2vBQvq6ViW
	 YCMFdRfff+9gInZxsz54BD8PK/HHaCVz/0YDlbQ1DUoWmvCccS7b9eWZzYeWhTOwDV
	 V3924Tx91T6LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9B3CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880203369.11830.18344904224557439580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5245dc9145579cc53d9c7f664ee384ab2e8ef8f0615ea47969a19025ce8da5c9
Date: Thu, 14 May 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778802033
