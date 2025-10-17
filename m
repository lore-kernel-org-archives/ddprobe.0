Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276078632B
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760675394; cv=none; b=Tdlz2/vzEW5zPHfLX/mddPLg5xy+UOB2o8NJX2CD8fjIZ/bXcjCTmGHGgzyzSv0bHFmQ1TXoUjcI9adyjrclwTeWnWkm/v1TZqIspbv27nvGVhE+VrLYnHxEv0/DnJeYUGFpAEouBj0a05iG6ywGCEZtG1Fny6rEfks//LD99QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760675394; c=relaxed/simple;
	bh=/zLZGH7g51O0uty5fLPdES+yivh/z+sFZkq/x7hGB90=;
	h=To:Subject:From:Message-Id:Date; b=V+KQcjfLl04ElaTh5QisSeJtAuQb+ayJLkY6zajFTlh92AeUYNcd1M9uiny4tp+zhGnT+iPMa/r8Dp3ZfjgNLZQWF814DiDcEiB0OyNPHKZYjquLxBxyM8GT5xbJDG3WSCBpYeZ2WlmyFKM+lnWCA0ZyuqPpapzyad+rxI3E8pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yd5iJLm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yd5iJLm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA1DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760675393;
	bh=/zLZGH7g51O0uty5fLPdES+yivh/z+sFZkq/x7hGB90=;
	h=To:Subject:From:Date:From;
	b=Yd5iJLm+GcuygT3eYFHEdNerBNCD6MGhMZwivo2okN2I6yoIkODU5j5jfg/BGqxrQ
	 nEpeJK91i1KIcYrq/VTSpUMi/RrMYT6KX1BmZOGy7gLHPmjqgE2UeafmYfGP+E0+Bq
	 Cw7zzOvHTe2Sv4GUhy993RilZfC7bR4X+GCH7A5dwdtjPQLcqQ5T82ZkVYMYnFMwRT
	 fnVetnpq9ZDx+OKxtUO8ceqqv86Nd+8z0bzPi0aAEurVgZskDzr2tVHVSrKSbJlY9R
	 LbMoUxgpv6Z0G0CU6N417m/rjyiaA4MrLP8CPBR8fXEGusVZfaH7/fb80VqkkiQDo+
	 GDYxIDIwnJPwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9568CCCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067539358.3614.13007330003090060314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e20cc2e47677576f1f8319d71f9d0ef0eb2bb672274ba3e355025e123ced036
Date: Fri, 17 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760675393
