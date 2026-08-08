Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E36333BBC5
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786226434; cv=none; b=ldc8Auc4ghcsnSW7HWxulPuQjVjTUBzdDNWJvJX4XL05XdCF10umWR94MfWTo6e+7nOqA316Vqoe3Owjxc/CSqmn9dy9LHBvOX06QEsCtoroFYXUZUSEv9yp6gYoMj6HyJIS6MpED3bL3FSBz7KMAgSFP7kVf89Mx/t5ygvVgPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786226434; c=relaxed/simple;
	bh=Vd4OpGQHs3alecdPI5BabDfMLTjz5JyLxazCS/hq40w=;
	h=To:Subject:From:Message-Id:Date; b=qsx5Cc+Vz+GxDfK3BgKt0oCekm5h+ZRj14/RPDiTfObPWm1uzyUHMZBlF56BJDYGibzQ0cO/IyvI/23NmkcPI8c6ecdNzMa8bouiA/6jauGjVHR0V1+OtGUtC+5EcpaKo2+x2GZjmxC7aUCFIajBtTQlNLp4L7bT4lrU0jzrykM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISMsr1J9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISMsr1J9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAF3C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786226433;
	bh=Vd4OpGQHs3alecdPI5BabDfMLTjz5JyLxazCS/hq40w=;
	h=To:Subject:From:Date:From;
	b=ISMsr1J98Yq96t0lCqeVxfUIe6B8sX7D45MfSIvXyww+G80Gl2qDmzjhx/1t51s2z
	 /prHPx/ohPWt3hlkHK+hpMxMuyyA40TexdgnEsyLmeB/jei9r+srWrY8ngprPP6XhQ
	 a+P+bJwiJeZcM37v17OtfOK6JOOvwVp55QTM5oOQIPeLHt5XRv8pDScYN+5C1ijpHf
	 ZUMLl2qKC0E9MgOKFYk2Xs0zE0b4vqvBzLVqM07IQjms1h/DjeFj14EHma98KM5+Go
	 rYxau/LFG2QTEXbjZByWzybQhWL4nsDtbRzAJ0SsrVAbZ7jduA+eGjntnLGrdPK3hx
	 qlBwN2blZLJXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0FFC5AD48
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622643369.23446.951962511592632631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4272b3e85b6989497f5a849bcada71b28f3a98225bd70eb7b728cd3b6217e6dd
Date: Sat, 08 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786226433
