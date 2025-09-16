Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3003B32D5B6
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758045594; cv=none; b=K3JXo2Knxqxh+FMoLAUhAhx/GP+VcWzrLNMygLqlath1tIBbPclTEmxRgV7oaJYfKHhFt8kucCzN8SHaTqNfVIhyZdmAiqkEHAVjSZYvnQ+3ydHQ0znVU+fl3cp0oZS38oiI7ZNTbpTyBynETY9UfyCuePrgsT7xOcxgqwkUeYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758045594; c=relaxed/simple;
	bh=Pc+vmTlYzaNuxEG8VrEiykWPwSlG45ZMPphkJg6k9do=;
	h=To:Subject:From:Message-Id:Date; b=sVsFoy/LxKVx9ofnT29lYvYKCxjBBZCMm6WttI5uhyhmHB9LIrZPHQKW92pr1i6h13bkxgWhe+vP3G9q37qPVo98iRIFb6YmfykW/TAPzm5sb6xcM5G2GbMGJbzH7OyE5ge0fKg+uGlbeo/ETcPOTPmlbfHVwtOl797prA8lduw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYh5uerF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYh5uerF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2022C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758045593;
	bh=Pc+vmTlYzaNuxEG8VrEiykWPwSlG45ZMPphkJg6k9do=;
	h=To:Subject:From:Date:From;
	b=rYh5uerFkRRQ1byCIGPHiGzBLOSv5bjwZVw6/Drk3KgoDniwqpG89SRMWoAB99W3O
	 mVZpZhAZqt5c74mCp6f0pq7OdgWJVYQrEPsHUfk/RPbTMPWuUyVBOaf5yKOWqRclo8
	 EebB2md8FyT2wTOC28cYxxDyDQwqDVESfKjrjfU5qoAo3fxxy34D1N5S/ePDlik36e
	 n8W0HGh9r7UXNdMaIeNzDJf+Hot1fhoA1uh275U406oVgMGP6kYrwFzj8p1qjsIbRH
	 1wqoH963+0nwNvFj4t6yw9umhSaUYQ72oPWrMQepinxSpS2BxFoOoMUZPZSM/Cc73a
	 0wx+knuzAFnbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F95DCAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804559358.30688.3234033399776197212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a4565a5f1810db01d2f3a2b25d49defffd54b5dcc7c24f59de9e86daa15339
Date: Tue, 16 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758045593
