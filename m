Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119B64501B
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 21:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716068543; cv=none; b=hk9Yzewn7qbz0h+w0w//YszpomPJciG+t2I53lOUXOgq2elVrmHNU0sjBFjClRudJ4krCHTeV80P/1r/0JvMRAfCiw1HlFmME4fW6x3GLbZOg9QqwDSlZqRK85Yg7VNRuUW7mX6USurwMrquWVdVYaT3Wm5nOh8sTZ94n6PTZqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716068543; c=relaxed/simple;
	bh=EEz1MUS7sFxCou1SwfirDa3yCULW9g7nARVWZ6FeIWE=;
	h=To:Subject:From:Message-Id:Date; b=vEN21agRxGKVrnD0tBOqOc54H2gz2cPAt9rVloSb9vpghwY7Ii3o9mErYdR0n+OeydlyA3emc7lGdGxiZTST0wMCrdcycsPpjX3KihVbVIr1Y54Oke/yqh/WjMYZFaYIRC0tKRKx8bD1Q/UZmADgE1AjswtYz68FO/3445ZIVC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQlgIpMC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQlgIpMC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA03DC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716068542;
	bh=EEz1MUS7sFxCou1SwfirDa3yCULW9g7nARVWZ6FeIWE=;
	h=To:Subject:From:Date:From;
	b=XQlgIpMCPRCz3789SKy/mbeGln35yFyYBaimmJxZjM96ZSp2ApNZgiANKbr8IdnZL
	 tShwLwu0O9ovkn+u8lj5ZBLmGezOFu8rnNtik+wtvbop1xVpiGD7GQCIvgFD4ykCXm
	 +Opm6ndc382JH68mCH9q7d21Fq42DPBfjO8gMacS4xs2ceLwOv2OfGdBw/o/SXOmzl
	 oTZYyGeFokr0M17OqLHyEngCYeJWalSWciQ3ZW5Mqxrufo6oFB+E9MUx39nqisSzIT
	 2YYR3fU9fIfJ9l9oiPrwusvgVsgEEEpGDv7JsZJW7H7BsMKw9qYvWVQ26+hGzO0Us6
	 cnuBu9EMg3EPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CE2C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171606854277.31511.17678825383823019749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb71dd445642d7f8cbf1198ff8a62224100393c6dd78518abf337b0af2ce446
Date: Sat, 18 May 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716068542
