Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1699B1EEA40
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758078594; cv=none; b=LP0fx+cNTHlvVMFIM1KA6Hk6+2UwzMtc3IFeEj3IQUNaN8zFIjY/LCyS/ERcd3Ty5h4g8frLrveecfdwKdHABErXsJpjRarpS4lQfLfMyEFBYm3XXNBRf8nwTR1q9EgNH3GNDcNdeYBSBoYhZQjyldAPM5E5I6y0aDSuagrb7iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758078594; c=relaxed/simple;
	bh=aIldfAZrz2nMDjpdx4o6PND1z7DwX0X/ifCWDe9StyA=;
	h=To:Subject:From:Message-Id:Date; b=ENGxxBFTDlrCQiGoMADHRqFnlz9e+H7dH6fgvq723EwmFw9jH4Wf0uYIyegjD6lIN4JGMz6v3ID1JOBOf9j2+MB1s3cE2kqYq0GWU67RadvrkbyIlPeJP2Wm80mZjceARdKnucJ+uXAeDfOF412JfcycPgvwltGvymuEgxHVzaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3bUj9e3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3bUj9e3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DC6C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758078593;
	bh=aIldfAZrz2nMDjpdx4o6PND1z7DwX0X/ifCWDe9StyA=;
	h=To:Subject:From:Date:From;
	b=p3bUj9e34tBtTtj+Nhau8QE1+UmieE0MIPg9RIy79OqG44XtGqqmKAcv7v3Zt0Ssy
	 hIdll8wzJrIDd/mA4WLrKTKq7tvSgLbiNqgzk0L7DFXfGttJQ7C5WYaxj0nbVe8mmh
	 bpYlUvw6Dwxqrf0qVdm3Cf/6UIZ5yovQi8CQQxvvqaTfRX5mrdUlzkfKEgaPfYu56F
	 QiAEIQLNDYQ29Fw/OjlfsqP0heqx0Th7u8xSUx4EWRDek7DzttBO/dLKdh8vTzS1U3
	 iSmvBQcp9hTLCS2CUPq7SpgNJxyx8kBchXOJqNfXZg2E7SGOgv1fpdwu14Q+uxXmar
	 dy7iMcsCLLAJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FC3CAC592
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807859357.7720.2179299854622234727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4838a5dbd7f77d825d15a9a8be32f45f760e1a90f31c3d8256182d1bbf5d37ed
Date: Wed, 17 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758078593
