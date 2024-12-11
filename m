Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433AF236F98
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733911554; cv=none; b=I2GOGBtUmylnYyzWbg9cGjB0k9Wo1cGmDoZJWhGlNekJv8X30D0/d+MlLEn0CYxPHnQKeA4F6PPmSij80bjiCsJjH/oVCBrCDmhhW3iXL9ExOm7gQTRkSMHxzpVjO7/sUBdyEyZfvTlc3A7NvndgusJugRYLlbeDTKCeJ8KbOFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733911554; c=relaxed/simple;
	bh=VuP+ZeWdatooRz0aOtV1TeQarHZ4uBz/4kxG+0LVBM0=;
	h=To:Subject:From:Message-Id:Date; b=bn6Q3Gf+0/Eqkyu4xnblfI6fUL8LKX/nVOyQqxUbWDk4wcIQo/vuBxlJxROmRLyLAevKknR8wsCoiVkhNhHDYFwWbMumRSVZpW7W0C6d9wGweH+JoFqqTRZA94fFGqbuOEmm+E/HV5w9r6YxdwyK9EYJIed8xDbeck2JYlYGb9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PA1anjDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PA1anjDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB49AC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733911553;
	bh=VuP+ZeWdatooRz0aOtV1TeQarHZ4uBz/4kxG+0LVBM0=;
	h=To:Subject:From:Date:From;
	b=PA1anjDhdp4KDf2dQxWFoVaZ6DwiPV4QeKPB8gT2lMoctraYlfQ4dz3XEF2WUCjOF
	 yYLYDY5B/BANkt1UDQVUkwLBBC9xJD8vE6xVEbHYAAQcVqbou82B+zkr9sR9zHS3kg
	 A3Q+1lgdCPBXGIRsr0fCtw2BR32V5Lu+eWyNw6xblOyU0tvjZee0j/MqfX9miqdDko
	 0b+Rh3WCsfHzUKASmB3zgHdb9AWfYe3M5J/WLDdivteoHf2g8XVryYPaOQzxJivPie
	 66RckGegdU6cNC3FycQClHhaUJJJbZdIy4IyCWLhvYakEMrBZLW0PmVK+2yZbMAzkl
	 RJjG8qLxYhFIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C34E77180
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173391155366.18741.1136497844870262917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4cb8c8c1090823c12861deac8c1b3b2c6b1fae3ed4a841ca1d2164e233e7b5
Date: Wed, 11 Dec 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733911553
