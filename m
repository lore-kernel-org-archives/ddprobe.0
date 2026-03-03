Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179D536B06B
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772531094; cv=none; b=Z2IroQglq1BS8e7JdmEYbWkeAiyJ9aI3po9ebLQhsyJWbdXddavD7gxZKylf/bmaMynKyiR0JAkTTI8vCjQ1cx7ioqocj7bB8i6eczbqE/BfjO1AjgjJGJIi3u8sheAqvz1ElnaXgHM9K6gwrDdhdtyUm6rUWNcimsUE0PUssPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772531094; c=relaxed/simple;
	bh=sVFFTGrJdYlTKDVJiA497H4VFBTKR7Aq0Gpu7RAdRUk=;
	h=To:Subject:From:Message-Id:Date; b=lG7pzF2aFxVyjs2n/RfBCLtIHO8a+SXxkcP84FVYfw2x4u9hquBdR/690wxuKXREhzuRd64bYbt9JX27dVNwKpCmmwjcwea6hncCuifCNuFvl6I34h+7WFcI4oFlF3TuxRED8ABw2uAOiUHoDF7iTycLTtb2qs+ahKh8Pv+CGYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGQIQUO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGQIQUO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECEEC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772531093;
	bh=sVFFTGrJdYlTKDVJiA497H4VFBTKR7Aq0Gpu7RAdRUk=;
	h=To:Subject:From:Date:From;
	b=PGQIQUO2ji1yhOxDP8HVyWfDyTWEpSU9gSlS16cwu8RtOR9E5PQr6Fe3HMh3udc2a
	 c6DZuqCXJA3maQgTEXe39cKFsLR2egLFiqsm0pMA9NtzI6aynBzYebWHSyBjhKf8QV
	 y+rbZKWFfVbGtLgtN58i7tv6SGtSbEu8AxX7geKbyw5l9k/ka4FI4hWNniP+roThKQ
	 O1ScoXeEOEmharvD89/YidTLPspxfEvzTm8Wk1oXWvvZ/Dpb6ZgUbDjtEYpp3XAWFP
	 rL/EcFOmBLcvzJPoIAX0PYHDqYB5OcE71gNX2N2FF+MUvu5JGWe/xNUUeTdODqdnTh
	 8sq32Bwg7r2lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988F0EC047D
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253109361.15946.6367724457082756477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882f019863b3f78af870a9327a2397752d57bb2d7df3d5427b196f4ed8759a07
Date: Tue, 03 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772531093
