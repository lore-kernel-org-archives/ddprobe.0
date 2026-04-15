Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E114340A7D
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776290854; cv=none; b=k+prMesEGqzOLVEay4QRNKsdKN55DTfU7hZF5f7XrEandeUS1dj4aCLKQ/LKnJwpPuPOUOfkhlYjdtbdZfSnPOL2HamSDawXOrW/Uo849Cx/NO42dQip3SFpFE2tnJFI0PLV/zaPUefRtaCFhA6KfXsCCvQH8W4lrr+XQvJG3EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776290854; c=relaxed/simple;
	bh=FUChEqGxROfccnKVpm/+7a/D9hDkp3FjAEYuGb//3FY=;
	h=To:Subject:From:Message-Id:Date; b=KCtB1Z5gs7QUgn1Lx1fQMcQe683grBFzWtdZldIe1xUI4gpmF4vB77H6Iv2CzG1BiO3fwZPQqE2wJe3QzhRcFCr4psAANrQwIkeCYAxYui3PBpSQnMLopMhixpmfjewRg3P7z7yEjP+5rGEhuIqfXcpaUJfZcREt/73erk794KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwAakzr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwAakzr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2BFC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776290853;
	bh=FUChEqGxROfccnKVpm/+7a/D9hDkp3FjAEYuGb//3FY=;
	h=To:Subject:From:Date:From;
	b=pwAakzr2zzq79+Nz1MnQvl9TNm8b18/aa8iqYrlL6PBzvo6Fu+yVHkTsraDWxtAD4
	 A28iUxS54QUjuB7OGWB5K5rtCW0CFlU1TiYP2cmIZ9mJpfk+VRA0cuExQmQ8h18+Jj
	 O0Sd/Tyz/KK9Gyfsl5vxcOsspc75lL6uAhikl3QQSTh/zIpQKyyd4mv772AicCjfCD
	 xfdaqjl3eGpPRj2+hOkMI+8lsmWHmZeSr8p4EL0uEQFpqU4S0lCCDrRIek4xpmHJrj
	 5+r9qzeXrTuyxVrziJXM1RFCM2cQgJ0K8xbjiL2XQRDpVpVuvDYengoSUosMMrkBFM
	 jR42gQt33qiMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA08F433C5
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629085368.22535.12149335577176485132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b83f84e546effd6c241c686cbe59465f6f583c97315a59e332df0f5be4550b
Date: Wed, 15 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776290853
