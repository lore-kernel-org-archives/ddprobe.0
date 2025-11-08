Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0544A33
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762625994; cv=none; b=VzRZB11hYWXlI43V00smX3b8IjLaHwKcOLePVOTn+HxGX7jKP2NBFb2xY68J4eUGf9QPIce5Bcj1lQIt38AHoHr0fbOCVMrcDo5J/CT9xJZ3Li23YYBrmZH+wsYU44V8LgGUVu4yqVY5EH99hwip4o5/Wz7nREphs9d+IwrdvGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762625994; c=relaxed/simple;
	bh=hZnvTU3Dd/cwWoauWEkvFKAjPq6ckibt4ZK0eaW/Kp4=;
	h=To:Subject:From:Message-Id:Date; b=u+rXlTvhtSUoL7YLgFmrlCpn9qtdNla2Mn/Yv7XXyo202y6QY3+NGDJPlJkq8uvR73/yx+IVCd5nkDPR3w+cj79TiA5MJ1nUGn6mdAmxkRtn0oCyj9wWPPapNP0PD5KWAvG6yP7+5+Xrh/mPEdxrsrwKttAj83FG1D5kRTYZ68c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmsTfM3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmsTfM3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54A0C113D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762625993;
	bh=hZnvTU3Dd/cwWoauWEkvFKAjPq6ckibt4ZK0eaW/Kp4=;
	h=To:Subject:From:Date:From;
	b=rmsTfM3DVgou9J0fWiUHTTdBnYRrAPMqSYv6Z5r+0U1r5L9gX8rNHeDddrwtlgwgp
	 cwpyrYXGAWk4Byms7S847iPwasu7XqUC/hM+tOV3sPg7+POV5LRPNsCIFETOqb1k3u
	 Ekk/tTwwprdDmPlwlaOdc61OqMRu9atcf7F6Rvgqyg3nM2qJE+Y2sgkjLbt52rzWd6
	 EsNUIcaqBMaEPvFxCv1RxjZogHf4hbq/Epj9/QURJ7t3/n0SAjbl7HXfNfWzHf/U9F
	 NjPCC4IChpmjXUWAhIXOg+AZHvn4VdA/XEhJPFGrkp3VNZMZqpBpqVxuxWxFV1se4R
	 FiPPsdhrEaM5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B06CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262599358.12469.6608623487541481241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2a067f4e9f4f8b1f407276596e32d1fc21c13c7c1abc5561d5a37ffd265fce
Date: Sat, 08 Nov 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762625993
