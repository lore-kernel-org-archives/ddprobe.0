Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF952DECB2
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771163694; cv=none; b=urYA/iEj9f/BsUjVVuLHe+VN3OYy0l0AIfETkk0cy6zguWOKT0OC5LDrNXmoi2qtGwIiZnQUTMbnzzoqdBZk/sQiK97lPWdIzLe82hHKp5XFTM1Nls8jq2imDbiDd6VXmuFGxCqBzFTDMvov/Zvgf3/3MO2GxUGgxR6xm/Rorgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771163694; c=relaxed/simple;
	bh=swRJ+rayuDrtl6Qi7hUfRbaQPaeQivlz+mB4T+wtKHM=;
	h=To:Subject:From:Message-Id:Date; b=gz4vXH3Jq0hUFHQFnJabNPpl7dazM2jUjJGKPOccUJJHuMlvwedJl2h5NG8UrdYUWozktLrasx2M2hhn4i9aMsqY1QgEDwriuiulKCPsHhm3P+Rmzg1/iLqEcL/hyArhFwWHSvjliDXzqUvF07EPWq4py7nvWqxq+HMs0anMGy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KeJpVx7l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KeJpVx7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE659C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771163693;
	bh=swRJ+rayuDrtl6Qi7hUfRbaQPaeQivlz+mB4T+wtKHM=;
	h=To:Subject:From:Date:From;
	b=KeJpVx7ldZddNNmf8JQcGvPPDq2BavMqE2rgM1FDd0TwDgrpT6iRAeq1hZZ0htUYT
	 R/E65Qz/SwqM+jUd+ww9+W+hHLrClcQj+FoHhKUijajv5TK5XumXhxquSDYm3gkrVQ
	 E9HI3wEwXmoXXf7BH38UYC7eXQn3dcIV5d09ectMmI9vkL5ttfol6qFwUe1n+K/RsK
	 /UrCBiAtKhUzI/TNvDSa6Nh+qASjm7MTlCLeNWsvZQAu1PxxKbw6z9oa8p9P/3rBET
	 r/i0xiY6+B1yIFdcFfqS0w7m1a/3npFNE+3ckNYg/tAkBnCoJxlOoxo3yBlnDCNl1D
	 tm0M5nMS56uAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A54EEEF587C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116369362.30475.9559612973667861597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeff7ee7d55b56eb7bfc8d7fdbbdfb75150e48f335afe1b2c85d610c42876f79
Date: Sun, 15 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771163693
