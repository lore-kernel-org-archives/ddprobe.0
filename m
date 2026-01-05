Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C6C18E025
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767581034; cv=none; b=FNajKoFi7ZxEZsTo4veZukIT0/SySnsierZWs3TRO6yLdm5JWfUdFZhpXDIqtSSufCn3R191dhDk4gp/46M8IPTAkR/Bg49uvvdUCXcXlPF4dO56KOfqW5V8B5Bh4wc7ULgFLRpjHEgHD5yiijufpzXA9FC0QBi1BVUEOjWC2qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767581034; c=relaxed/simple;
	bh=adm7ljZnsRX7Yady4qRiq/fBEopB8rc7a5FAWyhOgcc=;
	h=To:Subject:From:Message-Id:Date; b=dBpF5lY7FZDLOqUNWEmhgm/u28JrTnji0Kk29SO2RjqNWegms+dSa8qlX6v7icILkETYM99Z7tGwYP/29H5EzgGUui/U3f3nWPeREU+6JQCPKXrjZZH6pY3W6oSfLneTFLUF4oojoSyyZMHuMR+UID8Xoa12fEULhcoN2NQIwJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tt8KZe7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tt8KZe7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40ADC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767581033;
	bh=adm7ljZnsRX7Yady4qRiq/fBEopB8rc7a5FAWyhOgcc=;
	h=To:Subject:From:Date:From;
	b=Tt8KZe7apiPkUcOk49SHNoR7d3uIgn9xcZjb2EzUFmKMtmBREZexTE20iTx0YVohO
	 XxiOMYU27VcGeuvTQFxCvTb3vEgWJXMZSwCQRyz5oi0U2sCXKie6nTtmUhzox7y30+
	 LFAdxwSzuXx8cR2L1QxnlfWrJBGo7hJtP9vtN12lvAoPUzrEdZVGUnQFW5P0qcxdPL
	 VdtEHTWbeA1D99Erw1YtfosOgH3NGEgGvhkcVZ9EsVkwC071z7Uq6OUkcjRNlHbtJO
	 6m5D3JRMRP63DF/qHS1QGegD/f/aTZrbb8B0Y1UPAJuYXfUANXMuTPWe9sT9mj9wka
	 2lewWD/t+/0nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91321C2A073
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758103357.31055.13762500058677495928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148972ee3b987a3f97096bac71598713fe862933a7c623e0389847c3f01c320c
Date: Mon, 05 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767581033
