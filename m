Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48368266B46
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775429734; cv=none; b=fpnln4+cIiiXTekucLd6EbuSKiMtn2r6E1+qg6odTHZTd7uE6v6jrhFa/1jgDKEf9b7iA+Ki0PH4xkOOT8nKAJq3v4HLhfkxVS0v5k9e9e4U3uFt7fSkoiwRySo5vaA59udMKYl6DdtdetCWBYQLeacdAOYGJYZdVGyS74ANDQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775429734; c=relaxed/simple;
	bh=8zSQU62i5/HV6JmK4xLBxEcBgECO5zlF0DMDCaQGaXM=;
	h=To:Subject:From:Message-Id:Date; b=NinG5ogq019aTsxyyYdvKYyZNTuj8muGWbyaQy4aXjEjwWs/JfHMvYqRHt+bZCnF++wbBhUH/awCmKCDtRkGCDkqFLp/DceSOhKljQ05osbooa/Jgyie9+xP2XwcYQrPrc0hjwmkREDkdEFx9KHJ9iP7KyLYNVwU0VRLEj4cazA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UASxvKCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UASxvKCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC47C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775429733;
	bh=8zSQU62i5/HV6JmK4xLBxEcBgECO5zlF0DMDCaQGaXM=;
	h=To:Subject:From:Date:From;
	b=UASxvKCp23v1+CLKTW1Bdihxp0S50v6r34gS+FCtjKEXUdLlDc3rmAag0Fq4DjgN1
	 egjWPr2DR1yv2tnHCtymlMgfz2ajAZDmfCGuXSe18TaAal0A8mqk/X22V2oOUfZKAl
	 Bx7OphGnmNTIr1/OJpufV4eBfNym/uzh27Ot6lywJjLGrlhnv1fYhxEi6wt2hQSagR
	 BmoW6DMl7KjVDFlhGStXrWUNbHd/hfNxFqmc0WRcMFZLLIl3sPOq+i67FElez1Ipuh
	 1SJ92f0u2oOfMMlEkxDQKDqi6brrNf3veeoY3Y4Yu+56USDn0XnnSbU5q7hwusNC6/
	 aLNbKP3E7TdLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA543E9D827
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542973369.11143.1583259246366841959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a4a386821ba177580b19bdc96f4967279b6051eb04d031c15373a352a34398a
Date: Sun, 05 Apr 2026 22:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775429733
