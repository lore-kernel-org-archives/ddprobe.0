Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534B2127E2D
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 06:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716532403; cv=none; b=jgz1UaZIKui0j9Eq3MoTDxrHGHsL+gBPpjBAlNzLCacvw7ZmRcBTfW9VzMotIkiZuTKlheFw51RsSiNHeqVhatzlIsu7iVOHh88UpiDxDB1W0bE2ZS0//+dXQ7AWTVszMN6slWnInG0TjXRg3gAiTsyxLF6x5/RNdiqZFZN3Bdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716532403; c=relaxed/simple;
	bh=Jpd/of9W6+1ey/AYWkn+z5mvkg7vnS/YLU9ScnDDsXM=;
	h=To:Subject:From:Message-Id:Date; b=H1tXk4WcpTuKqqNdyy8mwpXc8uP+Dg2p20g0T1tcKAFtpHl77glrZD5n7NBstsr25kNbHU46rPVvwc0RNYxazlWWWbcGGwHYGDbBTzWOO9aBkXvtcgV6LEXPkg7VHT8OF63iHTiD28OJYGZoJruJo9ZATYwm5XYjqZhPO/1ff8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bz1j7XRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bz1j7XRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F17C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 06:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716532402;
	bh=Jpd/of9W6+1ey/AYWkn+z5mvkg7vnS/YLU9ScnDDsXM=;
	h=To:Subject:From:Date:From;
	b=bz1j7XRdy17rIHijOP6eJH22Fa6r9TVbLAlIEO7CjRXicpaUv1PBst8WTfIE4iDfV
	 9puv4f55PHxuLgaep/DY6rhPCEhZDUnsvTAImn01r8IC1m9MrR4CsxaTxJAcrONlhE
	 kyi+zXWHhTUaMvdoDzJP1/mrq7c2i2KgQ/jqZ5uhRFHc/FAZFM7SA4U9rI8Qe2VUgd
	 lvzFqcSVcfgsCVfa7IbLpC5XrOlCjW1cu5OtaA2xmzs5utqxDTIHMQCMFfo22wPwW1
	 +I6eWbtKhdnhnzS2/QVF63eC+0h+C3zuIPj0pd046HzmJfHV3561NhRpt/Z84drMK+
	 aYm9r7GhkRpBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2723C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 06:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171653240278.12847.9729956788571551697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52e867442456103e529c74266c244ddb7e26b0d81ba61b068afc0a67b457c7d
Date: Fri, 24 May 2024 06:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716532402
