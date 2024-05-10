Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16A547F73
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 21:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715377343; cv=none; b=kRIR+YT8sSYXGZzrNNQpILdbWWa6qTQ2hmeHmchj2X1XOvZCDRDMyFZh+hU1zvWNwJOQXZwQEUY7xqzCc3gRpzSt0kdUpmAkyRWL5m19JRWJJ7xwhcdQgPNg9Ih+50uIiD2S0Gt/RkDrKUG6L9fHsySRpB3WIItF0D8cxk7fQm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715377343; c=relaxed/simple;
	bh=QhG9FLuY/qr+9Y6subSNHsuupN0xB4UscNDFofQgoDk=;
	h=To:Subject:From:Message-Id:Date; b=Pjb8Z6IwP/XPcmpdKN0fbiI/impltfStzUf5EPmoHSvSknHW3LIz3UgniCB3fvQ1ZwTns6llLNTxGFBczuuJzvktj0+NTrNj8CtVYHBfqR0On6g9WHC0XmHiizGFbSRoNU2bMIZBxcHPtndzFuoZ5hhuyISgC5R6cbUk2FI40ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMr6xuIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMr6xuIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA258C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715377342;
	bh=QhG9FLuY/qr+9Y6subSNHsuupN0xB4UscNDFofQgoDk=;
	h=To:Subject:From:Date:From;
	b=JMr6xuIj+2ck0exohkrN6i4mZnX9HtOCm8iuVfW1UQDfnRDRpr9nB84qhhJJiWHmg
	 5KSh9TI75ZCMnQY7IMTSJRJ4MW6/GntfaggUyCmyyofm9smu5RnRqzufAlw9wC1W/i
	 vsV02M5vlg3gBZv47cVbwrk6UzqoBVT7z1oCIUNn36BOdKifCWY5DDq4NF5KPyBdiX
	 QVsIeeS9UkSlQSPv0oWEDhaeY5/3YjnKAslZnSKhLGl5qII40Om7bAwOxYPavUwBrI
	 RijugqfLQZh9/P2tiSRNE5YiHeVxC2IhcOq6t5Ndq3xKF1xKvliU9PvPTt0/xrRSom
	 XpsdSH19F6e3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA0A8C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171537734275.10390.13574858822797771368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f683f1056476dcba72a57ad69daab3ea362edf55304c3745d78f2db4b0034887
Date: Fri, 10 May 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715377342
