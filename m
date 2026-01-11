Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2621AF507
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768105434; cv=none; b=LGcR5d3tqCDi3YrtdFdDI8qit0XB8rNmcvK926xShy74u98trswamE19tls1C8mOjgdx64qDQLUdnJ/57Ejgp8OpD3uSP1GjyaM3sMdQ65jswVT0PAjcT9OlQeVTd4dNqe8IASCnN7hsqEvUeemMZPiWCSt/x+c93/jmxmRkwpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768105434; c=relaxed/simple;
	bh=G6P5NaUv/btiV7IISx21al1CEbESK6C3iJfn9iVpykM=;
	h=To:Subject:From:Message-Id:Date; b=h+d2J7C3fxKcgbWwiYHvhMv6dUfbxek/DHn9ECPGUKkEZhT95gss5gPeFouoVDdElnNVQ4sdz4mxIPD6RiweZaR03nppgkc/FQsUQL5ZNsoPlOqJhdXD7QUQhKhPtoOD9EzpsM9ny26tnUSqZZqyU1aRPfWRBseDEzZflb0wM14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ue1iPpMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ue1iPpMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09CDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768105433;
	bh=G6P5NaUv/btiV7IISx21al1CEbESK6C3iJfn9iVpykM=;
	h=To:Subject:From:Date:From;
	b=Ue1iPpMtyV5d/t08+nol1ngpjhIRmAsvV38rpmmcOzOCbvEXAAt9jises6MPwLIm9
	 E4scgVl1ZhDTnjPDdRt1go94kFf4aYPT3aSoCnPzEdGRegyjyLTXIt5z9wK2nHQ0WP
	 sr5+j7y7b7cnu0VyV9Qt0TjKOHyb+1kVkc1ympCSthll1DjAn/kA3Lb+WOUld1UjMs
	 JwBcFMTlfERM30C8UD31N6vOY4camv0XCky0YYfpSrpPpNU/cyY9UqdSM1NAj8Yd6Y
	 1tEIm7NUAWna1THE8o5AOGoTRHf3plAPlzeaGMlMkl7ZZELD6c33XdmP7GipOK5ldW
	 qbf/Gla1ey6pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBB4D25030
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810543360.21451.8698471402410805740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d829a147e97fb9b61bb230e108e276dd92e71324728aec4fffaf2d6e1fe33b16
Date: Sun, 11 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768105433
