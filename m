Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D6C500972
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768865634; cv=none; b=Ss3UN5DT1M1t33f9JG/mujBRIV4fbYsWhqOFFOwhbqrg90hQDLQ6QD50eLqrsoN9nnkTbWJ3fPPmDroZyeyosAOQKlFBTbkkWH/i8a9wWNDM4VszriK3CpnYmB4OS6CZHiLrHp4PtqM8dxk70fhEgTS0HkXr+AuEc2JSm8yIQps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768865634; c=relaxed/simple;
	bh=+i2Mc8TkPhp01L7X5wBlh7MKASFpMzHfAkLjVIrndhM=;
	h=To:Subject:From:Message-Id:Date; b=W9vNmE4/6/TanYlQHuTX+gFs3p2AabtVXJXFeXWYvKC2UuooZ7cQPtI6e9kxScbV4GW3F7//KSm7bZgDLc2WWNnDoCEN27ozdAQJ21PcsehLERCiXGeRZZPD5D6AuM2WkGoIxjM5as0NhFuMpzH1wm2VQlfTwF6hjVYYEXrFi8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSQUe/KY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSQUe/KY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A422AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768865633;
	bh=+i2Mc8TkPhp01L7X5wBlh7MKASFpMzHfAkLjVIrndhM=;
	h=To:Subject:From:Date:From;
	b=PSQUe/KYw6hpWOn5UmrMxJOp+p+0B979YfZz/T/2p7+7yfa8R3lYTMwIIMzNu69Vx
	 r4JdGU9NypowsAOyHqoKPUCmB2Y+0u8nqDGZ4/OvvQ8vbuL2P0+G8uDa2HmCcBpY3o
	 402LkQSoTFtg3BDPCUEuPNTnoqfmsUJhCfxKj5vXjatUnvLUgQwG7FzViS11rCHXQf
	 oxdZuSXRjrsR7QrMLitfc1hrpjIyux7Ipka2TKpIPyAyLh8z5TDN3JRQIdRy1mpeiq
	 81c7iGCQNTn4X+7dxpVSG9uwLQkyifE9Gr3o1c3lpe6e3VPAWPQXZA5OJG3U732DB4
	 s2aJMOV7RxiSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA5D2ECF6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886563358.11626.4092214158220631861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b62c378fbbe48b51fb00477651bc166d697aa939eea4fa7731915bc0ce9f6e9
Date: Mon, 19 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768865633
