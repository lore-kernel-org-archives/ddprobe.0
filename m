Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DD24A01
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754870994; cv=none; b=r9AxV8rgEj+83tD5HlyZqEyGL9A4I4XRxlocB4Dwhx+whUXqiRCFtCeBaEHlfZUtw2FxegFlL0coHjhKU0Ws/4w3lmiQl2zJIcx8v07jCTyKoegYXHuCPxpo1X99BOiz1rHq4liv8RBIYOe9YcMFU6YGr5cSiIjYjkxSPLWZnnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754870994; c=relaxed/simple;
	bh=h+nCcQuzObVlynZHMO/uKoWHVdA8Y6wlNSOrGoCrzN8=;
	h=To:Subject:From:Message-Id:Date; b=onUvBfiihpY0ENnQ5RYQX6P7P7w71br4NzehQBdsaiCfLoKUMSP86ji9MOPBnqBwpBG0sHPdM/xiDO7h0jAGEFf7l6vbTj1QcFjM2CT1m82R7jpMRw0mH8O6jKjVpJWjVvzY9VUHodKq1jDy/GSCmCpXMudvWomH1EaS10GshCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHtIu26R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHtIu26R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A486AC4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754870993;
	bh=h+nCcQuzObVlynZHMO/uKoWHVdA8Y6wlNSOrGoCrzN8=;
	h=To:Subject:From:Date:From;
	b=pHtIu26R8oG2hC6XKQ6PEd4Hkvw6y0eeqKA7rO5/pffHToOCQ1An9sAN8xTh/j1BN
	 8wo/ELRsYKrv+Brjwb29o2uAB1FahGyQ8gU8A9u6OZq8AKmOHd+8QfpsLtD//S+C4E
	 UPPv/baRElgcGRsR4burDDR9x6nvVFjKx0i3FRVME8Uoqvwuk9/HeLrJNwcEUitlT4
	 bqEGYsRsBXY4jP4EyEJOhkX/6eXLo2LkMJqpWho6ZFON/US/QHJ8AAK2+UYIcLrXlj
	 H8mMOfhB+gj2nG6Nmrbp+jF6UWIIROdB8ZgTray/ELJJptn+Pciy8h+IiOZaY2LLej
	 ZnlYJ+UqZFNKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9393FC87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487099358.25461.9471808540759092930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a1dec2a792598e5181c8ed8afe1db7d7b0c512ae017007a990038a63b6bc48
Date: Mon, 11 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754870993
