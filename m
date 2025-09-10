Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268811E5219
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757529594; cv=none; b=etspjSN1WNKBxjQdW9s2EvACo977B2o2G1K8WtmcT/RFjVjJ/4ZgyvgGnUvFG1Yh+fcCk2oeUNgfXVrTPyrLq5YYWGk37Xo+dnjhG6NA+kpipWfCZPyKuuNjI7Q6bmgzDl65rmHgbpFoNRS3WvYrDrjyE1RHu8OE2RPDfVNl1FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757529594; c=relaxed/simple;
	bh=ptAp5E6VrtCKCUQQXxVSfzxn8A+1a2r3Em0+skYgUpw=;
	h=To:Subject:From:Message-Id:Date; b=ENcSHIjQCuSaGHTZQQ1yTSXnL8mH41Ygxp7lsg5HzOROmEoSha3JsxSPUXdgTJjDuL4j8VMojPITMyFDdnL7JQx9yfii8gl40eA1nrLFHAGaeQzFE/cucms3T9Fs8hJ/B3Qsi54ndW/ZATtn7g+Q79mWgAX3SDRB22jA6tuq+oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQJiI4GZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQJiI4GZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0753C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757529593;
	bh=ptAp5E6VrtCKCUQQXxVSfzxn8A+1a2r3Em0+skYgUpw=;
	h=To:Subject:From:Date:From;
	b=bQJiI4GZyCUcpCHHcGR+BtxUVK5suWSB+1Rp4+pyrCktX4KjfVv1ybnHiYa6GA11T
	 Gqu7vQqmcXo334Ml2eUoOfPKUc8LTzw5TGXJcWEoMIldWfYdy4ks/xfOvtCbi/6lJI
	 AiJZJ606SX54i6pdhgrLGJuE2RtWL69g/JERWM0Seph4GJfVaH4HG9cnHchmzNoZ6O
	 I0ZoG2ME+UEcVs2eF8JkvJB9KsGrEmh0olOUGdXWFfxe6HaWkM3SsKkI20D/ePEYiE
	 MhQ/yFbFWarxFlM0XAvED+Ewl5iYAlt8jHTQBrw2mjIEgn3gpzVeW36DaZ0QTXokWt
	 l3H/HFh+MvMag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA05CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752959357.12112.14107379061208269224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7c9ac32d599379436cbb7f886ea1c22d05bb68920b598eaffa6b8a3b7b4481
Date: Wed, 10 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757529593
