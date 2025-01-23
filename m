Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC1E15AF6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737623154; cv=none; b=EkjcZfnRIk8+XJhjBrn7vLI6Z6dRtBGU3qUhtod+PPjJ2Z54zE9TUELrO2NesjpBm6R432EzO0BBrbYylpW8cPxnP/VbPHHKa7aImYrVXTCY+0ans292e+UJFt8rBPQ4WNEgstgttf7upbniExMor6KCBMtQvFym2+Ng+AOsVjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737623154; c=relaxed/simple;
	bh=YfgqpYbJT1nwyNDcvcHBOUZ9biNqQJ0iWcZ9hRBkZMc=;
	h=To:Subject:From:Message-Id:Date; b=QWKuHZ4Zxt4MukryY41y69zDrKCrDZk6iD1KZD8QSf04iOu2M5ALbWNdE9gh8sxG9O+eavht4hKX5gXOeNlx689GOmuvcJA36YChXX/Z1HPF0D4r5VDxWZeOiXpzwe74T6aJ1/eGPXdg+pxE5VgICMc393SO7/nevNrSM59Qs68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxsoxhm7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxsoxhm7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2649C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737623153;
	bh=YfgqpYbJT1nwyNDcvcHBOUZ9biNqQJ0iWcZ9hRBkZMc=;
	h=To:Subject:From:Date:From;
	b=hxsoxhm7kcqiUwLWUYhBzd1LciAJtRgFo/ZqC0lSE8FM4isoQXFbfh2jJxlKoNiLH
	 0uV8vEntT00oZaVQMl+xt3n6DEu/E4veVc772vz6TDdsMDcaJV2oWweG3Dhc4RwlK6
	 FEJRaNjj3SJ8t8rDvBT92+j4f5/vxcRX3+b/9bc4YZVUtFD072zuCwxUP6IybQRmNb
	 iT2XMUViBX4PDpIraIbJR/HOW8F6GGQ25zTGmhlMS66LL0Ha24dHMA/V7Hfyddh2XJ
	 V+8n2QIINoX3F36D703z8WVIT/MCBY+vCwzoVPohl6NXlhCIE8JUUb6ZxOi3K1gFKc
	 st5M3NMlKgH7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC6C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173762315357.28517.14969909982033252339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa09b69868e16eeea3429cad513f394924a4865535ff00451a6633226400966f
Date: Thu, 23 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737623153
