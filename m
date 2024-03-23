Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293601EB34
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711208297; cv=none; b=m2AhBffY4N2vtaguMvdSw4LhDGkM0wcVL1GlmlAw5qX+Bt1vRX7JnUBJKCYTgzs5RPxXG78Nci929G1g1WlpDijnTm1jcDCKrlh3cFShm3fxn+qZYrN28Yae04FVlSWHM2kUoWB6L96q+GYWr8gddAVMmHtHlc+4tDaYwEj1vWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711208297; c=relaxed/simple;
	bh=dOl1w7doYjEQQMYmkT/ZAdF/CAOtwMVmhY6f4BHYtiY=;
	h=To:Subject:From:Message-Id:Date; b=cqabZoN9vlLt2x7NhA+I27MScbtbuKLnX/Emy3NR8iV0jxsE0ienx9i2rdX15iJbwFZTAD/1QsDhRrQ+10t2PkyZigA5hotDWN4tuDy1bdRehO9ORI2Fx2g6hLbYVVFawtY8/B/dZeRr99eyGqadq6MtEjS9J3g4J1i0V1Jt7bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0EzABX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0EzABX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82374C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711208296;
	bh=dOl1w7doYjEQQMYmkT/ZAdF/CAOtwMVmhY6f4BHYtiY=;
	h=To:Subject:From:Date:From;
	b=m0EzABX6tAt6ETJOG0btUZoeEuQEqLBVoMxilqrV94uajxVuuLzpdIPiBZWCFbRAl
	 taBG3WjRlgPuSU2UA2qnGNN9sP60daseOIrb8cTWiL+KVKDTjBZymVZjwo0DzugDoJ
	 8z1eLxaEUFo3JYSofraPKM4EIqYLncoy3uwWxiu1++VJqXtRXpVh1IOJSFpibV49bp
	 xwBOs7ZBLPH1/k+LDUVhMcxrGlTnpTuF3HifW/hA55Hh24bmnGP3Tju6Mh4a0KDSvF
	 QVa/9DW28IFzseogROeAiqO0/r+F9jy95OvaLkXKiR/o4QRRKV3cVWB3E44ss2XBkY
	 eAHoTj2ZnXeWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64870C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171120829637.1451.7913103411015222026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba4b57179a1a90aca40a2c7da25c250d0d874ed27e0412501cc985979242c60
Date: Sat, 23 Mar 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711208296
