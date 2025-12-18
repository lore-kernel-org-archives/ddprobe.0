Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1587C257448
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766068434; cv=none; b=jxH6Aqdf+q2KWcKm1Lu9kIZN1p9TEzmemUhM906pSg2oBTvSAT2VljL5JaoLdUDioSlbbtZ32guEeal4WE9ecylM9d4NXGThcDJmka/wKxyOpY+eCZKohUae6IfyK7cyfsnNykYOewLGbnyeua5kWjpn4WCHelpsypJCIurLbZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766068434; c=relaxed/simple;
	bh=unhdJMUz1Tk6g7Sh+przb/SdFKSixEjfq0bgn2C/dv8=;
	h=To:Subject:From:Message-Id:Date; b=IYVxpGuq1NUhNAs5jOVS9NqwQsxsUZ4dUFlxYzHsUNCYSwoA+dQyhlx96OOI64jZ8WwGlbxpJbqLKpiXV/opEny+VejVSKfZVs9HoTzTWPNJE4fftA24GwQ+aUh8hjqQ6LhkMbqxsB1jWmy0ZQqh0TNEOvRJjL4FqmYO8WdB6Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WS2HgsTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WS2HgsTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16FAC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766068433;
	bh=unhdJMUz1Tk6g7Sh+przb/SdFKSixEjfq0bgn2C/dv8=;
	h=To:Subject:From:Date:From;
	b=WS2HgsTS30s9HZzQ2JDYhOCbi92jqeKBXlKo5l5zPZSoZ96mhyVM18JFg5VeYCVfV
	 /AlmXJvhqmLxqrRo5E5EnZbhr5kYrRj6trOmiHkjrJeGG2e0lIdJgWiS2Tw/ThdF6y
	 gdly5WLQXy6x4drxqSTpMHbAPaIl9WAtrupDIzNXhnaJ3Pzlm7LdmftDbsL9v9G5yW
	 g+lMT8Qx8IEL5Z6uejf3WTrqHSvCRG3AHjuKznO1Ox9xyRWeJ8sj+ymXwtYmRtya0n
	 Y/mdyu+w3Srm50IvnO1d64sNA9gLM6ASBqg3otQxuDs77pP8Bzb5TO1Ge/9Jghfnxz
	 w6+gUeDHQxEjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD7DD6D22C
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606843358.29957.6833833242811224508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfc16e437906ff02a7139a9dca2266a4bc1f56828fc3819400d5e5058aa0779
Date: Thu, 18 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766068433
