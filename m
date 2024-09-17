Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B63C188A25
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726605354; cv=none; b=XncBO3oa9AKFP7SyRYL4F7YKM+F73Wz4uMynuMiklE3uf/HqLRilpHT4yEwv6zQSU0r+UQ7iNxHZ5wQFT/vtn8CcRPvTDy5Bpyou7p7QG4ZdtgP9INRpjvurGyC40PI3XXJsDj5yWPJ5eSD7nSB5sJhILX52gauuISaZY+nujDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726605354; c=relaxed/simple;
	bh=2nux/9HtBNAisC5/B4egbmP4L/deSUH4gTcykRhEvYo=;
	h=To:Subject:From:Message-Id:Date; b=lnxIwqLEqA9Busz1x6gUKHXtAukpdalezUvl9e6HDPdRO/tttCvFeYO4lX/3/tKcLAaRFyl8JRXoTiRz49SHISnBLULKNEaCq/KxrYH85UOAxAyaKGvt/Qn2/c9YWgKShCIIMzKbX1L7I7kzlj2DG8czkzuNPLDXA8Wr8kEX938=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOgzLhu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOgzLhu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1032C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726605353;
	bh=2nux/9HtBNAisC5/B4egbmP4L/deSUH4gTcykRhEvYo=;
	h=To:Subject:From:Date:From;
	b=aOgzLhu4GZwDM4yuTVTajNzslcafZd8ua6tGEJDDWoeJstIAaCDoQniP7A9H/VIer
	 us4uJR88dEapUy/HkPVRfEfzklTTDO4vf4rDuZop0PI8koeM3zOgtcKt+sjO1y1sVK
	 JayB9qnGQpuMTpRjCcqVYuICQpZ+n6szBjVWPfTvbkgqQ6qfFVHXo7Cys1or5QYj9K
	 zVMAkQWc6b6EviYlMNyIwk5Qi00M0Te7irl3P0FJfaWf/4THmVq8AX50ntdFCAKBOM
	 hMbfrkgFoo0/qsQSCqgVIhOcA69a4Fp/zFlkox2L0DuG6aaYdIaT8BY3BIeWKSi+s5
	 NAbiQ5lOwDZDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A70CAC59E
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172660535358.22618.15685640251167784050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6daa12f5a2004ca376aec3d812cfd5a0163c15642ad5dd0dc56ce5291f71b75a
Date: Tue, 17 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726605353
