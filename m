Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051082DD60E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773975894; cv=none; b=hXyP/v9ZfOsJG9jfhht2toTa4TlOPwf0feVt6TSXsvgNWUjPt8dChGlYjQ+JQNDHmBxhbhVIoJm7T8pkDneLn2+veOlf+qB2UM+ZA9GKYqVtdUryxXiDnmWRL/ITohgxiA90RCZ2FYFm/GddPXenh6JRt/n5G9L/zljKnDQHNhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773975894; c=relaxed/simple;
	bh=FYwSKrngthbKNMcl4KdPFFmQIX1JjSgcP4s59oWyyCw=;
	h=To:Subject:From:Message-Id:Date; b=CiFoHxRoVSHiy2+SRli0JR1Hc2Sejax//vIM6aA4HQeF7Bu2AYxYSOVSKRy+eTDXJdVbUVBNJaXfm8SItjs9vY9t2xhZAvkqZiBJLORQiB76QSdVv2dGCzcIBOy7cnkdayZMaosiNZokv4dq2vfrjp+PpVKAymHVXrAvZcg9Bpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTt1zBd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTt1zBd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2724C19425
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773975893;
	bh=FYwSKrngthbKNMcl4KdPFFmQIX1JjSgcP4s59oWyyCw=;
	h=To:Subject:From:Date:From;
	b=WTt1zBd6BJ/spUJFA+9aYHK0np/LkpQ2EIZFq3FDqNGkMm2C5veFBkBD40nn30/KK
	 5EVURvXeuyo1Fgf6yBqtYZ6UUoUmnTTB2cqNa41VynViL5KsQO9QyPv/CTRUeYHFT2
	 ahSXRhbc1WROyC4kaG9GelpYO++X/M/+yLz9pGM5BzOK4bauXGqtYcgqBt0FbFl7KL
	 tKaGU6Wr9wlsKK+LIb4kB6ZaQ6cq3iGCZprBIhzJEtKBejIpYp7lQ+o8XRCBtOLJGA
	 nsEJVV1+GXbnVwjiIP/GMSvPFw1g1ANRxcDH9k+vy719XG0Hu1OMR74gYhI+OnWPWR
	 HV/mgby0dmdpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF7D1093168
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397589358.15850.12285502527830236276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1949c3eff2076a802857a4f863a4c0f9d4ccc12b3976fac52419d2769caceb7b
Date: Fri, 20 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773975893
