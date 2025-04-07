Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5834219AD5C
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744057794; cv=none; b=TB9R80HnZ2rvtD2St5fOaCSWafBDptJz+hXt2hBvKs+s6RDqDQX56SvfQZcGvx72j9glg+oj+zs8eb2qWS3T2vCBpLaKyuvBA09WDXNir0gYWRIF1fOMU1GkXRKC+X7Gip+KtysZFFyWKcbI9q7L/inliCC/B5dC/hap5nBEV9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744057794; c=relaxed/simple;
	bh=VWrCTS8FDpjXuMnXp5t3XcfhctATzo5m9DhPx/IRq5I=;
	h=To:Subject:From:Message-Id:Date; b=Ew4uOKIzqzBGnX/sEkrnqmdCXtqns8dGpo11YK0BoxDsag1uey0hdss+Xko3I5GfCfkWh7ITecdUuHR0kClcEnrty2lyEdGRVPQwX1YNsQ+UjCERNO9OP8U2K25VcxEqWIiYzqX8zodasxZbveaJ/zowC1i8pI3y2roVNgoDI3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plroY5tP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plroY5tP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EDAC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744057793;
	bh=VWrCTS8FDpjXuMnXp5t3XcfhctATzo5m9DhPx/IRq5I=;
	h=To:Subject:From:Date:From;
	b=plroY5tPfvJ7pBhVbAFs61FTEeAgjz47YbyLI+nDcYr8YYaai3by6Ev7X6cE/b+Vm
	 79hK/SatpmdtgOas0iqp2xMXGvYXY2d7xcuNjMZoHqSw35nfoStB2Hp3XkO0GF0fqH
	 Dkq73d2ERJ3p49bJq86qfbpomM8Qw4G++FJeNyWWc0itViGLtnSuhWhaNGYWr6A55c
	 +bYwi+jWYoDjHZEv92cN7WHoj5iiGeCJO2Akv5hdFuCdUxYp3f4q1lcThvO2pBhlYs
	 QKbv6oA+wRpWlgZSEM7jRs9GVeuoUL0pJrNvXQzVxF8STzqMysyYN4kwNjAB7kIgmh
	 Z4iyzNKx0TnQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D70EC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174405779362.13572.8539686055600256313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3798c37ba08ba95e078f50f6aebd3667a11c246f499d80a3d18eeb144e548d
Date: Mon, 07 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744057793
