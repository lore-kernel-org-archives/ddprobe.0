Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BA33D551
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721511354; cv=none; b=iQpI323W7kqXga87dcjmL47DjpiDovKDNUIKKFj7lFh/1Yg5TtQMDKU/QyImk+1wYQ8rXELakDr7ob3hyNmPo5jTuHvR5Jhymq8XB7C5gpqvpStHU9icVxyGU6vGdXhF/2Dg3nNSJZfFJbd6/gpteDb8BrggaX7vb80e/hsuOSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721511354; c=relaxed/simple;
	bh=DnVFCQ9ZzlGkIiNd5v+jXMvA2GhdOfOKaQjTnfsHXq0=;
	h=To:Subject:From:Message-Id:Date; b=ISOmK+dKMYEauAKoZ7UG5jMFcdV5mSD4kg5N76jwk8q0OOyA1oPKq3xG26qSEiWzxJrUnkvXZpvFVeAZYfrcc8XmQlViMSbpKKkWj4gjpg/OzmR6y41RQthBjzsmegjZK0aC6Wif2q2eGpXrr20Dp0I67+lmQzduVcP6ozYDE+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6mHfiIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6mHfiIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E0DC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721511353;
	bh=DnVFCQ9ZzlGkIiNd5v+jXMvA2GhdOfOKaQjTnfsHXq0=;
	h=To:Subject:From:Date:From;
	b=B6mHfiISVs28MaPGWy71/91KO015Qegy0bZKeybybZcpqJX8b4/eFE0C8fM2mwfRH
	 aclvNhBuPEmP13Bf+S9MHYh+IogxMXLbnokwC3/tz9+5kKeOlrssvhEn21sPXoa35P
	 8onAG/650+0uPp9k7F3+9VWGGVHmkZKL7In0VGvOl4hD2MoxrZGMG3B2kYH1Ra3c6Z
	 0plwMvOsdHdMX+sYKwXrtOnIVkzE1oUlKWpzzf5LTdC01E+G6BihL34csz5HUXxuTL
	 pEVLg9ejAMBcDW0Cbwm+wApP6ZoS05JV5jzgnAdk84lf8L0y5w55xSAAffzBU5XkfJ
	 qsNkmER1CLrQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFF9C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172151135368.18965.13748142265078371687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41205e2302703d9e81d9d08466537d86075d50f4f03fcd9d8359956b1ca7252
Date: Sat, 20 Jul 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721511353
