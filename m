Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4AF2F2910
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781889394; cv=none; b=UKD3OHbQR5eqr/Ug1Eb7fKKMzJVo/Fk/Er4TDUeWxD+oYLa1JCNlp9/s/fSS823ZbignPtJC/1NB+XsfAL57BdNC8Q9na4J2IeHT/PpIGBAVkXhcjcLkjanBuCRjIjeENpdze5tS9MAmCSPz25Aj2ZeTpgwODfDzYUrJYrB/Nok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781889394; c=relaxed/simple;
	bh=zOA3i9CNZJpP0pW+FQSpup8+kIgbhdEphGg300VlhPg=;
	h=To:Subject:From:Message-Id:Date; b=Zo0PUCY6LV5udptc+WZvZQomuiYVfeLaG+wCfsGZCof0IgkyeR1flgdigXJm5fhCb8FWw1Jywr7EMptO4NViQjGITHiSPIzQ53LfzawCM2oQowKbUYoV7ISjOzUp6dYfJiyF9sA4hSx0k+GMVtdAFrl/Z9CC4IWJIGCnwx1zdWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLYz2GZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLYz2GZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02CAC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781889393;
	bh=zOA3i9CNZJpP0pW+FQSpup8+kIgbhdEphGg300VlhPg=;
	h=To:Subject:From:Date:From;
	b=uLYz2GZIoyHxPYnvCXO24y/EWpvkpRuPJ6USilavOiX4xRg9DSItFBTgnbIe5dUVw
	 UmHkXznhAuIHcDVZA3wkonOMaH5wdydl2ZoLaC4xkHp5SseXX0MXa7xWXi1lkvvihU
	 hHxsMvL7Ude8LV1tVj5JTMTNr623TtYfEhfpoTiHoxetIlzFOi9xvNoh52JqNbJrO8
	 q5FpEIVK4nMSbhjULnNmdhfbZneEzVnfDGzgWVNhx+HRPmybIrkaLQaC4gmaFmLcJd
	 onQnmdbEWaEMBeIkmJyuqiSEaMxTeHWDbUyUibpo7sDPmpgPN43VRhMMWHvsZNEmam
	 H8VUQb4fy1DlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CF8CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188939370.31419.2132458029737764474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7dd5ddc2451196b32c94ca24f5db5b13d1a8a989e9dbaccaecbe92e9558da6
Date: Fri, 19 Jun 2026 17:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781889393
