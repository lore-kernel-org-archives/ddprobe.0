Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35273EEACA
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779100236; cv=none; b=fL5vKoYiT8iyk8vVLx+3YCFrjtAZnbUWYnQ/jEQR07OARJNMy/2RHiMj5FO1E/PLVuJgoEMlkBvWhSrec8wovcU5y3DdzvAiIvZWt+kFRlQ25WAXKJzVt/LzKLyoxJJu1brIqpD9xYUo1SdYW9eF5UPyNJe2TZ9DFUPHv/5jNp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779100236; c=relaxed/simple;
	bh=fb+cpO72cyHbPnpzPtAyIGjkCcUoBau3nFMivbMEeUE=;
	h=To:Subject:From:Message-Id:Date; b=srCcTXGhIqDc2F5UBIPjG8aEW2o3y++mqtE+MXxe/WT5ILqkUw338j8WM2gvWAil3SSeR6O6ZAraNDeySCj5X2HlmbraXbxO9UGTkd7/ohF0vdYHHyUDvxdbhbf4bEHHPMZiwp9zUcwJOnRdbG5RT3tTmbviYAh8WeZOruBMrO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRKiqmdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRKiqmdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F1DC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779100233;
	bh=fb+cpO72cyHbPnpzPtAyIGjkCcUoBau3nFMivbMEeUE=;
	h=To:Subject:From:Date:From;
	b=DRKiqmdS9CwMYGVXpzDmWu+KspSWUvHA8Bu7ejgqrYW0QW0qMfQJLdbX9K2XW1MZX
	 OYgFA5ItmIzqYtgey42u9iWFzy+nspCREeGc3GsmhfMJYco3l4RAzjZbOoMiLhm2dk
	 KRc43v+gmVEkH5Sr8gqKlbvI6+W8shWovveZy3jpE9cZ0TV/SjGKYc42MTkUfp4Z51
	 tln8gPvp+QDbGPTwXILCmUWPlwz2VXnxcWiSi++CNhi6SVhua+z8BSFddRv8VwlkLM
	 59pbjYNavzZ04NOH733Y3FJt3LGXSYgzQ8N+IpGbHoENgiy6rVW6fkjbn7qkrmFKZt
	 cjEmO9l+yXWpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F71CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910023374.24005.14347048379234630213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc24ce00da466ac7e9a134552730e30fb8b71d86a0767c674ff4ca6df23569a
Date: Mon, 18 May 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779100233
