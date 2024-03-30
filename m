Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7AA1C0DFC
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711785497; cv=none; b=SsNEXoe3rVKKW8zRY0N7s7QIPXVRzZQ00mtuPMbpXAgalF5oW85z1YUzoBMTmgEJdHlDikVTHULDsVJEfj++5+ED8QOmIriW3WTKOSSRDPd2BvPmcABxWFdYofbv+/PanYYNFc0i8lXk9f1r47Y0ER9GmErgAhaawhfrkfcu3UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711785497; c=relaxed/simple;
	bh=JRKH8Jqkxnb3V4hrXYxcXPjk+qf+cQPWC1I/Tsi8N1c=;
	h=To:Subject:From:Message-Id:Date; b=tFrPOqC0VvHdkbtAJZOnd+KGl25Sb0YQdMENluGWSsrROLtsh/4FfEqVxbj3avpmD9aVK6x4hX8EYHvcQwvVqXutxAxc4QOgnAMKKEzY/VWFHz5TdAOvPYRNhNIYXc3+xFCsKQ+6kBmxIV/LZQEuEgojHj2FaS54n8lEORxT4UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFrdl5N1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFrdl5N1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C19C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711785496;
	bh=JRKH8Jqkxnb3V4hrXYxcXPjk+qf+cQPWC1I/Tsi8N1c=;
	h=To:Subject:From:Date:From;
	b=ZFrdl5N1s441NBWboi7tthGfV4s69Q7RohhkqO/WWgOaTvZ4K+0q2imWybVuicmNj
	 PPDL7OU4zhiNJpbPvG/etZTc962aUTcgtbeTzIco7LhtPy/oQXhOcvZWp5moUZDxmK
	 4I5rA+DQK9tSA6PEMMXyb31K0pfZJcbxzsIBSu85d9/cNIQNVdUbRKNbJJWdfA7zwD
	 +tzdmavWPlaVwkTvh6c7hTJ8b/HbrOE098KKoyWm2n7ixJQgI2Cw3+P7K7d+IBggaa
	 9rqxi31uVcH7mWTNQDp4hw/V2BbcyKY8A1AxQzaSAWqKK3Ss7Ok0SD5HyZmMJdYYA9
	 P5FPyvR6ka/5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A888C47DD9
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171178549638.23736.9366136484941575311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45939851b74d326e6733eda3776708bc1290d29a47f308a12329df5057abc2cb
Date: Sat, 30 Mar 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711785496
