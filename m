Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA951EB39
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714315343; cv=none; b=TlsNCtmAsu2H6SQvFVdlJA8yj7qOApqai7daRQQ9/QZaZORpdd7gzjFn0BqeU9A03+DGyaV42NMMxDmfmbvQ7PIpGqgAHVzxDlldS7vvsTMkBaaVFbsUgwlSw/3n2vVYZ8Y9vdp3UyQoQeWAZa028jLCDeRFQKN1Ks2LmncL/tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714315343; c=relaxed/simple;
	bh=/RDUWrM8ORR/Lv9V+XUwpNYdb8rvfeWH/kQ3jsAiMdk=;
	h=To:Subject:From:Message-Id:Date; b=SFhy/gb05ACeqDYZHPk9YPMDIxR+5RFBZXjzlzXQdOZjpABPeoWvavR0am6TlYSRqPwYIA3JedhaqAjXPlYa1ofyAf6P0ujld2nudwDF+r9gsO0xnNwv7F7IqpmLu/p4mK07dzStE9O8FXmnye+44+Hf1XatKloWDbhaM4bAdD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mofcLRoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mofcLRoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D511DC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714315342;
	bh=/RDUWrM8ORR/Lv9V+XUwpNYdb8rvfeWH/kQ3jsAiMdk=;
	h=To:Subject:From:Date:From;
	b=mofcLRoVVUxgu4AVAr7gT+Nvbad0VKwRZns/tZAxZleBOanfepKyuOqiUCrHNFNv+
	 23UJS4aqdNnrPV6W8PurBclMXJKDWVRWebZecWG0wW2vD1LUw5kDX/Evkl8ESzwEhU
	 ehnKvcpO7BXPT7h0WCF6MFSgNOgfKmciDy4dFgsEr4FwKlXvjzIIYDRT3pdoIeDVNX
	 DHiN/2bGmH7EwfVc+YT0KnuRCX7Vk3unfmcQbpG4JCV9GLqIY+B7MhRXyIh4OVTP7i
	 m5zCQsudyBCoZwhLaKIbExJsL/oMGvwew1A3IQ0wUag6iQyeKAAm0C/dV/vX+apXJD
	 +2Feg9ooSNGMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4DDC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171431534277.12773.16450492509534786625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ca1a8a52a1d72e242721b4d528c6517343cccb935da2206d4a0d90b022303c
Date: Sun, 28 Apr 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714315342
