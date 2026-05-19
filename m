Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B4A329C6D
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779214234; cv=none; b=uvYkfUdZ9y+5HhJu+2c7agTWL3GfaDUFz4TqgxuLNxe8cK4luTHOab34zrNOLqSDE6hvourBG52BDjRBUJPdlPW+tqkUlBxztoJtAOjjyFxO2oFZ5upaVeD1/finsaEGj7SHKgdLtDbL6jro6KAAEJ/YlX6D80IvKrxhaexgHBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779214234; c=relaxed/simple;
	bh=bPclHRiqW9G+2hAqlJMNJ8W6JSliu9ppL2O3XV/bb5k=;
	h=To:Subject:From:Message-Id:Date; b=an8qO1HMPMNjuKuM8LF7hvzA32tJ453Bk13kHwz68EOPkiez0BAKhMwcT2LRrBOvPraOhJ3/KhtpHzw8mV37KNsqydYOaW2cEX3fe1fZrhR0czRSNcPOJJyc8geuChk7++SdUkHJu60198PKaCH+gKmB+f5PpxO/CgadI4EPISQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLR3Ypz0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLR3Ypz0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67D2C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779214233;
	bh=bPclHRiqW9G+2hAqlJMNJ8W6JSliu9ppL2O3XV/bb5k=;
	h=To:Subject:From:Date:From;
	b=PLR3Ypz0t7UpWEHfalkhH2/YxBKuZSXOHTjqL9Kn25rp7A9z205yOIg0b1x7Dj8hg
	 ic5Z1fSxXBSDp+lgc0Id3AeVG2xuaBxkog84AVOUkSdR4qHbSIBK+JcAt0GFo7UIB6
	 THV6kcFBJR/M8jLUqho+4WPGaxcXMmO76CbQD/8PLWz6Hc9kpA5yVcOVN/gnULUImk
	 kNxfKWmOPCabuQB4dv8/X/yLceQ7RIRlgaHM8FSGWx0TFAPe/se7npuiaZagUYlMJc
	 Q1BeehAKYqMFuKsR2P/xHAhPmGUXdpyHERXXYAqV7Hvq6UAezGYnTse0rvyPrbqBl4
	 +jSKL5MV+4AJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6BECD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921423376.3851.1167087749228701518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 432bfc9387930ca5968889359b7508731bdf507b24b52b5f0c8ce2fe67ce1814
Date: Tue, 19 May 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779214233
