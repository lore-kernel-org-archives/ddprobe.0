Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2399A2D3749
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757534995; cv=none; b=SuM5xoxnufCRZWncdnmJVJTs8/KwFp/VxdesixqoyEVT1HY8wUV2/FURoQ+Kd/2Dt6JccqcKtfqrSEds71PahKfEb+6ISYxd7J4+VWTRAsfvwjdTBxlPBbU2G7/iQlWw25U2rlnDLb/U+5BrSQby/Ash52lHO+9FTAc9k/Ea7bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757534995; c=relaxed/simple;
	bh=iXICHZ1zYqKqZf3INAez7RTZMw5WjwrxCU1LLbFI5JA=;
	h=To:Subject:From:Message-Id:Date; b=Smc7VTE1WiiCs2JIpyi6PFqteGxmWTW9HCz6AuadYgpthafj6lqBW2DrciZiHUlHRxWT1IrTsq/ZhTwPpMkAVTV1ghqpzH9hgc5RszMncZuzpPwfphnkQnLlu3JZmloLe579T13v4lIUgr5NGRb+/2opbvx+xVC5oyCl81RaJ3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIDTBHKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIDTBHKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D1CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757534993;
	bh=iXICHZ1zYqKqZf3INAez7RTZMw5WjwrxCU1LLbFI5JA=;
	h=To:Subject:From:Date:From;
	b=EIDTBHKeZ4p6whD2zk9NFYBIZqyhXxLRdI3JI0dNzLUbRLQ9LzQNkSM4Gttayrl7U
	 BzZ61EwkWfOgBBh8lCWVOJkkkoCrhRS88VecacLIe8Ty3Tk9dt2GdHUGrTC9PitIJm
	 DWimyphYXJZTqs/OJMtC6DLadqCG96J+MfGrr2jXgmL8+WFHVOFYOzLO0Ann6zaNvA
	 1mWC4UY8nYWMcLGM2QWsMevuMNvBWcutFKnq2t5qroqCe8ZkVn1S5WsGFrU7UDhikX
	 ic7gCYziQ5GfEyUJ5hMSzHMa38jiE37YbbFK1vLoU0xpAHzLgqGegwKbvpMFdJR4PL
	 I03m8OBkjR5QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D20CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753499358.32319.12332524323067411050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0015fc6a12a76078526136f750ed185edbeebdcbabe2e0b140be08d86f603c4
Date: Wed, 10 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757534993
