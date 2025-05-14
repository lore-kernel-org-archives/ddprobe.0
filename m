Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D28286D71
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747247994; cv=none; b=XVuVg01X/TKWSoQwudhlSNrofJuWMIOak2XvEJPAhweGKgwGxQKbkypwucd+YikArG/S8yPszrNVm0vW5yA+husj5xh4HcF2ud0pPuopg4wCWhdGkTSIZzn/9vcknyCQaGZ2Skulr9aoP9v+CgMav9XvLD0vhixzdNv1pEIQzSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747247994; c=relaxed/simple;
	bh=wvytqPC4LlgSoON4BSD8+bWlUN2GiLdbFta2FJWXRIc=;
	h=To:Subject:From:Message-Id:Date; b=Ob99hYyqwdcEg3G/fLq+0mwEOzs4xAwhJ3J4YXW67PIKqciLfLWw26seXhmmNU6CpBHYwLWf+9RvFhyNaOk5qDjWmQ/92gJUzMSG/jeCCLBn/naVDjSWVNtUeM4gVgJwTNwsRTcZTe/676qLKz6ye5r6zkdHZgzc5+dejMNCuXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wp18JNKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wp18JNKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C7DC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747247993;
	bh=wvytqPC4LlgSoON4BSD8+bWlUN2GiLdbFta2FJWXRIc=;
	h=To:Subject:From:Date:From;
	b=Wp18JNKiHdQg7QLB36xPij9LhyfnZYXPliJx0cW2g97lTAqrjKRo+YjWN2eo6K8tk
	 aYZripGKDVJNekWFnYljaAtLBOoQjUNeXthv7V+E5Cn/bFMh+QEdHUgeTQBBZiCnlw
	 M4SL7a88uHKwACx1DWYW6UW3gjo/BwOd/Oc8IBKjpElyQjFMwfGuMB1421rSVtTrdK
	 L3amWtB42FyzIRhf+F9mE9oVYArYi+mAlORwuktORNoNbAHSr8RiL0tl2J5+AsJXfu
	 Mbd4WWv+7bKQvSdzrEbOVmXvViA6fgkX8MSCu7B0jgEUTomfsvTPj3FWm97JvEuJFQ
	 A73kIZqUSdnIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952B2C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724799358.5985.12412038464194540574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f77b81078d9ab221ba09eecea7826e4d5f46a6df266ae097fdd28ffa13a6a15
Date: Wed, 14 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747247993
