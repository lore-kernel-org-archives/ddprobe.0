Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347691C5D5A
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747771794; cv=none; b=rYAqZyIK8uk6Clql5W9fKzyPll+BoLJY/YhGFzUf+dPaHxlPQJ6t2Yqsu0HoQvDojm94CKwBE5w4LOXCK7QLUMgyr/kb6YJGSE68rNmQ28yxu7/Qdvebbqpap2meVRebC0C5AhFgImYg6A2sfGguzoFoncOoVOSW8/H7j5yRVDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747771794; c=relaxed/simple;
	bh=JMIoDvntfSobSqHkaHPIQocF7OrgwCwgok7sqGbdhFc=;
	h=To:Subject:From:Message-Id:Date; b=K9+70mreEtbsvOmSILOjWiwao21i1MZB0PrityFcZuczFnAilKZ+jogrM+/bG6D9/iIs/31KBG0Y2VIhvHzhmEz8Js/Qs7STTAOMj0KHRauTYw9eNfCUrh9PLIC+G9576on3906ZoyA/7CfcBRHuW7rqzMK9MUsNqjZBkg7T7e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIn3o3/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIn3o3/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E6FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747771793;
	bh=JMIoDvntfSobSqHkaHPIQocF7OrgwCwgok7sqGbdhFc=;
	h=To:Subject:From:Date:From;
	b=OIn3o3/w+5TF7JRN2vRsa5VKrTliVmOllqB54W3s2/lcZa3/34miGva8qPawUBKN+
	 g2S9yBokLzxIe2JIiRGZLp6+FptUQcE8+iB0O/ytkKDvSJMdfPJ83gPGuMLcueSEfQ
	 tbZZ5e3l87pI2YtT8Wt0dk9rmT3N1nhz1DLjQ7UtCuQtAOW+Fum7hNBeMEu7e8Mp4U
	 v44sZAwbK3/2iOw+zw2f8+aucqy+chZVhHnHLf+SZ07AJwRp2q/EDz/7jhsLWmWr3H
	 Nf+l5Lj2F9EPzqkwxnx/xyXT6KTBBgtK/cU9Pdw2Kik9z/78QdwsiddPD821fdeoo5
	 ogl/bmjl3PzYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE6FC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174777179357.19183.8889931289371355679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b7d3ae05778abb4f482f12c9b55d505126a5bedb44e24a5c0221483c57e35b3
Date: Tue, 20 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747771793
