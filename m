Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F545567F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720312583; cv=none; b=gv0I4AMvK+tFNaASpbQXplBMKuyoboGnMxnUFjkrOPddmvvsnCeDnSw2DfUqAgRfeyCvJE70ImAm+g8FKSqT8KTxyRSlqNBOOW7TbQggJEl7JPf2Utn4shIq1me37QafSYLG21lo2Xo6j5aqRZGhmgLc8bTv+5RWcFQKdaPIVfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720312583; c=relaxed/simple;
	bh=8qev3XkfYuXWyFDckZQARb1YC9WeHJvmpO3o1POEk8A=;
	h=To:Subject:From:Message-Id:Date; b=V04vBheCM7WWG6XixNSGPgXim12iuQRSlHM0AUQPPCSEtEtFaLZDKHHA/4E/nrbduEhxi7PKYaGch6VlWyrotb7m8P7RdvuXVUcsGLNzLfg849AK++56jwcLKbDURj/6os8efuILqTR3XcdpD+zdTfH1FFIWWPuySScTvkWzrG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auJcv2BC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auJcv2BC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9309C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720312582;
	bh=8qev3XkfYuXWyFDckZQARb1YC9WeHJvmpO3o1POEk8A=;
	h=To:Subject:From:Date:From;
	b=auJcv2BCzt0kC7u7nzRxgI7r1A6WMoUi2Cx/tcLrl/HCLn13K2TyAvUIVoZGpPyX6
	 dBWEg8qz5nXTXK0TZTJQKHJRvLPVlQbwEsKtcdfefJBwnnVbPnIony5zcQR6L6hp5R
	 lmMrMKZJMnbAnGwWdwGBJ9VGyEz2TmlhtVKedo/sRNG7L4ejKkE5940jACQtPPBzCy
	 Y1UkO04A8vr9Rwvqm5hqBgn/fWlmdurFbn1VpzLC9d+7AYHxSubRYHc2Fl26MjdHhY
	 Cu/6ViLzV7XUIQE702yWv3aordMcaJW2Jq/ayPc+Q7v8VVQlja+RhYSNrQg7EI7uSR
	 eCXGd/nQEv/zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08F0C2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031258277.27119.15166693609928915765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e73a37538f499a12f17ac15257112bc5b45545adcf72a33b2f985f491c49ba
Date: Sun, 07 Jul 2024 00:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720312582
