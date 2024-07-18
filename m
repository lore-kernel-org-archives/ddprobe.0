Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690F1136E0E
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 11:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721303723; cv=none; b=oqsqlLZccRxzD1YJrfjMOp808g0b4SnUXo93QDgjqWxaYszwXJEWwdudbRQ6qceO14cNKM+Vbv3KnaOzKIJP4mlxRibJyvhhX/wQ+oH1q6R4n+2gqSVTIovLTtTaU/mINNbQ9NODfE7CAOt9DSDEPa93Ieeifll7k+K9Vqg7MoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721303723; c=relaxed/simple;
	bh=i0KxRctQxhi68hrt1fKss25aFemgxTrzHcvZccaCoI4=;
	h=To:Subject:From:Message-Id:Date; b=eXA/YU9MsiOB1dTMMQjqe58oWz2QYoTkOIKCSHtcKX39dc+bZ8njHSyrHWTDcKPVZAgzW4Ruxxel3psqzgssEzOPdGiTsSwxzq9HQotUW8EED6H24Llheuq2nk0EXQLol9/nVgYgZFPndQjstl3puDp3z12magWVur+mvXAzA8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsQcshZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsQcshZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0572DC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 11:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721303723;
	bh=i0KxRctQxhi68hrt1fKss25aFemgxTrzHcvZccaCoI4=;
	h=To:Subject:From:Date:From;
	b=rsQcshZQcV54QYTObyhXHPaIUYmAkCbvuVH9d3jawa1TQNnrARavL1s3LWEpEv8ij
	 UOMeYqKOvhJUf0ywlV5rAuvFa8is5sfV9tV74gw2EHq/XUNyC3LFTBMSkiYT6U/ucI
	 lGZ6p8XhwhHtKlvC+CDUVZA704tvOzLBQUaNi3yDeR1nAwzRnauGIlJV7bjveWEANe
	 Z4zSOaRQTAuUciPV9NRGqUwSW3lzGzT+wlVqxkCqKamNiJi3orT9wZ2IMrA/Xq4EQe
	 iD6UEhQWKTZFbutRglIf+2KAQMuO38pk90338A8RiYVBuq4TeA2k6vWr+73BETTz77
	 WBsmFrSziosgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D96E1C3DA60
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 11:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172130372285.13983.9961063020013879453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc61a5af7282547bc7088d088d9f7d79fd674e4e553696114ed54a1f0b4d6e0
Date: Thu, 18 Jul 2024 11:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721303722
