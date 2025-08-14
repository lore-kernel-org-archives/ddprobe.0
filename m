Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C020259C9C
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755205194; cv=none; b=j4wJd9lDMKrp0QbvtOP+KI8ijp/2uKFGrRM2kYJCXYpG/LVVULOyRiip9FBuqOdzppdhwzsCQa13PMrbAVFDyQlX8u2Ra1btjPIEwWLusDCYMpsS7EV+cDjWQNzNtcsfh3bH/tHHiZYMtivM9iQl1NLgzAiISvjHkqRIE0VvB3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755205194; c=relaxed/simple;
	bh=K5WQc0r1NV5Ens4mcB8CElj8jEE0MYe4cZP+Wml37IQ=;
	h=To:Subject:From:Message-Id:Date; b=Xpc2W23rKWn21tOK9cZimXmeH8cmbqzxoiR5DQy8CCla3aKZiLuLEgZpxAP5P6y7GBGG+bIOMbowoga1a6BGJ2O3HPLbNGg2VmTtrV4JDgfEacbfkwpbYe+ICNNGU6uQdDAtB6VI3q1WxMUWtaijKd5A6gtHXKscgqVLUeojr/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbNZNc+N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbNZNc+N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA8CC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755205193;
	bh=K5WQc0r1NV5Ens4mcB8CElj8jEE0MYe4cZP+Wml37IQ=;
	h=To:Subject:From:Date:From;
	b=AbNZNc+Npy+pIUG3MrnOK0S2NVL8s7dHXr6+rVVGXrF1LwjX2vLAJhprd9JnYBCZk
	 zbXozRW2zFQY3c/jA+M1uMf0P50wEcUcHrER/MrFeXV0YS67W3JpvWPkLwfXCubyTL
	 TtEdTdTGz/8yqH4Cm2eRBp518aXMjdJVu8fMw5bhUnc7evod0hLPtK6rWAuYNscdWn
	 5j/YDcb77riejMklNxM2iUiSUIvxBUfe2DyhWkjYYLRvHlH/3cUEhrF/1vKdzeiEgy
	 dazxeDAP/polguWkNsxvo2XZMJmBPsn+yYtklcu008YY76YTIHO/7c/lLsnkDrWbx+
	 TP5Y7qA+6psiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB61CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520519358.7630.106682042537131777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4feda9db1b87384e7354023fb2c3a18e5e94c79019800bcd6b6c778cb4ccb7fc
Date: Thu, 14 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755205193
