Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E9B202F65
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750805394; cv=none; b=psRAEQxYUDJ0xtZH4ivTAerzGapSSoVcIt90nqGiSMszNbOqwVCUnbbWV30uwTmaFuXvLHvT7O7IZa1mLxB9kRMmxKTJRNn3FjWS+dO9AB3xmYOL9wZys1xQiScX1yfevYMDIpVYatvETi/obSKFunsZnOuXB71CIP49cX2ay1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750805394; c=relaxed/simple;
	bh=PxIrzDDYtUHq6aQTDCXyUA04LzssmnjTOZLSFU2vQmo=;
	h=To:Subject:From:Message-Id:Date; b=bygZL1zaRG+iIMcJ0jdNjCkYiGMi6njIkZi4vnuHO94LRgCRPWkbkTybcY5YBlpEVe7H0CczBEN8s+Pl9JyUIM0FpXhFZw2IWWDCc8jKXXBDESHHTdEn1pu3L73Z8XDroOJjTaS3WtKQQKAsZD+ddOpysaX9u+JOfrX6Rc/Kp2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3FJQhff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3FJQhff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A376EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750805393;
	bh=PxIrzDDYtUHq6aQTDCXyUA04LzssmnjTOZLSFU2vQmo=;
	h=To:Subject:From:Date:From;
	b=R3FJQhffZyd7nZcJbmwBPPrCqx4gGuPZthmsqFdq9IhvcKC6Nt9lESTgsH2+JEm21
	 OowIQnYVFIHlIbNMcr0+eGf/UVgsi1PxyZP5dzaSaryZGetX8vKxRnnXAQIGiz1Re0
	 lJUN1KKBERCz3e1qlnb3n7SHVNF45fqDNneGYyHhnl6L32MPw+YGsFaV1MsipzAjkE
	 WjztSpLjdGYetEl7CY8rdu6/aNzfh5x5ow6+SllVrApObvOeXz6MXx6CWhmdIrJsXV
	 glqQ6Tmr3zED6KRrxqTl2DZJV9CZPzjY1jlZurtdqzs5LbeYcMcJ28YX2VeBiw5Vzm
	 0bzrBb/pRPz5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB32C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080539358.17954.9549722359523698769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f46b5c3c9af5ac3c1568ed810c215641d6066b2a853847ee5ea542848e7a69
Date: Tue, 24 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750805393
