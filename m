Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F92734DB4A
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779833554; cv=none; b=soPb9hIsqpTlCCeozcwUytRGOreBV/6WXnJafox8kQdOKFIUuqK1jKwVl96cOdzRRaurYo6nTm933yTxblWQkNzM3ze82UDaiXTHL5mS08r5DuI4anZNLbxF31ka7RcOESTg0SZ5/2apF8dC9Sg9cLfJcF4XXM4vFmzMCe0ZnMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779833554; c=relaxed/simple;
	bh=BbalnHrUDTaRd+hBCH9eyjbEJ8gKJWQt8SGLtQs+V8s=;
	h=To:Subject:From:Message-Id:Date; b=IRaeP2Jr2BZPElnZHdtsC5isKnSudytSPWCcF0eSwT916fyaxOLyFFcLYTRE9U/jA6vQNShY11zgxGL5bAo1hFk7RU4eUoGm+S5MTnClXphI2l6ETtrqD56t08H5+Uoq2YYnzhJXHyUgRSzg4wbfJOiVUi6LGzu5CiAhuCrw4TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCAdFwPM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCAdFwPM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C256BC2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779833553;
	bh=BbalnHrUDTaRd+hBCH9eyjbEJ8gKJWQt8SGLtQs+V8s=;
	h=To:Subject:From:Date:From;
	b=vCAdFwPMa2Uzwabj9WaodOjKm0FRlHcvMobgdARUj1RMqpD03vTT6Jv3Knnd7TwG7
	 Sndh/GRxralMNSL9fi1gtc8cJdfkMej3QHG5Mf7qa4TzdtKXlNM+3mwGBatNhK2+Mm
	 Xyl7gPDHyIGoXkkWTcrsNaJ91LZ0O/TD1WkojMzZdtCL3HXvIbowO2qNxL2CzMXcN3
	 judZh2tTuPM5NpdYH0GcIs+OXbj62MCz1kddGP2NNoHsGo4oXI7uWFxZrWh1XL2Ida
	 xWaO1VCKtBtfoutYemgXhuf96RpNZPhj2Phc4ht/1xKcH8xUFf9PwCqj9Y24TLfQLI
	 Mi7FawFHgdHgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C1CCD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983355368.18991.7244881787113817734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f059c97f2e814c73bf55106312675ed34b09be769be9ff99100c33e41df7d0a
Date: Tue, 26 May 2026 22:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779833553
