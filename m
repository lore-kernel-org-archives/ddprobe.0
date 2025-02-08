Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CFA241103
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739036754; cv=none; b=I/gkCGv6FOwyThlvXafBHtY/e2I2fq94qRsvXguQJZDTxH3fP2oliwHPkkDQPXMzJFsq1w48ql2EO2vFxE4bX7r6SGftfxvFtPDCLsutmrYaZ29a8yUzPjwEXtRJHTUWABL2Q3mJMyaPSydhTG+1mMHDXRDWwKnryR+h9ckTgqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739036754; c=relaxed/simple;
	bh=QfvnjpU4UJ/M+6sz550rPrrFXDYPPRFZ84SPVhbi7YU=;
	h=To:Subject:From:Message-Id:Date; b=eLLuCt6McQyK2HXwCZnvBDZzoS0ZrkeTdq5TKb4TrkB05PEI5q23QFQDf9kcH6RRKmgQP9EIci8JQjLXF/qAHBHGVy8fNgCrltselSl5B1qWN5Tnscie2Sp+luzw22r6ABYHfSeAPQrQIWkSaJzrfM/yW+yQ+g2ZmgI6kZhvYFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sX6ep5FQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sX6ep5FQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5653C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739036753;
	bh=QfvnjpU4UJ/M+6sz550rPrrFXDYPPRFZ84SPVhbi7YU=;
	h=To:Subject:From:Date:From;
	b=sX6ep5FQcZ0nmaKv/JVmt+BoQhrh1lnCggjuCE/rJI2nPGHFVMZqQhbqRRcNCEAwj
	 BZa62rv6EOZflettkDnA30Pf2Az+In3Y/7DIPOId11hUUY2oj8ruwBu09zliOhWKlR
	 yAio8LKBIzx0oCFPs3KXHBxaijp01rmxa8CdjU7YNrSxinHecfWCPVZcTY1Aswp9t5
	 zszC7itCEz9TDZ2D840riXBFH3XDA1JimXf3JCnJs++wezj/KlEkRjv1chesMm9GYP
	 33UhMp7L7Vc4Ke2ImE1EWRjTomV2VGDn7ej5LLfmYB/hpX+vnBvq+7XVhkVAIb6sox
	 jzT3fmFM+Bq+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97225C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173903675358.29954.5765365426245804067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6d4bed48508c5ce4a007015aa548926434c7787f2c4cd1a7b80cf9da1c4c17
Date: Sat, 08 Feb 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739036753
