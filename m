Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E26C136354
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727465754; cv=none; b=ocUGPMnUPIicua339Ku92ScC9mjtrVMerGaWAgjXMs2WTeaBop46zEeOZA8WrZTArYVvZgiPeuParjk5y5+NvheIySDN0xzfNtfKqNxS10Ccdb8L+g01tg3GRlsfloPqaA+S6NVKJH7E/nu+7cXf50hRpBTN/OH+pHnSg3pLjKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727465754; c=relaxed/simple;
	bh=hb25+bAFIwGucwSTWkXoonqNS/9uEvhZNoPBso7SBf4=;
	h=To:Subject:From:Message-Id:Date; b=P8TIvqFvKsQFCwi5UG10LWN933rg1/cPnIkfQ/vOkBrauWKPJFTwb2WAG79sS47XbS8iN/0grLZOh96XC0sPzNZ/MivAR7iM4WcqyL21bYUbDiQ4bqfd5SsK2Zl5CCo6T59CjpsVm0/WtQy8TqbNAIGTa7Ac4RvoVFd1QixAXjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGkWcwcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGkWcwcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80AAC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727465753;
	bh=hb25+bAFIwGucwSTWkXoonqNS/9uEvhZNoPBso7SBf4=;
	h=To:Subject:From:Date:From;
	b=tGkWcwcrRNQmGPljy38RWgQB+DwaSUO6JMcoD1glk4313PtlpIJ1XOEN9OvvOZB93
	 S9tbG7aHMQSOf1IL3CFHljQinTE+sIN54qpOelAJTCbnb8qUeXuMLFX4bESwKLsWwU
	 rxmenhEDU71WBmKWzAPxlvQ0cexBHzdbzOefhx2dJPnoRV9JisXxN/AIP+HwTyHdXp
	 Tsft8OWGuiFL2fP9NC6bMKunM2zef/efBC8rnIz91r2E3CNl/UmElMIcNTEV3OeJ4T
	 7mccqyXvzXPK6Cfmjr1PoOCZFoVfs0J+GloiVGVYX5nHrFy/g+FVoszDohI5B91B7l
	 qQP45UnpcbQfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95246CDD1D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746575357.16456.9294132757406387458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3270230212f59a27ffe69bb6aafabf5017b6b6b5361af0be7a70e33a64831789
Date: Fri, 27 Sep 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727465753
