Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6541C37CD53
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788621635; cv=none; b=ZKrc76QQW44r6qRejKnDEjeC+ef8sfTzuM8faM/KEowu2nmXvdEVyicv/3oE/4ihs61b8WSZdpGEfRNlP35hiv5E3FjC4T8FAg+g3ppBly2a8utLT0jegAIrDzvQmsuetPWCaL7jZRcbtiN2A6gkAUXIZez/HqyPvkMZ8eCZXCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788621635; c=relaxed/simple;
	bh=nvpkYL3/TdPhwQJAaeQWHpeio4q+93I2xezKKNatW6w=;
	h=To:Subject:From:Message-Id:Date; b=PgZSSAiAM/40JRigc5NuiRMO64iDgDDvQIzCGl91QP+RBP9Gu+tyzmxRAYlne3Gq0sEligPzBqZhhVv/VcGgsDl1UsGE/QJQ1y2SUQkEtGYCeTRS65d1mjjllX0oN0XWNJzTcsRVd4fNatPAqntEkr5Ol/AfQXqCwF6zWyUVo3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPaleUvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPaleUvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28FFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788621633;
	bh=nvpkYL3/TdPhwQJAaeQWHpeio4q+93I2xezKKNatW6w=;
	h=To:Subject:From:Date:From;
	b=XPaleUvvDCUOwyqOIc3afhypALblZDj0i7DCYr7oUXJcVGh/pV84g/ZMIV/zA+qKD
	 q5z0iOPO0XdRSX7duJnuN/s3nWbbhUmZtuwBeTflXw8QN0ZDj/zt91yEen3qobBfaP
	 m00ltzEDn3GAsAJC4gqtnHEWjrPAIWl/RxRX9AlMcCICUKMMXvEiRo9hy/KJO6ODk5
	 NTx1G1uX5yfXJu8M1AZBlO+vKNVk2/Y4Z72vvwY3JYqEpCfUzKOLpQCZOzZKS/PqEm
	 +aJjfkhInhBSqxt/rkKuRcZXrWqtl3YneNA7qeLfwqXH8QytRaRMQlTKVDIPjb1ufm
	 vWHilaZW2JuBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5A9C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178862163368.29115.12644490735532779962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb42d28690c3e10289095a5589e2580477a2b4fd63c5fa557e518edf4552e78
Date: Sat, 05 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788621633
