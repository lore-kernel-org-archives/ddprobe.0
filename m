Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4D83806CD
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786083034; cv=none; b=KhW6mrPSKR0lACM3o8Ngy7uxR2thv/YrOag2RcUHYU+5CwEfFEL1oBqBcUI+bT0Z6iYTRzvLyCHmRnDQsjHQIHjTeooY21pUmKhkeBwBi8kd6Yf4ValGplCgsEhlecQrddUrFeEA5l9O4Vhh7Za2qP5mW/SQH946smTuDLkEAIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786083034; c=relaxed/simple;
	bh=HSNHZhCrGnlnFZAdshpPGk3eZPOgnS/ZJNr3AFBP2Mo=;
	h=To:Subject:From:Message-Id:Date; b=fP19xhPFeOCUTDA0RM/EFWgthcx1ArD1oE8+mgO/gqhkEATpbpQEe/J36g7Dl08hAqy7ym6ucbZBYapdVU0Fe3DaIrZhGvIShMwDPIDNxBqHM7WMD/UofvixK+0v9OoT+eZ6Eg3mZuHQRLmLdl0Lh8Xxc5BLd8XHb+IpoU9XvR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptBpgCLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptBpgCLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7BCC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786083033;
	bh=HSNHZhCrGnlnFZAdshpPGk3eZPOgnS/ZJNr3AFBP2Mo=;
	h=To:Subject:From:Date:From;
	b=ptBpgCLjI+U/vKvDkQ1yeAV0u1drfYVinbX2vIHLyOEwZUquaWkK/PHJsTLI5BbTf
	 gugWCdn0LRa7vWVVuLlZnokwaeTyuA6Bo6/TIa1HJYKMu1qtb3Ws4tmzWzktDLCnh0
	 5mqffh8n+jN6coB6hN00QKyPnEGfSuSTOIWABrv4f++ok/pWXTSwl5lEczViDWNZHg
	 pKUtejMyumXLAbbGfDRUjE1aoLobDSVvnQzMWVU95ckMiNXNdwZsAmkvevYUXLnM17
	 EW098/9geh7blrKfqM9ECjxUSvu+1ECgly5PXnHKEeeQJ9PFIs95JEPZicxBCuz/me
	 ecDkpJpCbyvZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AF0C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608303368.32637.8117463046440416817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff772ab12c233a7a31bdac978f06748def68cf7cacd9c2f5d31dc371432e579
Date: Fri, 07 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786083033
