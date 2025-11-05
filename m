Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157B22DCC1B
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762378794; cv=none; b=q5hMpYAPOycz5SvV0kpo54pGYnl1n4Gs02L7AOoarfBpN9l1eFK/E391HtoPTeg5HSFnAYJzw8vZ032QsqxLH3RHjuRrhdHJyIu5YeOSGQBv0JvBOhbUyBQltxXsUlnJj6O0+vTUpXthT85GKA7rvfVbXjaPW0t+QfycluuFYd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762378794; c=relaxed/simple;
	bh=bw/LPeAvWruYVeovYErI9nVBOWiYnNNFcO7LlOE96bI=;
	h=To:Subject:From:Message-Id:Date; b=YEmQGCUYEnlO4uVhVLfo7HRyoLK6G0macBPfvPT9G0/Fy9+Ou2s+XYghNIP/LqB3Uj+niSQpE8ztkYufoUC0BCWCfTCJqLzYVwrsU7XDzyfm5T8tA/aXb0X6Q8zpNMtt76HjR/7yh4I8TKpEDYzkPVf69gcDlZ9RE31s9+yDTNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cW/5oVL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cW/5oVL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CF1C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762378793;
	bh=bw/LPeAvWruYVeovYErI9nVBOWiYnNNFcO7LlOE96bI=;
	h=To:Subject:From:Date:From;
	b=cW/5oVL71UXZoQkhjymwibKv4ej5PMe9f9Srk+7K/iLf0yMFKWiKE4VVUdY/6BCuH
	 cyDeFEaa3OCbwaPzFMex7Be8L+Zn1154rAPleGQfpXb5VQB6jPHFtnNNESF0ZjatPB
	 iNAY1wtOczhkT6D88Fbo4hvGgA9FhG896X1GuF610MpLYASjUG0u+cNNokrF7LFLAK
	 mqK7iKG8aaZtakcDAeL+/35btrc9UkmIq8eGnHlDcSzKY/UUsyYruO80WUzODtRuD4
	 ryvnPlHT6ntrDmsVMWi2jJ0WU8uEimC5ggqZF1OThAn3A/UANVhVCwjcPkQZgwL/cG
	 MdNAnIhw5HkwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92939CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237879358.22334.12855110363144146639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473b775b9caac3573198d4e195fc8b5f61d1ec8d161a715db4e3ea58799b79b4
Date: Wed, 05 Nov 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762378793
