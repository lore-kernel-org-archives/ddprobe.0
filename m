Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C8547ACC9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785329434; cv=none; b=OLy5+R4D4GStT6wXV+nfbJeodKaPxoEQUHwQ451GE40DIa2WNyzhSxt/P1ohpdNFgmPBlvPpTPAGN2Za7bHcBqe4EVARoche8zKbI9HxgsJ/sDaISZYTc4bxYJo+KfJjplwj3UtBlicz1nSodfhc1tUIDU27lUaFRngjlHSu36I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785329434; c=relaxed/simple;
	bh=j/nJt2LkBPH/CDHDRuCo45vF17HRz/F2F77F6xmvRkA=;
	h=To:Subject:From:Message-Id:Date; b=pfLzPifbInaBgAqGBTFjHpLWAgsmvsQOH0VssP3UkcfPNJbFDZVxo9K4mo3WgdcXN5trcLxyCEwcKaqS2Edz+6gP7VCMLs3PgemYenSbGaxXU6trIQK73x+Kx67ND9T4GgTp9hzOBijVT5qzpfbqacI/+TeKoTyZRpMJYGYpVpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a08cffBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a08cffBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB53CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785329433;
	bh=j/nJt2LkBPH/CDHDRuCo45vF17HRz/F2F77F6xmvRkA=;
	h=To:Subject:From:Date:From;
	b=a08cffBsJviSR4WPEgaK+skmNCJ1yDKAbS13PMXzo4WquhJ6kI3GZvxP1tRewU6Nd
	 B7JFCDV2GkO+JHgxpb07EQntg9RKwzg2nDOwY3pRvREljv4GKmEK7ZH1QkmT+qk23S
	 RBO2iiQQTzAM2kPfhegT3qDT/wVsvcz3Tn+A12SvLQinu5k124prKO0ExVoeEoByLY
	 KheHVw4tk1qxhTGcFoPtRkuQXvB+Q/ARkJsD4AJIhGKWmclVyJtX0FEcyJqUjB1Knp
	 tAX9NEMxIascDGkN+30Vxn2wSNqsLQ6DPuSg2z+jmyx07f0WOJKTMA0nyY22z6SocU
	 7Q+yc1zuTjCoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E50C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532943368.12573.15515667229944164906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7943785341f9a21e8b5864ed472e8dcdeed1aa2073ae1d1befec2e180d84f2f
Date: Wed, 29 Jul 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785329433
