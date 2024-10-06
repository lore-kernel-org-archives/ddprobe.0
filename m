Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2033F159568
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728216954; cv=none; b=HQ+577yFTEiHhYSftSc5olzAPszuU3IKqTKOM1i/u+0AgVM5iQXzrn892I0QRCwgf/vgqxfC1rHx+9ZZOP1eD//kYGVB/kilx0lavjAZJom3RfmNXHjy2AK3shAGNkFOKRCT9HI51P72kBVr/PukLCa+/sw2yq8MIvsG8p+c0bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728216954; c=relaxed/simple;
	bh=T2WYYMqCx2xL8Eqt5OmCXRP9+bKTgYrhMRlgVKjpK0k=;
	h=To:Subject:From:Message-Id:Date; b=tBVpa7j/QLzqNwUt8Ze7XzkpoPyAXmTDXnHlMFTnl8EL35YLuTlvCymwVL4ioubg5MkXcSv9p6y4cF0oHyjUb/bdSNL1qbGn7Q5Lur9qhjyMk9FEsqcRmQ/KB0yEVUoFyhU+isL/ABPw7Wz96iE6UHxNfQB+Zsng+CL9j3rusvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qh80HcrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qh80HcrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74D0C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728216953;
	bh=T2WYYMqCx2xL8Eqt5OmCXRP9+bKTgYrhMRlgVKjpK0k=;
	h=To:Subject:From:Date:From;
	b=qh80HcrJ8g6oTGOU72h2KvkTOmzWbp7tu6nupInG9NqvVFKo3ygFMdTwnYOu3alLQ
	 uahcSgBvgstkQqxhfz0eai1sLD8XeHptFlo3xqGC+KbSY5R/Mow2/uix74aeF6wJrP
	 +rh1FV292XZ/BwVoBCPMSaj/I/wxkiIWvHCdW02rujItwnvhOJo0DonubzXwRjI2Jn
	 NCrIGSR7d5z+f9vQ/vxe4GGqaU4e7j0gyCCQIRKmPYWXkPR1AXjuHyxC2YvLeq2H8B
	 mNVeYXyDzjoURJK5R2NHsluAaVgsp0h+IwwSUfCc0PhImGxEKbYjBh01x7OBkoFH32
	 XO/EygBG2o2rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BF0CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172821695358.1918.3247365007979337602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4957a7e5e956dee0b041e9b96940156aae70f99c16b641fe9cb0ae4be9fcf0f
Date: Sun, 06 Oct 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728216953
