Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209FF376A02
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787308836; cv=none; b=r35bTpJtaB/JaA2hIHkJutrU9X+8bER1Xrj0btA/DaFwvNq0wwLO4pYac2VvXdbCBwyVTjURMlVBpGCGc9PbfRtPtBw196Wx1G/ofT/Zpk4CT4xbrV4VnXEe/FnCnbaT1B3aB7wzG55sPE1BdWukKn92sgpN1etPp8wS7YvcTDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787308836; c=relaxed/simple;
	bh=zfwrhu4yMPF1G087pK54WET29n/aXn8g095YcryLuoc=;
	h=To:Subject:From:Message-Id:Date; b=Io3E5OzNfgYKG2t3KqYOdurD119HsQ0yb5nk5UU6c1f4a7xFq3RbtYeluhVmR6jWVFQN9plRSFAJHz5UIk/ljBT18aBer6LPpLtIpW7pEfTslP4XnFNBfEsyAdaNaeZZSLqJSBxTpALBmYyn6o0rZAMjqY46lRnaz4rKLCjK0Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DisUg4P3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DisUg4P3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 084F5C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787308834;
	bh=zfwrhu4yMPF1G087pK54WET29n/aXn8g095YcryLuoc=;
	h=To:Subject:From:Date:From;
	b=DisUg4P3bbq2miECzrruRP43VMn6YMK5WCosbbxr9qAADAZtBmz8dsC0BuE48TcK5
	 aEoHiqW5gLYJd3uy9v1dDDQs/Mj9BGhcGZusGmzE8koWIdNlOhE8vWJtdRP6FOGDVQ
	 Jith6P1SJPzUYoTyyBrYUIR/XlFk9eQ40AV9rZ+8DQiy/2MDCG3SAJ0T+TTICAhOxH
	 r5I0lpPyi8OTQYXr/+MvR0D8m93TxacszD9nGCTqugBv6cO9tCwy+w2t+agilpqixl
	 KBuJg7saWm8oAOGuFzvUAln/PfFKkAFBA3FlmJU0xa6OVYH9KLCc7Z6fij0hH1aGu5
	 CGWXBEqnUZwuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D071EC5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730883381.5698.3322409310362604392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a9dcd67dc96e7cd71c2815262e4ae3be567f135a7193cca563c21a65df2626
Date: Fri, 21 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787308833
