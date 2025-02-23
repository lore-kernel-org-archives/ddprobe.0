Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573CE35966
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 22:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740350934; cv=none; b=Zh/wdqIaVg7kfPdT5vq6ympPbgxsxbNPbV82avLuQJlybbX+IYCXQwVZnuQRCiSTWY5ht3KIVVlYChB1UKjUqnaKL4Db4cLbXeeqCophJSX4t9/7ppYRIditjSw1CGuHJcDgweJU343qOdqqoWm7kxEUEzuDFTp/RArO/lUEDQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740350934; c=relaxed/simple;
	bh=wUvPVtlHG6QDldRyQKkh/tPEcAoSvgBSsq+nfVWa2lI=;
	h=To:Subject:From:Message-Id:Date; b=lWMwfoVc43rvxfnSoV4MOkSvc6kjvW5EDNwMhYJ505ArdUkl2pDubhJbDUoGerdxGnQn5D/DNxEu1en+Msjbn+hrMGd4yF8SOZIzJXIBkn+2a9Iw8pFBvjQQ/qGTMPt/dDqvO1eEqQfG8dfKaMiIn2qCdUk2kZdEzwkyXV0+hRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jz0gR0Zi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jz0gR0Zi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA2CC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 22:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740350933;
	bh=wUvPVtlHG6QDldRyQKkh/tPEcAoSvgBSsq+nfVWa2lI=;
	h=To:Subject:From:Date:From;
	b=jz0gR0Zid1mRBMOikpxUeQ9SFyWzX1LEQdtlZYnli1pM3RKPDlfI5MKzMMjARwWj6
	 k4f+zMAqMosE2Ik/ooNzZv2LDttVKn2jck5MQKddi0cSBKfFzaHWo7/yJ74EOPYn4S
	 sDbluwzvMEe10+zRTPZLOgAJL3biyQtHlWAPnIDoCR8uMPtoPcdgpv1/pU+Uqav9lu
	 f6ezUjSNmmGKE+RRRu0tZZqwwGTrKVC3dwCbe0lZI8eznugLH2LMd4WW6SeYaitwYv
	 j7YYkLxy5AUhHuskyWt6K2IY+LTonztR8zaIp2S06YKM5zpqd/M1w5Lm5r7U7wyQyg
	 mE/NrdINuIHPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987D9C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 22:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174035093358.9379.2546585841090760110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f34d6f25514825d852897425e7a037d033c5036ec7622e51a4daae2524f145e
Date: Sun, 23 Feb 2025 22:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740350933
