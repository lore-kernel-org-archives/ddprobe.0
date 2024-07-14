Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BCD2572
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 21:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720991423; cv=none; b=ZlhbvrWYm5FplBuHzvI52FPV+MeRftOFXuEpQ2lldRS87od1Jfpp8lGnAycp6lACwUGRKk/gkS4LRBlL/FcvA+uMWfxuBhAgNXg0gUUnxUnNmv8QeXDBa8aAmm0STsjinSVknJszpSzkEOs3CDw9CxP2cvYA6G35XcMRSF+HBng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720991423; c=relaxed/simple;
	bh=RdDEl6KeJShnwEag10D1AzXPObumUjYcy5uLAp6Ji/E=;
	h=To:Subject:From:Message-Id:Date; b=AxHGYHuZjRJyVqIyCUbOqZDTHGzWGZ0/gbVtgdgiW88lqmQYOK9Os8kIkR43ZXxUUeWD142c2MHEryYH6FAuRgLAmaN7ArQGZdrbmLY6t93zTdzWE1T3oGruemxs2V+uVQUnJpyU0zPtaervmRCfZsiX0bsbxr7iIvSdXZaUatw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGBfBvtj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGBfBvtj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D53C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 21:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720991422;
	bh=RdDEl6KeJShnwEag10D1AzXPObumUjYcy5uLAp6Ji/E=;
	h=To:Subject:From:Date:From;
	b=HGBfBvtjhyn3JtcC1ppIAEgkfBG4nXHH7wKrscmh4QWYquzNROBN/4f5GyKR6JuBT
	 DTi6HG2gRZgPk++NvdhnZMsgFkDb14XwEObhj2e9g33InnZBw450rjp8xXQX9LjEvM
	 Pkeo25EI3KV1cofDs7FwNQ2+Soc5Y8usnW4X8vsop7vtyu7ywwbaWw/HPa1VZMa6bk
	 toagJXaDxkT2umYL4IgRDY79MgLDOJ52FakOx5uUHkiz3q92n3KVgj7i7r6KIpzGBh
	 VhwViHhARwcJN0QES7gg+9D+Ch1UHwRPNpb/fzBssSpNHcEALzBZaX2DJgy4WNc5k8
	 NP+7mV4cdtUwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB4DAC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 21:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172099142282.22541.2934867197406582615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c635d05d67945b429e67dfe222a68a09144149e15c2739519802309cfa5c45d
Date: Sun, 14 Jul 2024 21:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720991422
