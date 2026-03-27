Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4752C032E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774626294; cv=none; b=ByU8JGuXg6UetS36EDuiriJ0eXlbA8DSCzFPBHeyptmDTj69+njevXserSdBQbOcDaWDiNhinrxjT9TBZMLmxlVvxAjchF5bC3F1pr9PoL7/voS2upFT334jVStTXziDqIktJ9mnVVUdHTnfyp707LmdlaQs/4DCslNoUj9nz3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774626294; c=relaxed/simple;
	bh=7iUyvNZznwkqOuTC6MQZi7BQjvUEnjbjZIsc1sAP3Dk=;
	h=To:Subject:From:Message-Id:Date; b=FxevWV6e8U13QXIiqPp/WIkZoMazYlJ0dorIaKu+hI3ZWtJa3Eb+4BbrZ7+WVxbD1EGhC8QC+/LDXc8SyrD6tAm5AkxhmNlVV+ZnDhbwevzXW6aNTf1X9MN0IzHFmumbtc/IxM6204G8Nrrgo8xXHnDtEwNsdcdSTJQzpMIQPT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7srAeb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7srAeb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B73C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774626293;
	bh=7iUyvNZznwkqOuTC6MQZi7BQjvUEnjbjZIsc1sAP3Dk=;
	h=To:Subject:From:Date:From;
	b=E7srAeb60gifebhwRfb0jy2Jk2pe1NtUXlcq68HM96MWbpJfCHG9EmwO2At6t9Tdm
	 xezzB4tlp440qlirKPyTQFNrQIE13wyK5vlLD5Vcd7BcZ3bz/IsyB1+/9XXKVcwckZ
	 esCY302gLVPleKf8QBUkHSTBsxFqLIrCPaJe4aPwW0gmo7CiTxPSmupd4L2q5iUoKZ
	 9o8XWyPG/7bxoHDdU9nzLZN9W5piF3yXQsPG0eUvTt/4atHMDFmHpr+zZ08daehwyn
	 HPWsLCKj5SqJTLH40wGBTSk48BEq+NRtQxdcvMuTuwDrwTy1XGYygmRdaXkq0qULm9
	 lyyBoSQqQZPbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A7010F2846
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462629359.1458.18016661967098191650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ce35c51f8cc2a6947531586773aeb0a11299463eae2387edeb9bae9bd5ceed
Date: Fri, 27 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774626293
