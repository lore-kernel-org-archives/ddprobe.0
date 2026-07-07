Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EF2288C2F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783416514; cv=none; b=KxqTAmmLmcaMI5Guffr6XdNPnBNozTNwLfcXt4OlmXZaFE4wNYC8X2YgjNHrivOTdQtE0RUk8uTGpNcy7Y0EmSO6x5uS7dNi9WXOGZDwHesl7qpmx+bT//q/cum82G+7MGaFacsHQr0cACxjM41LWnA8o04H33PuQSHte1v/6KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783416514; c=relaxed/simple;
	bh=ymPhV6V3lQj86rUYWk7+xiwYkyJJNGNj6CQ/CJXZVbI=;
	h=To:Subject:From:Message-Id:Date; b=k9WArb2zuvYOphC/hwflfjRNK+QFwDiwjb+oGfcapqCawF2SKgcDWF7kywCatRztzCovs2z8DNWTexBjZL9hSqUIvqa3ayLCGyucT0HfQ+2NRK1sxkPWiXTPOwLraAVa5Weg6dswX2eRMVQX3R7YKebVbVKqDOomkjMGv5LOLck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2HynZgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2HynZgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E333AC2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783416513;
	bh=ymPhV6V3lQj86rUYWk7+xiwYkyJJNGNj6CQ/CJXZVbI=;
	h=To:Subject:From:Date:From;
	b=q2HynZgPQBINo5JneCkq5p24OQf1rY2kgm4cB7oQa5R80xOaiyrVDYN+3JYOp6gUP
	 TTu4WBdMle4EqEXBq5sQGMRbN3WTRMIBm7BMpGIh2IzC1A2iswGGtYNLKqR3Qtix8h
	 KO4hDgzaBYpMvNJit33VB6mGFFLXoKAojfj/957vXnHTlmPBOoZua/r2+tjisbOD5S
	 KSvedXLpGHYfycui5OZwI2YlwuIHRd4O9xCzmvHC+8o4au8lemEsSEgL7Nzu/uebAt
	 RK05vwm+TIRXkuwPqi7DfHXI8b+Z+IHxwQZoG2nmCrSCXaknZe3fMkUNTd9Ymwi7gh
	 svoyawY/OhE7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9718C44500
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341651374.29351.2342815856815930580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc6d6b38cf0d51ba4408d3a5e9fb12d56beea38bcc8b8f272175f02a08f32e8
Date: Tue, 07 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783416513
