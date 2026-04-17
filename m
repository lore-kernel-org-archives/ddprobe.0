Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1661D310652
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776394054; cv=none; b=upmXisBriLuhuOBdiX+C9cbKgoLuznpKyR0EwDMP52ImX7ADHOgWOYPPvua9souM1QJ7UoVtItehBQmS0AcZha4co90baM2aaHcgD8Q3gqVwPwI3yzynbmo7GUihnRvrdLyCrV1tcW/bbNvoy+2DKWEbKn7NmUefMDoAUD+lhAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776394054; c=relaxed/simple;
	bh=TUOqPz7ulMDDJdg+9J07JlpH6Mh6sxHt+FMsF0jtaec=;
	h=To:Subject:From:Message-Id:Date; b=Yq1J0D9GongbjiKnjxa6kmPoYIeEo/YBTw6isHwxW9nyUkeATAoxm990o55j3hrXBq8srGbKNGVSPTQXBU+TmXjllEmPNUCWHPMTQrX4UsAS36oqJghAI918M2Ug1PS13CU+lvmypVE7dY7dLDDjWfOE63QU+NRNHd2k+mvlpSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1gqoqPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1gqoqPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D8AC2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776394053;
	bh=TUOqPz7ulMDDJdg+9J07JlpH6Mh6sxHt+FMsF0jtaec=;
	h=To:Subject:From:Date:From;
	b=t1gqoqPlwQtENgG2ZIWkGqTJyq/8qtPZ9FYcpSxltSmFQcIJKstaAxFrgpHLbN+of
	 F17B+61emrnpPZqKg0VyADFT7fH9/eL+1ab4RUx3y0kyGM88N9c2/aX7iyiaKVM2u1
	 0JNHlEGhBRj3lB/1i4vJZ/vdYE69UkwdLdhvA9PrZzd1s/9ANbXmjwCxa3OkxDUFgL
	 skDK0UPozniQyTmPslRp299zdyQbpCpMtx6ECIoH5zpvbRr5Om+j6/o5a1qlqfG/ck
	 aaDdHCs4ge4gi+ioKjWA9ZSoYE+kfUm6AGibOwDshSvIyDAM8HARXu3vq/sKCUCEt9
	 6a2oHMosfLeMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9804F8E4A0
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639405368.20615.14577223683874253611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d1d4ff06d266debf28948860b6e38a2a96e890ded906363cb5c120a97191349
Date: Fri, 17 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776394053
