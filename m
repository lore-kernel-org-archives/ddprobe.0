Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C8F2C08AC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779554554; cv=none; b=fDfeFgrfNsjNBaGqMtegUjgNyRaOLEOo6eEWzWl8inwpgQNmuGQCO8PD3L0SBrqy9pUCVpVbsf5okgoXn5cLJ1h6UhzHNLOrTvFZbh1srK2eZ3ArJq+AQirDHF8R/FhKT+4qrOXa4T3FUK/nKDRN1FZuE1woFqyYpJiypveTVtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779554554; c=relaxed/simple;
	bh=S8Ij51mjD2ODwtXnggvo1aqdbPsmk/JoOVit5nHQFVQ=;
	h=To:Subject:From:Message-Id:Date; b=knmovuyewcv5RXRZsIZpcJsZxYnhyKgwH0hXGkzB3w4czwJGT+DItJVFFgUU51AfeJ/G84mjd9hFyoEldSmNjQWki+jqi56KuVkWq7HblFde4o+K6jzzECUAaHtUd3fv11jDGIlhpbpBiNm7WuqMmdJv0BkTqgal0XxMwqs2yNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/D2kVDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/D2kVDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C725DC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779554553;
	bh=S8Ij51mjD2ODwtXnggvo1aqdbPsmk/JoOVit5nHQFVQ=;
	h=To:Subject:From:Date:From;
	b=a/D2kVDcIlKGHbsFfcDx0W83NHTf8atcIDMWej3isxTrQptX6tskwT2uEMZ+WtEJY
	 lBiOqJkJ+86z0BF+42/vuDq4aS82Qmrky714mFFTTdeDaf4HBIEtUD91DfBsk7xx/i
	 J+dTweBeMZYqTUbA4Id1FqfXvT6E4fSdt6PyvdaX0wBjdEmxGg+HZo5MLVugRtF/1F
	 OsIZs5bnJODxm8sTMzLP4+eUohJVTJnsDb8pL12PSHbCyzCcINBdTTyH1hi7EhER2e
	 IHlTUc2tWWfBHXI+w/KItq4I9CWvPw/8K1ZwKVDqbBTShuw//kSBEal/eHb00+ghJ1
	 5Gu+rNegJzr2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8F4CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955455368.2214.11710790929709844250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c494565d196656861271f9ccdd0ed32c48203695812b8180862bb7038db367
Date: Sat, 23 May 2026 16:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779554553
