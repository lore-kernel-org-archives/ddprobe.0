Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0E82F32
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 17:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720201523; cv=none; b=T9N9ZKPiJdaEDZ5egJ2DQPIhv1ycyoNeD4lzNoS6FAuBA5Qp9nZtX1aMIvp5nLndDtDtlYaK5+rn0CE+RrVYtw4yf+OXSd1DhayhZv+QudtC8qJAZlwDuxRSNvwvhp68vm7OyJkRsYHis6EYiKRE8hsDFvFkiyA4aaPs4RfNLC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720201523; c=relaxed/simple;
	bh=wdPkf/zlYCDY+/3Vo+zJjgsTQ6RAeHFscKrdqX/zSzk=;
	h=To:Subject:From:Message-Id:Date; b=DPBnehHdPFpUpNzeWkrxzjVm2uBoULEeCTfWJCgVjpoH/PJxdGloFr8ozcPUhlujEARGxz4cdZ3bVkQ8MU0diJrqWqMMiIJMw3dvXUh620z7GF6Zq64gTpNQbR4AS1s79nNl/fbnNkVBntImOf29o6v7wMujovMjNgUrFApxfmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PK5ZGWa8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PK5ZGWa8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE7FC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 17:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720201522;
	bh=wdPkf/zlYCDY+/3Vo+zJjgsTQ6RAeHFscKrdqX/zSzk=;
	h=To:Subject:From:Date:From;
	b=PK5ZGWa8p+nKpho+Lq5T4eF+tw3kmM3ulD7SbrqAcK9PE39pOEcGo9elx8ijVAhfA
	 aO8GrxwEiN4ebAoaONT963tCJoJpIgMoXLIdJ0i3gl3jyJFlHqTVg1jeGwg2ztjWlV
	 ORqjGA4eRaCjnt6k/CBSIuhopdvTlZ0BkkzSuvGS0BCR7apEuOMdnUQEzBrxhNq/23
	 yr32N8yaZYw/CSNkM2cgnDOATUvtLSidO1hs65Sg91h/fqU04Q12aSGEry+QnyoAch
	 x00plr0d0xc8du4pvqL7+lgLc8tywumdJUuOYQbp5DPJUQfRcVXAsQPOvEncC40CCe
	 SMGRO39+3W73g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFECC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 17:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172020152275.17734.3947222389715780387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19cde8f13dfc15cf354801bcb1f04a95ee56ab4d10d621e2e8e0821d43a6d139
Date: Fri, 05 Jul 2024 17:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720201522
