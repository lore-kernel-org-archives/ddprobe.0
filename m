Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD58361DDC
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789282234; cv=none; b=tPprpWCMYFCJfOQoV70C+mS0tFiSvTvdqiidNeXdJkfBNz67iAB5iN+PKIQN3XffKGuVJfZvD6s2YkdamR34DQO3/Bx59oyj/jyyylMeE+KpRoFoyKRhwR+8rTAP1in0BdHlDHsyBqlFJTuwQg1vNoxxuhj75xMlLlqwUCG5KjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789282234; c=relaxed/simple;
	bh=GL9WVmLHTQuBg82oaUNBNZ7P1lRdiOc6x3LWee00GBM=;
	h=To:Subject:From:Message-Id:Date; b=oOBSSmuJQZebiERyZic5WqW+nCE1e/pR9XOwbxTNVDmiEvGUhYRa5a+prM2VRgMyE5pHlpfYvcImNWUYZasRvofTH1/8XBLCruos5uDQyM3kyYFujITX4b1rjIaTQntb1YYS6TtQ7QPVHeg2VykDba9Cg4XnNJTNlNBbcJBl+Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnxkhBWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnxkhBWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF399C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789282233;
	bh=GL9WVmLHTQuBg82oaUNBNZ7P1lRdiOc6x3LWee00GBM=;
	h=To:Subject:From:Date:From;
	b=QnxkhBWE+kERu+NLkiFNWLM2SmwOeMLQy593Esay3tmVQ4GsAONk6uFE3TAIL9lAp
	 66zIJQMV5TDxnn5JVgGnIVS9EgSytB2b7wZ7qT9qGanbQ9Cg3OxS8ZMHfcml1XMPXf
	 EM/FDzIkWQdtBaeH6cv6IIZVBDglQfdVMLFVyrLqpJhCM4sYDA2PS8gwQEHJlvf5HK
	 KMaRgnX5aPEqR+wkTcYHp8sUFH88CAtzvH70lJ3ohfH3U2YvJamOFf7xly3PTJlY4w
	 wAcVJP5GQL3nvRY3knSdkEOGMii2/opd3RbBz0k4DKCng/MiOwCZqJmKyVxoOnOvn2
	 iLvyWt7bTY58Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE54C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928223368.10636.7039578918105619241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0aef0487984a2383f81c23620cf4b1ee0fdabeafcee0286be16f44ca545b7db
Date: Sun, 13 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789282233
