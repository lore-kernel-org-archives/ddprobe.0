Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3F51DF75A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780101814; cv=none; b=cIn1GRDSTT+1w6oq5hCe+nvRcU1i+I3T1Lg9yLFem8+fvmDV7aqyuMUPuE40Xiyo/bBr9dcJqlW+5gAprbJ4GkJ35xT2KiS4xahtBlaTL97GOYfgPycFoZN95sc7U73T4nqiXp3PASVA/afEcEC8qCplZBlLJa6xfcD+4lUj/48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780101814; c=relaxed/simple;
	bh=DCXOPrCf281PYiyDCCmmAeWU669lfrNERNx4RLkJpjk=;
	h=To:Subject:From:Message-Id:Date; b=MhNdF8QW+jxSfKJoq4LD39IYum4pzwdv9WU2A04XqJwhWLNVClVz+FzAB+6GsZpqwOzTt8Myvnw3HXDhbHmKyQkN3KNmjfqY42GPQt3SRvWwPeqhcCPOuFe/jdk5pLZjAdBuXiNg5D14pfcAZkejE3nUP5WNBx84H5o+VGhWmx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJJ3Fog8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJJ3Fog8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0D9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780101813;
	bh=DCXOPrCf281PYiyDCCmmAeWU669lfrNERNx4RLkJpjk=;
	h=To:Subject:From:Date:From;
	b=WJJ3Fog87atmhO9SjMz166XxL1CSQc9NaazPe85L3VbuHo03AHrOb/5JpL7b6oxeS
	 vMh38lMZ8xrKubiOX53i2dKwXB0ZZUHz96eGVZxhjAvNr0/4tJlUt1WFlj8+IN2dRO
	 qL2WgyKKpXrgyk0346LFa/+B79yq5aL5ymMEn49DZCiGopOhRugljDIlRo2n2GRpMy
	 tjkVHbISDt2twEx2peQfbMUwt/joJNl/KIy7WVt/9fYcl9YOTydg7FuqfT2GejZgur
	 tkAq/2mAz6IXXpa4dOcaJW4DQtY7uTCTJ3LspvScdk/HD7liLh2iPxOWeBV3JRtMOO
	 eW9B3AVfGogjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C62CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010181368.7869.14200913929191905326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9659e94d224e07397c4526388697513fe37063a71da626eaa3948f966667852e
Date: Sat, 30 May 2026 00:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780101813
