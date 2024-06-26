Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F8933DD
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 09:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719395003; cv=none; b=ToNz3fUlYbJasl/by9DA/CQIyJVeB6I5cLMOOyUmPf7I1Hs34MNabDaH0+Lm/w9/5FcYwcyGG4DVtA5HsBX4RU/gMctrTkg+l+RUbupThYROIAzRGgN/ZcID2LqOH7kHeb5G4Z4HZXfb2rj5V0xSGoDOxwPgxynRlyiKrof024A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719395003; c=relaxed/simple;
	bh=lhqK5aMKAqFhVhKcKW/LVzvAKjVzcBKOlqH6GNry+6M=;
	h=To:Subject:From:Message-Id:Date; b=EAw5KwWVcwEXQREJs2A7WlY2IyC6BbW9rF5WyhRnvjE5rQUxaT7QWAlP7pwE6NupNQzxRTBMKeNps5xFMXmcgGoz5XzHootvRCdlUBQNyFBiYF/BEKSAC+9MHpctF6DB1kU4cdW+M1oZrVkP+75eUXo48UTV+euC6U051mKLJrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nlog+MQa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nlog+MQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72F2C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 09:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719395002;
	bh=lhqK5aMKAqFhVhKcKW/LVzvAKjVzcBKOlqH6GNry+6M=;
	h=To:Subject:From:Date:From;
	b=Nlog+MQa0Cw3DZPdEUxL49FIn2C2dLTcJ5n8CN8ykfdo0pt34g8XrQvKAfqCDog+c
	 /imIIA3Rin0ACB/L5c0RvIPqrxqUevQZ6JCqPCURC+OjefUGaFfwMzyc/UJgy1BIsF
	 5dW3/RT1AJEVhpxQbq2Nbhae4FbrHaKjYCI+n64DwElT1EXZ33dcW5sBu2vFsa7ayG
	 j9gfPIdTNJFJOU+C6ikG7yC2qbUdS7YmBDdxxSSUQcAyJYFrDl3X16WpvR7btes1CY
	 LXUphoEb8Sgwx/vxcOW5hwXiyeTsGsNwLCGHZd/ZnPWtFrGOqs8/GRS+gfZtC5WdXw
	 gji2eL8htJ0IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C039FC30653
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 09:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171939500277.14257.8390105018790985323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67f4add253accb4b30328dd37f398965f65214cb471b9ac2bc90e4865726652
Date: Wed, 26 Jun 2024 09:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719395002
