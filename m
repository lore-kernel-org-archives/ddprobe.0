Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BB91E5B94
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758036594; cv=none; b=a8AMrwZQuafEsctpnaPiJgMXJbKdfN7orNKFPxuYi4v/bUhObVZpaHcMiO+6CQHSrDQpwVkiNI1MYvCDLMQ5n9L2giu2zIdsNMeXAvGt1ChQSFbDSoQ375Vr9zVjFFaZiyRrK+fOY8sUSAKfC+UVGFa6V0Yf/O8eqliAMYLFOvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758036594; c=relaxed/simple;
	bh=vGAhnbk1zjrZ6vN705rZjPuOeJQWso/hlCTRAMkvE18=;
	h=To:Subject:From:Message-Id:Date; b=COvaEAdULHO66G7WKAbqTRhd8WH1LThT/DtVO/riEjOugf8sOg3QJP0oJcgqTrdgOQZbfKID/70KS5MQO0RUk2W29wBnVC64a3fdolScrQg6gnNwzlQy+kFzow1/ypyBKqVd22EKqVILIRLuHPDUAlItXFW+R5Jystd1xNUTTvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQjNy2bX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQjNy2bX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05A4C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758036593;
	bh=vGAhnbk1zjrZ6vN705rZjPuOeJQWso/hlCTRAMkvE18=;
	h=To:Subject:From:Date:From;
	b=bQjNy2bXbVWqogWKj10OvYhi8oi+gamoF4MzdpXq3UjYiJPUmvoePoxo+S2Re68YP
	 9CRDbFTtKpYEI69lEd/iD1LcjDlzL9F/Sr0PCRmQMVdNeqDUJRIDPwhqRpYyiGbxCR
	 70uDJDr+Yxag9JhSBqrykpmQQpBmBtYUjmBg6Cl27Q4tJotFCgKGj3rVQMonwK36Qe
	 FijiNUVLc8BNGjCXldENxK/+BdEOEvXhHXpoL7WnI/KrzH592Ws8eKsYRnEDs+Zb34
	 6P8shbFEq7zS+uV1k2QHKV6/ul9w4Y471CSN5MWxQzBPXDgSgViGmVunJqxclnPhuT
	 b1s9cUMDcu8cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0A0CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803659357.5457.16854244333199250444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7508f2ba10bacdffdb30d12106251d04d72abc59dc0e56774b7974c606ac0b4
Date: Tue, 16 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758036593
