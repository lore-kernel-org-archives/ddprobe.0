Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA9413D8B4
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732001754; cv=none; b=h5xwjsB+Uo11fgB+SQGcZD2S7Da4ykP73aCLEoOGOKN9Ya5fh+HYrm+lSg7ezTUpu5cggxyhNZc/0EXfA4VINwPvZ+srIG3j7gZa+VoT34hArToLI/j28no32mYDi60/XXUHbkGk5wn+MFmrYcIsbjEaL+MhWt0FZrRf4toG2qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732001754; c=relaxed/simple;
	bh=VG6mrt9NVwfYCu2yoZuuw859je7R6cS+oeZwEgOGXBg=;
	h=To:Subject:From:Message-Id:Date; b=rM3m9MnJ6qsjm0iT/pGcfhiFeQw2BczuQ/R6ben0iBBXhwH2ot+drhvQf0uXn83u3RagPf5jSo1KEk/YdlSXpoWMpAkHv3NzLLRY5Jsm2ZTUWLZCEtyt/TeFIkoGopQu6BUK8RA9hb1vJYL5grCES0OSTsQmjtl28aDRlC+sgX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J++40BVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J++40BVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EE6C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732001753;
	bh=VG6mrt9NVwfYCu2yoZuuw859je7R6cS+oeZwEgOGXBg=;
	h=To:Subject:From:Date:From;
	b=J++40BVm8JCWou2esk0VV9y14AgOf0uus65HxENnypcFlhyP7MgocpVNerw8EcVWk
	 A1wGP+8/eaT8vwaOyAICLyUH1a72TDVZbp/h6egBdUmCsMGFJU8to88iR4M+O2SU8+
	 UvJChqkGFXcOwz4FbttCno4Z3Xe821D8xFUUXafmjK6/N4gClVVMB1NGju97mkbdm9
	 FWqxUlO1aPHId2j8iJQrHmS95vAfn0EvzDG4H3rsFMhvtbQYtUPpr3OSxkmIswvUTw
	 4JEvW/NAJvEFubzDG2M75M7E9NjvTxusN3xPRTD679oksxvmenX6kvPz9K86ErC6eA
	 g1Q7ITW0yH9DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F834D60074
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173200175363.6211.17169652480881762404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564abc0f58eda78423553e6a0c257666f983fab77ae8b0812cb54a0efbc51ab0
Date: Tue, 19 Nov 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732001753
