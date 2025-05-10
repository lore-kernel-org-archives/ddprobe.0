Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8504685
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746913194; cv=none; b=t0T7YxCCWe4/2Rp/CKa+v3jim2LjG15tginS+ahAv64JulmkgbQXhf/ORqB+QXKiD9uxDp3Qt8sinlRIEJ60cXKKdJnF69JmAdeKxgdSLNeKn6sEip54ybabLgxMfzxmjDg2mYov92AQQJHTlr7kKF9Ti/xflQfmyOLTlCOEYBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746913194; c=relaxed/simple;
	bh=yv1Lx8PeOwdOQG7wpsgPXAYaRhGpx/6aXxkWDoxaDw4=;
	h=To:Subject:From:Message-Id:Date; b=Qo8dNhGF3LcQwUNTntEt4ikIWKzXQN0AhXQxL3gOU+SezK3Cf0ncMZkD2wk37OtQTXHNZd2hnADG5PQxo5lhDTeCnyCJX68tjfT/amKcmxxxE0K/RgCBbOvk4uhtF+KWEgE4hyakZzVuiRk9/C3S6ZEa+VVoIeZfjddjha2oY2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBb+k8Tr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBb+k8Tr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7020C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746913193;
	bh=yv1Lx8PeOwdOQG7wpsgPXAYaRhGpx/6aXxkWDoxaDw4=;
	h=To:Subject:From:Date:From;
	b=hBb+k8TrUIxD0mO4mvpp9/RN7JIV+MHeQS+DPasoQV/rQo+Cbn0n+0PRyqYBmr3wC
	 j3yZoa0ABUll7ChpAxWNw4i1HtBHPp0rnSpF/EdGjMDJF86OaRnlBHpnL8a3y7nTCt
	 Rb1qAvGP8SKaLyZsA7JqYbBToEG9CCpJUOuh3gY/4kAGqXjcxXjdDjPJBPvNgItLFp
	 2xIKsWWiTOXXdDH0W2RTT+lgXqRvecLB2ygAf8s6nkBmVG3fh0RQ3MRXsrNcRxSkLA
	 XaVJG2LcsUgf9ilZ66MUyLbQEpEYu5Rf/G7eb7S+6AtYQD6pAhngR1MqSewicahLN4
	 Tb6Vm6BDfyv9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91731C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691319357.7932.4540857795906438237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6298d00eef04d172c62de5d90772599318c91e567e0f25784d8f95cb6b1606e3
Date: Sat, 10 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746913193
