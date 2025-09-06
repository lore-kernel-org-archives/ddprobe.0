Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3069920C038
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757185194; cv=none; b=qoMbxNJfrZIoGC2LERLN424JTGHJ0Iywkj/qFh2X6Kbf4mZMux1nnAoRD9Ha501FjP2wfMIAwFuDy9Qf+hDCGf7iV7Ob0ztKtvK1Z88Rxg3zXfLOjwO0UfotBshMs9gpzQbKoOggtSDfM/yvf2IicXHeAIf4RobW5aI+sqKrt4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757185194; c=relaxed/simple;
	bh=9HJnx6pC0m8R3C5kT7U0VLpwBTIFyDMJK+4oOOnJMWk=;
	h=To:Subject:From:Message-Id:Date; b=NaRHxMYl/NlGoL0szDBJoUSj5KoNvLoUM1Gk/BP0d9qEocqPkiP+xHAN1A5r7/4I/u8lkG/5g24d8wZ4kiseiesWfH833F6fHooz3/qQyK92kpxIbWDe+wzXWnz07v1hKHro5KzfLIgypNZmIVKr5yVprS+nTVUuzR8t2JLHIp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAsvgivc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAsvgivc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BCCC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757185193;
	bh=9HJnx6pC0m8R3C5kT7U0VLpwBTIFyDMJK+4oOOnJMWk=;
	h=To:Subject:From:Date:From;
	b=tAsvgivcDJMSaf21G1l/AOuUzJMt9TOsAA8JmgilVtL0NclyKER0QNxUtIyVeGw45
	 vqysSSCq4Oly1Kn+TdNI/CVrrYySw0InU5ozERkrwuOghaubaoNO8RwdAYhdETNmQ1
	 uNpmVSO6+xwCXDzzlLKCCmrqJXopZjGwAuULotWKXM31ifgSpVDtcPC7k4/yH2Vk/K
	 25SCuGyGUdy8BdwmPK8a8yPN8eOKTrFY+WhNh1diIKIoXGTA1uybYy9yP/pT+dGK6S
	 jr5Agci5jTdux3XuLfcSimCvW8Cob5vAY2HZQSHKROKcBbFDIUeKOZnuo3lK19w6Sy
	 w3HqMbjc/uLYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EEDCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718519357.13511.7730570109236243959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 456b942752326cd4f1b7213b841328692723fa54382a0910b7fb32fdbab5619f
Date: Sat, 06 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757185193
