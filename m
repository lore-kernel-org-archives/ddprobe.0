Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CC9155382
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743407394; cv=none; b=gIOItJv28S83LKXiR4xBz3+6xJlws3LluHyGefGIaIL60YgKlK6xsckHnoADnYv+TL5R+l94gmTGyt4yjMsFiisWKCtLKZX7/ix1WpEpk/z4AG3e7HsLgN3y/U7WF1Hg1sYIe1KrLOcmjlv/owNlcdGDW1XhZb7VUKPG3ObY/aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743407394; c=relaxed/simple;
	bh=knjfSagQVyw3Dw7HBLIELQUf+9nX7r3SQEqI7it4JmQ=;
	h=To:Subject:From:Message-Id:Date; b=NWcejWNdBcUejL3EKYYK6PMlonKSpaH8iO1VKrLHKwn12e9GZpcvdUezhXQQomLCaPzVwM2yvuUrTw5Kf6CEx8jPltA0LJjwLxhRTMfdhte9/yPgK4YwrFJUTjIafNNsE9Qo5aptJ2b5geWZuy48G0ViKx3xppVUQUyB1vXXCYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdU7VcQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdU7VcQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9157C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743407393;
	bh=knjfSagQVyw3Dw7HBLIELQUf+9nX7r3SQEqI7it4JmQ=;
	h=To:Subject:From:Date:From;
	b=rdU7VcQoNhBlbEEd0NK9eyi3l5rXzL/17yNTNYUd1ykn96dXX8+FxzCWA2eQP3qrQ
	 w+5UG7sx6Mmcs2UsGKD9YDdVsNSb4sAy8JPZYWgrwsxlgEcGobCnLlExjuR1bip1hK
	 cbDoFYkBy+Bpe6aZvDj/wDG6fpCY4gqOTt/XEszZp9ZD2egMY0vX0HYFbnInNQtsax
	 C73t2+a/pqEEJsOOYTahUbF/gP1+bIvw2XyQjDFO9We5ko2extM90js28MAHTw5iR3
	 okB9FGuMo26sKE85+QRvXT66u+ZNBVYEXDa35aJly3iOKWzP8Ucv4gIT9Hicioa3Pc
	 r9VTfxIozqCpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980DFC36017
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174340739358.21771.6954379685243672091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1514526c044dbf3bc7819609693d5d9711145b8673539d8125860ede618cc0a
Date: Mon, 31 Mar 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743407393
