Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442C21A304A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737235554; cv=none; b=asN7fzdOY6s8tMLw3OsyASckI8csicI5QtLdiHfMMjq7BSeDmel2y3pSiAAEAvMz2Q+FDnRuurBC3ckxov2E2sFPyKQbmlfBI0Kp0jq3rPdC5G+Fl2d5vv0wsPV5TBd6dVo1XLEBVgyrQoZw62TEdR1eNtEv/i51RZQH8eYlPVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737235554; c=relaxed/simple;
	bh=2i+OBV/VNQhxZIi0CFFMF22UYUjbI6OEKRsEuSVfDbw=;
	h=To:Subject:From:Message-Id:Date; b=m7jfrLfABhZQsAgs9tYwGU6kR2Hunji0o4KwYACOwh8uhr/v64IBiu8sbU5YsO2Sm5ACv91Ectjfvw+Ups3AjGVE0rmZsYax4y8RUDw8wZXRrioR1N9EQ7GNsFCgH4iKMbxKX8YCCenGyRIljZDSrTXfd+WKisGt0dW1o8iEB9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1Y9FED2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1Y9FED2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9747C4CEE0
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737235553;
	bh=2i+OBV/VNQhxZIi0CFFMF22UYUjbI6OEKRsEuSVfDbw=;
	h=To:Subject:From:Date:From;
	b=S1Y9FED2S+kXm5TNUgSvcLIjaJx5auWb5LYY1pvB5y6VuXU0yfJ02m4uRcfzTJt4n
	 sSnt7s+bEFqwJj6L2RN9aLvSfoz9apJscHE2w6t2oUtOADcP9FQoul0hgwF59rlkY7
	 drXCIxUQagiqtpyKolLpNNMW2uaUaxXSHPZ7l0DY/v4gJF9sWWGyVZL++Rc/pclnTr
	 6P5UIjriZM5A+N+7EosolIx+0dzbfJL4ZjFuUIw3JYZ8FjV9ZxoxL1T5Iskr9TCY/i
	 jcAcBPN91dJ+rFSoLSzVWadBea/GSFKjWYDCTrY7yikCkBzx1MNYiqjD8zl9jnTce3
	 2je1dsL7/RTGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93909C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173723555359.5416.13544989355793371610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e101cbccfd656b2405455fcafc3212d339125767431a12fd6633dd9918be5c0
Date: Sat, 18 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737235553
