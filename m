Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4BF48C8A3
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789046434; cv=none; b=TAqtMkxIJuIiIri1BFCX5XTNTgW6SOGb8DcLBgiiGrXyzIjdhscaeU4jg+T6wD/FYBD9MBek0+e8PJqC4kB6rHPYjVShmSovkkmovnYmUBD2h+RF+7h+sx/Lw91ubAkxk33P+dlzWg5KXO18ytwnxHUio8u0gc1AdcHRlqQl4e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789046434; c=relaxed/simple;
	bh=i0R85ZT03i3HeLOiutbujlktLx7gosfC2lZ0Y6bbVFQ=;
	h=To:Subject:From:Message-Id:Date; b=MGqMZa+o3907Q3npvERh2Wshj2m9svvBObGqHGSerbxzM/J3q7IAeC7aqzvUsGXfuTHxaDuxxqsJLwCWAluzN6vNoTx94JPwMg/GAH9zYadQnljdXEVY6PBw5GcvMDMAe1hrt/bb3+seJxh8FJP8yawLBXHlzSaWadbMXd7qNOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgMGT1wV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgMGT1wV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A76C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789046433;
	bh=i0R85ZT03i3HeLOiutbujlktLx7gosfC2lZ0Y6bbVFQ=;
	h=To:Subject:From:Date:From;
	b=BgMGT1wVv1GxidAS5I9qQ3ufrLugdVOIS2dRdGVYvvQcy6zikn+EZDR8I3ccYNU1O
	 pP4xZuTR/pP9GKD4JmncPU2XrAyf/7AnScQ4CJ5lfWRxsTuilZ4Zs0y/c2z+tskuLK
	 Q+eTaDQ6hODUJB+qE9D2cD6/+CmGnlDpuaTvNIurBjymLNruOA+50MIcJ2MNgk2WAV
	 CeiOVW+5o0iZN7vZBbJgZv7KnobdV1J5jrsn+NYlJLA2gOguY4H2d9jagk7vOkktJ4
	 YE3phWtq1ad5sEaAHSmVmRSFv2bvmDFsZWpmZ9QR/oOVBOBl8Z+3zwKV1uzAiETH4C
	 moEgwk5B7v4pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0044C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904643371.17646.3113391141409917940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e5545d1ab007adf01cf10c9974e832a3e836027f13b08f73dd470254dcba99
Date: Thu, 10 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789046433
