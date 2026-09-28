Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690B337DEA8
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790578834; cv=none; b=VpxMFmws3nk3Y2Qe0faqnJiDo4AL+cNc1NHfa1ATVsJpDspQ/kY1yogG2xajV50ewhLVBuENj96QBT0egT5RoAPaBHWrc8lkV1Fhb4UN4sshKXlOibcC6LsU8+KhsHe7TIjxnarGfXhK7/UthNBqlIMGG+se9yX/uezzmTW0JZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790578834; c=relaxed/simple;
	bh=MPTv3LmI/o2fHRwGYrGtgKYs3sI2GmbCSLovu9vqdgE=;
	h=To:Subject:From:Message-Id:Date; b=e6Ku6gUzKqbsGWlzlJbhTo7FpaYqg+RJzCDhzAhDckH7g39KRwhVT6b3vpsn5DMWoMoFIozPE96DrBlMMF0YG7Ya+Qs8pHmT3w5STtl2m5XWpaTDwguxcK/d0SQI90+6noBezwPh7fRDSYusX59OhFeT/mJHe2A0ZNDJM0LDSuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSjilOvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSjilOvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D788EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790578833;
	bh=MPTv3LmI/o2fHRwGYrGtgKYs3sI2GmbCSLovu9vqdgE=;
	h=To:Subject:From:Date:From;
	b=uSjilOvVN1e1eNi15CtvFaOP8/wHit8kWy/b0isVikftVqTnZnDEQdojZmhETj8Gu
	 wUit/tYTaYYrUJ13jDCsCmdpceQjBrhm1pdvfKB8T+UVG7HG9wmJsEQ8jL0TlBb/cn
	 Kzk4fu6vXi1d7Cm7oKohIzDLI4gZVsR0NzmKvd3fAvsDvQsOG8ckkhvvoO5BWkb4Qm
	 nTYv7TxIk7970SjOf+Df2V2btkWDI+3C3XIAkRVpUk8GDtuWs2/t6m4ohwlvvq0/XH
	 SoBaBSyC72AdCVXKXoBYY5I4/dfrf+BauaTVoFRV5UYXmSenXkeNOZsMdAXPwWaly2
	 wEnDD8/D+2nwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EAFC9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179057883371.26523.6476971829841607145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a83157e37a5002de882232323519e3d83f556cfb01dafd54aae17f54d5b0f16
Date: Mon, 28 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790578833
