Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310293921DB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786624234; cv=none; b=iPwVdpOL4g8AFe9beMqiDHqmN4sKLZYmDNhTGiCg4YB2bLoShRTUsC2FxdyMmw8iZu5HTfTzSJHE2PBMo9F6/OS3W/eJKjeOaEuRIP4LNIZIolj0cwTaO7khsM0/TUF5mcG7oHvkZleZtNHohAlWVHmiOwiKzGlVcuw37rSUN2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786624234; c=relaxed/simple;
	bh=9SXg5o9pRXctK6lvK9W7TpaFB/zqNqdYSwfQcyxjoFY=;
	h=To:Subject:From:Message-Id:Date; b=VYYBiEdrxdVwr5JfMLbmAFq72lCKywFmFI1XSyIIY0ggewXbOHj4MEja/zXj8gxYzw0Q7grX64jjBwh/e45lLIa5tI0sDJjj8r+RYFBbFe4v741AmzPApCxeJCmzomfnK7KUDSJgUAOemMLJE/U3+zuiprWVIGUdjgQoqOSPjfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhbF5CQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhbF5CQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAAAC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786624233;
	bh=9SXg5o9pRXctK6lvK9W7TpaFB/zqNqdYSwfQcyxjoFY=;
	h=To:Subject:From:Date:From;
	b=FhbF5CQRCP6065vvC5jAyivk5V9SNUKmORWLj6f0h7dsZ567t02wPUgyGGoyKfUYL
	 wA7m8y6/KrwSzFVY88+KGPwL2MO1BD6dXzCgv8jFd2elYI8Iz2a+GKnimwr+M0YE8e
	 g4DsWe9qesHSbcfliH+yVC/1o1/r+MuAnB0tUPRqOxPI7wkU38LJMo0F1Mzdi7gWw+
	 lFt5LQFDDKBaAIsYeYRS/hK4HCDXLjZxwGdxQP9vIr/opYfHF6EQFrtEdm80t8enxp
	 6CJh7HcoP20Gbor7B78rrTXMUilysaCR7A94J1jG0tOCKJd7M1A1d+QMl/luOUl143
	 zboij4HWMsawQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C51C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662423368.13451.16279226799427101493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fafc34f80538e0e5135dda9b2db12c2968df2d56c09f890ea15719c6499c854d
Date: Thu, 13 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786624233
