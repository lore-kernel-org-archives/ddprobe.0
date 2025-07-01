Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5B9223DFB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751406595; cv=none; b=rdza2tvwgugP7vTKcT6SQCY4MXZVKc71n7eIZPA1nQVRVwUWVPffG1WK9NImbfPk3spPOu13i45Rlhuk0cC4KMLuBaOPQSdO5Sk0QyWGX3Uc2aIHflSbvcr+P1KEMpCH9jvyyJ5v5DCwXLbmG0tJQ99ZVvd0UrJnWasepSFtp3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751406595; c=relaxed/simple;
	bh=1ZcGVTwESpiHh+m8cqN+SrDDw3mjS1H+zzo+VUPcuUI=;
	h=To:Subject:From:Message-Id:Date; b=D9y8USPUMxezjqWMR6D5mGSji+zisv7fwcvGoM9uaSYKyz5RNhVYKLyPwZQJpO3MUElv/antTmu0FkwQD/smErhBMwJearuOItoLb2P+yisJY46C9UUvqDZv2wfoWBiMbwHzc47mVf+2r3w2sLzo+hkb9Wxut9Q/PMwZtCJuMEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRgOihLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRgOihLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5973C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751406593;
	bh=1ZcGVTwESpiHh+m8cqN+SrDDw3mjS1H+zzo+VUPcuUI=;
	h=To:Subject:From:Date:From;
	b=oRgOihLErAPixY13UO7NzaN3PEaG2DBKKtykMNV95BqKAWj/Yer66Rfu0ii5OgWDD
	 WlhYbgQdT3kkhrebNZlwH3//Lao9Wn1gqkIKjV1am1vpIeUYHvYGuJkvY/ylqeva1k
	 dOBFV5/0GOgUpQf9v6DU/CZ0fJlzIjs7Mw8aPbhuz5drSHW8LVgusHaIbXDQxmpFFf
	 61K8gd/LP4sw3W9ES/7GFxtEP5B8pO6n6sDvGODQxCEiPoxSSux/7kASl48ucRqi+R
	 7KRdwrneHzmHAQWjAzkdyp0m0hv+pT2Wp1ZJcyvND5+brF/L/QUQxK1lZtYkiJk+HX
	 OWy9HXPSXgyQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918BFC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140659357.9369.360163056938038314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bcecc06e619f1da086a25120fdd8c1cc221b94990b729999c1095b24ed6d9d3
Date: Tue, 01 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751406593
