Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118CC33D8
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757465995; cv=none; b=UDIytAG4nsFcqwKfB5iDPboLkp/YgpRrwfNYrs+TdaXb1Y14D+s85PL2k3bHUl97IUVy+bWs5F4BZIzkz8j5SkyrKPB0R7W3Ol0dE9iqBg0nRi4s+3GEUu3fN6PY4WVw3RPkhLLvampkQoMqn3awQ+3XdKk9liK5dFBJIHsCdjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757465995; c=relaxed/simple;
	bh=hMKaIN1mzOQ2KoutBkgBHJyMN2dv0fHHsAaIHlUgAxM=;
	h=To:Subject:From:Message-Id:Date; b=hk2eIdhE0l928bVuXCJ9c/iSHm4LBc75dLJM16OSZY06oq0cffterAMV2OqE0FOWtyF/G0eHxI4d2dTtqnk5hnJZ3ZGJa1CGvoqhDaLW2iQkyXRjlKuSdSsBRZQ+yx26pukTTh3No+D5l/b7kWL3GuajlEwJgdOL+OujkDju6jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hf+Sypdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hf+Sypdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFAFC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757465993;
	bh=hMKaIN1mzOQ2KoutBkgBHJyMN2dv0fHHsAaIHlUgAxM=;
	h=To:Subject:From:Date:From;
	b=hf+SypdyFB/a7bapek0pmIXNiMguSAS8u27XTYoWqKyKRHMtbrGHg9Bcr5Xzt0mqZ
	 81lN8cRh2rjfQ78I5/JuWtoJ07E0IXnxjhuaFxM1iP/1USBQbPute0fLUfSQaPiaUn
	 vft6ixLhNQaT4OQ/tbzPholivklk0ECfQflGmKe1yzNvNSHTS0t30W82tAaJOjsRSD
	 2fHxmfPzIl2A/nWapjvP06j9cZZZH8vQJgPJ8BFiPQYq8IEwCO6mwKmXC/Kox1WJVY
	 kOy7CfuTElD/1F0xog5oZooVzSwRV+zrnHJIRXOlQhmgoXFabe0SURqE2QLJaU6j+k
	 dXZglUTPmHHYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED2CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746599357.28445.2126660847408452116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c7ca02f285610cdb9a45ec14b5f55dde0ece0f778a211903077686c2a39672
Date: Wed, 10 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757465993
