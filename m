Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C30F3FC9
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765753374; cv=none; b=Tj7T2Gmh/ZSnYxDNZFqB6JWVp87AsKZZLvC1QZDbbRt3S2X8SDe80qBwmIoSdwBCm1erNUeI4XkIe9kKV7dwSs2vTaxei5nN6PwGw/G4Ew+R/2lFGPk5OPsNQIW1ssmH94v9seDiNSTPiGUKkwquiQ/sKKILZ+XLV2I7TluOE4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765753374; c=relaxed/simple;
	bh=QkMKsmHhU3vgo75MH7QTFyv2+jJqYtC1j50ReGugY7g=;
	h=To:Subject:From:Message-Id:Date; b=Rz/kuLKPqipytzfLdaU1VCdfR5JT3zQhz4VpWurE0YGfRzH+ltOZ+P9LnRbUoAbtngjeIGz2sGq/y2lFNdcM6Fftibc6xYiI8FjeByVcYjdLYCzYbEI7czrzgBInc8ctZHbfRukOdMIbdwngXMVH0PMsi9pB7hS9MPEt78NdgdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhrSxTWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhrSxTWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97B4C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765753373;
	bh=QkMKsmHhU3vgo75MH7QTFyv2+jJqYtC1j50ReGugY7g=;
	h=To:Subject:From:Date:From;
	b=rhrSxTWiJ/I7iHS/kRVxovcQy0gdB4eufATYY7EWRxvEDdsikukhRdMWHBEman5sa
	 xUEw/Uuhg+XBbBJQXDsmnrLb1qe9FbTu37vpjAc4Xj2IaJcf+FqqGx9G4pO6J2Adqt
	 0V4JPl2xjNRLMjGUdQuF/vahPlOlLtm5L420+odnFM7Q/JI/nrOnKDoM28xitkxTTS
	 kM5o15hEntTMgYrwmwfXjbyQ9vT26iwHRaB85RUiZfUXY+tEMdWq7YhpnAoWU7/S92
	 +ZU7iBKpJf6drkuWe/jgc08Dgy6weYno40OW0cLUGaY6u/Bes66FPXO7Bycv8Sx/EU
	 kI1cOHRriOyHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D95DD5B16E
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575337361.14374.7612589983874029419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59949f95b41df4cfc8e070cbb0c4a065a780056204c91b13e0f156ab703f604e
Date: Sun, 14 Dec 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765753373
