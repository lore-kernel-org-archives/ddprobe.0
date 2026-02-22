Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE581E487
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771764293; cv=none; b=VtYbfeKgwpw/RxLKJu2vYZztnpv5TStGYIoC6cJsDPIhUUwYf5z46WkXlStLTecC7PtpJa/pmLiFf5X3r2l+t314Aa/Rpm5/sW8RlsCL+NAjt5nisNAvT6S8A8/MxyesQxCKGdKFUNawojezTfnyoFyQ2afBJvTd/2VuKwoxfYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771764293; c=relaxed/simple;
	bh=WYP1TdqHuRPvhW2v6tJJ75Reo4HRhLQQgjb1Z4UIuMM=;
	h=To:Subject:From:Message-Id:Date; b=tCxm8EyZX+B/WTtSlC1Z39dvu/nmvH/yFoQ9f3kNyP1Lf/LKBcJR+01fgCPnjiAj6Kbe7pfZoP+oe3ax4XbNPBfpjn5LSnvTA5t8zlIHslzz7gANWdqbHPpTdFs3xf+PYmKal1MagXy79aWwhE3KcQ8owuAjb0g13igylsUTdl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDFraceE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDFraceE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A469BC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771764293;
	bh=WYP1TdqHuRPvhW2v6tJJ75Reo4HRhLQQgjb1Z4UIuMM=;
	h=To:Subject:From:Date:From;
	b=YDFraceERdHb7DK4uMw5kjG3krCrXjZFAuPX8T2CZ1f3amw7XoE/mOL+4zQWNWvtx
	 gOMebYUkMSgbZnm6iruLFPaeBhJttNyCt9Q9e0+PDtDz9OkfONtWekCR/ZusLFK8/W
	 0yintFbyngJmdA4N4YdX9Z8GGMsCTYWqXSRIe5Q3vakByWzvBd5qWPhPY5g4E2M4D6
	 +YKVg1XzSXSw3jzIOijdxPAib3T4dhqIju/V/VIELmi88hC4o0zey0gLPZ/MDqI+EY
	 SqhafHPsw4eO0IiiiCSUALKBuQU4SafLntjudM0BQnW1+YkzoYe/4m10+0sIhrXP9N
	 dalTLRMn1qEIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C3DC624D8
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176429358.26341.14356366586060478024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90682571d4b30e9f47ae7f478cc4281a546dd34a16ce57cc9df91b35327e62f0
Date: Sun, 22 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771764293
