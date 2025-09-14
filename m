Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9DA1C3C11
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757837394; cv=none; b=bNe351biJv7rOU5odFBA+QLRflBLESXwiFYswTlvi75qyZIi9ehDCxMO0gnv7gkXTkgUv8EDItNdC5bBCC4EHSLLIFRSsRQm+hGbaYAOmg0CMa9GB4ZnKhmjRvcWmpHEenH4TKnsqSUMyQjXpa/+FR8Wvj33Kk4qZ9AmKrpGmqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757837394; c=relaxed/simple;
	bh=izx+WFqUu+wfY/W2OEYmc6lBgU6TRiDdNEzivPp5c+0=;
	h=To:Subject:From:Message-Id:Date; b=aH4SSRNaxMuR2EGL0TMVvDVqEMciJxAxe5iSWMIEO5erZthLdpoBEO4qFNZcf+uZ4Aoaq/hWUjOnZmTYoXdWlFAd1yylZ2P9KIlREiSiKqh+UUxFOZApoH/sljY9gpiVNcOCTah+fmyPl0KhM/4hfDXL46SzXp5hhYfIA049Low=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tc45xe8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tc45xe8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F010C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757837393;
	bh=izx+WFqUu+wfY/W2OEYmc6lBgU6TRiDdNEzivPp5c+0=;
	h=To:Subject:From:Date:From;
	b=tc45xe8JNw8UwIWQ7bd7n7eoCSlXMQ+RJuZlwvzKHECvNfMU+3WWxcWbKgcafMJEq
	 22VDG7UhlKIFO2slfLZqQmsxo9u5x/6RHrz65/FPsyG5dQsM5q+6om8946D5BcdxsW
	 GotqV+m9b+E5gsgQg5MZXVoADdJtUN3qTBEmrH+fbxUHfXGlV1XnmorTiUl2qgtGEv
	 NQ0Y64NcUboPG5Mc7JT9Or63W761nxxm/cnz0jXmJmIF5ECtnmw9MrVjokkLEVtkr0
	 4dhD56ew1ad6JcN0suovFVnVzwzdUlPOxz2ldvM7RwEHbAqhE7rZfeuj15atmw4nBU
	 mhv5BikKz/9lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6EECAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175783739357.6479.17393819412634246011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cc8de7449351d813fe5e4b0558d0784ff91483fa96b9f51f66255f2a3460c71
Date: Sun, 14 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757837393
