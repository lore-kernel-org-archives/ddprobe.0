Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FAD20013A
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755161395; cv=none; b=WrQIbTw7TjlaZfw7yFdBxT5CaKjNKzpz++H6kD/TXhRxGrR9MfeXftHeE3jOUkLUS5fcJebX+Xd52Sog+HzEb2EnLL4plpsC44kxR+rwGm4/1d0d7TZqG/GdchSRB+97Jjn6r4p/Ihm69n2LnDdXVh25juC13GzLhSH8hnMbZjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755161395; c=relaxed/simple;
	bh=d1BQp0LwE8exfedRiIjjhoKXd9Yn8zGot5dFPsw3e7U=;
	h=To:Subject:From:Message-Id:Date; b=p9xQB94cx7Tyv9sqZ0Nwem+0akT8J7epCM16OKnuq1ZSTtVeGP8KWnVRwocYQcbBlSedCdCfXINoViSjECYk9dWHvD6ABLPt9JwyQdfTdAK7fXLpDUGLtoBcMcwMkITcYq27MBFfbNuF4BpsSklW3tqgKEsqcKhyyDEMMd8elho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUrSm9pJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUrSm9pJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE7AC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755161393;
	bh=d1BQp0LwE8exfedRiIjjhoKXd9Yn8zGot5dFPsw3e7U=;
	h=To:Subject:From:Date:From;
	b=VUrSm9pJYv2+DyeRYes24911X4Y+R7Um+hDUsjG8/Q8DM2DQTOoJwxK+OK/S1+l7e
	 DFHIiw8IhJ+3ybx0/M0FD5Y8U2GTiPDDLSNCE/J4OgTeTvB6sSo5FL2eSNanV2/F3p
	 fLvxWR2wKRCXTZiK3xWWUqQ9P1lI37S9pu0V1dAJ+uY8L0H2M/KcMFtcux+df6Kr5u
	 CC2+Rbv80akKxXo/P/5pMhwFJ+xSsu2O7SzdkHO9HJZ2By+7KTW70a8C8xZDHe/Gzu
	 PROq79B90AYGHtg1e8jkS9eoMSptEUUFPIZ7x7ZRKP1zNmatgohuKmq7+rRZPE4yZ2
	 EWZfU3xRVDpPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB3CA0EE3
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516139357.13717.17659966193165279396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7565eb271ac7b4d241f3698bea3c98ba3e2d0422a2e8e1cd7043decc905d8bd
Date: Thu, 14 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755161393
