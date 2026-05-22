Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191F12CCB9
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779472954; cv=none; b=Lu44Z1BmGBxLJTM3yLjDZQpVWIPq++tkrOGaaeUa3Of/UJuLrhO7ZLcIuRACtPfFVmSsDUv79jkS2829ld5o201QCp9v91pFxHA+IovjkhiBBUUT3PUh9Go+u+gBI+0g6NDWnwxzJurGl4e5MOjPF6u3M5CZzFHYVxyudNPvhHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779472954; c=relaxed/simple;
	bh=+N55+A4sCMLvP2lV92g/NQ74/yWG6l82S6boOK3hqFc=;
	h=To:Subject:From:Message-Id:Date; b=QqbizAYgMEc5QPqUTN0WwYNJVlh3J89lEyvoUo4V7HMYrb17Td2FBOnOSl1hbVZZXByHtdX/6ZFKVydOUu9+1Kvo98GF5MGZ3xbtQkZk036tB6b0/Isw8bVOI0bB3dgazhKturh5RAgWsQ3yuKOuhw7pRMj8OJpvRLaI/mnQkvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqt+Jfnn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqt+Jfnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA2DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779472953;
	bh=+N55+A4sCMLvP2lV92g/NQ74/yWG6l82S6boOK3hqFc=;
	h=To:Subject:From:Date:From;
	b=tqt+JfnnXquIA3x3Vmxq9tuTMhAVgV5cGxu6xlDPEm6wkMGEKcd1m7NpmDRHXPvBh
	 xo0FfFWazuzB51ykuhSV7NVonNhP7JJNEkO0aoDrCcAjtcVBft18oH70KGVOE5Ahri
	 f9SjoPIq7WHNfh9g8YSyYNJdSp3gHuiRdJ6bi9Gthuh2HoGHtKNt1S7BvO/sHjgcfa
	 iEnO7igS/irGav+JKtaukC7fknmuWiuJQRz2ZW97jDu+pjhnVlgbt57WwWH3KLNTut
	 HghXexD3c2H9Wbq3oQYBi6qhSgOhVPcySjBP+Zkn8IibEipEcOuv+jKczQzXrX8MMe
	 iBvCOVVlOYN2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86E1CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947295368.3612.559568448957235507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5654a253a588c30915c06ff29fa4af1a74141c2b8dec105c7270c584d7a904af
Date: Fri, 22 May 2026 18:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779472953
