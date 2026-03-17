Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A2B37D12A
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773770093; cv=none; b=LeBX97oDp1pRc6go5pGT5RupAg8CeX/OFI2k01mZM1M7k4/obPUZ0+8lfdz26MU8nbjSyDUMSdc5XXIMUWxCgDps3vA7blryRBY2PIMrb75aTivyWLC/dH2DJ3p+H7MPop6zPCp9ckzUR1pAGpe3t4m4BvuS4mQ62Ff9FhVTnXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773770093; c=relaxed/simple;
	bh=vUWFlI+5TCp1IKoSRtuhbkdNIAdBIy7Qn96YJMrcz/w=;
	h=To:Subject:From:Message-Id:Date; b=TpJYidgjmEZNDm16U/9oBCbdML9pLYKult37WuQ5JB+fQq5DNBVwuWisMetVpiLirQKAuhWGCQcBkD9wsnDL8eoBXVSd950jnuqGGTH9pofysFZ/vz5SpUlJ3pdS7iATbXHXfBUG5VkaJyYirYex33Ya0fubTKRmeD+x0+W3a4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0eJJ2CV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0eJJ2CV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C15CC19424
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773770093;
	bh=vUWFlI+5TCp1IKoSRtuhbkdNIAdBIy7Qn96YJMrcz/w=;
	h=To:Subject:From:Date:From;
	b=r0eJJ2CV6D3u8xQy9drmJLCy7/rh/iY2jrUPMDVzuUCbdhbzZwhv3JWDkHpH+VBYA
	 AqnLUa9uUZw6xe98lJ9+MZ94JKI2U8sR+M/bUVf1btmkvZXApxApdj8CgvzIlzZMzb
	 7i2gmaN5RgemCtAT3pAN9hakZLOI0Hi1yXdY4wuXc8WYi56L9PcHoQMmLO2enESn+e
	 5qZmT7BDws2OtbHpT/EKqFUtBlkY00tSvxq5ZiF4mKt5zwA1XMoPx8L5+Mqm53mSQ4
	 ezKxQWXYZWoKiMHQ1PyqMA6DlvJjODP1Paw2+WcJu92s65wqKx64KuPvV4JMWpv2FI
	 Cxm7QoZ4UgaOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50EFED9F6
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377009357.17873.15801846463721824470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa95b36a1ad7883b9659aa1de122a24840764ce8bb4a4f6761c21aef3fd1868
Date: Tue, 17 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773770093
