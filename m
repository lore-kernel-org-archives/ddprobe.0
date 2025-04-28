Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382DA25F780
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745837394; cv=none; b=RcMaUckvcHr04bOLrq8wcbO4xGkjeatQLOYAlxPUeCPUxiuto/ZhnsZ20UolYju7mPIxL7JQH67+av8bPdVgS/Ac3GstuqKyBJs3htt7hm1KCbPU5Dmrxyhc/qbYUoDnDeCcg3LhzcYlYLTJatBeibjelc2p2NOg4QUObthQ+pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745837394; c=relaxed/simple;
	bh=vTKeuQeITjRHVSS46c2PvvIzT3T3Bw1713Kf/899+Wc=;
	h=To:Subject:From:Message-Id:Date; b=qPXQ8FxBWzGk/7Y+h/Rrmh6+1l14+ZPJjFs0lnNtc1Ug5NQTRmn1aB0DTDTtvAsHFzKlKaygH5+/YgGWwTsJxKODKNZ97Op4q2C1rMc3vCnOKLXn+31SDuwDa819RaJfm1+DF/oFweNnsje9YvPilBkpvSqBH9yqF8ZU/UXvJsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARxtNbbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARxtNbbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4541C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745837393;
	bh=vTKeuQeITjRHVSS46c2PvvIzT3T3Bw1713Kf/899+Wc=;
	h=To:Subject:From:Date:From;
	b=ARxtNbbsUnXa+VyxBGJYmmpa8/OI7TutXMFuE0KejDwjiEpJkN1sxaX5LgrGzldZP
	 3JbZFstr/Rb/UkQN1z3sL8A9VYHV7ayPbkMHREeTzo+NBXg1vL+rl58kOFTDl75Ai3
	 PRrqO3sUrSWo9HmzxHxI7cs7FZdhIH3R/OPQg0ERne4FUaiEd13auQfcXzT5ZVkfJ1
	 CdMfc8keEZPCds/soi4K22eTZzkpngJkJQ0/vhYE+IHkbX6y5+JMYdWCK3u/lhgVgj
	 ul9hfvex9sDyPDTqcxVtGXMf4yIkeKve7wqlf24eyWRLrW4Bq4aSf82Fq/ISzdhBJm
	 PHHuJafAQj61Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDFDC369D3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583739357.28829.6607246473256973061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90ec0a7b4227f6f2244212d87164d8e66ccefd9b55b2fb83a80d81f90be871c
Date: Mon, 28 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745837393
