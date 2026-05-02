Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB712DC332
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777715854; cv=none; b=mlLfxo6345HUYMVnnbsIldUA197XIMKUAvtnVgFvhhr6ax4afurrohYZMTQWMOoljlFdNQZY16LwDo/UF+O8e5Q3Hp+C93LFvTCtW8XJteySJL5ZWFPufnHGD6TeWmspxkb6DXNgNGI7ZOL+VqFzIdvoti2dnxyl+5etB2sDEP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777715854; c=relaxed/simple;
	bh=nYEjrIUgTiLHmvHC9DeIbEG6oFFfeXlEJ49px9IyVbo=;
	h=To:Subject:From:Message-Id:Date; b=G7idmR8rE78pdFKDLxXBPDj9k+hQihPqZUOlWqjAodh3OHvFOtawt/fXpfOm/6rcgWlqkFiUKJig8pHnxiXA6Y7Zj0QIGHoOEHdeTxYY0b8kiA2fb0uAWm9fvbMtff9+IReCaj0mrw2Ws01PJ6SAxu+2CZTr2jJyXZXTEpMojgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFO0JBWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFO0JBWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE84FC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777715853;
	bh=nYEjrIUgTiLHmvHC9DeIbEG6oFFfeXlEJ49px9IyVbo=;
	h=To:Subject:From:Date:From;
	b=lFO0JBWzD5DgutbPVLkJBE+RU/HaZCC/IiatT37CJyu9G8ks4UjXPpi6+Jed7rMVo
	 bz2vwh8/2w3VCUTRMy8LM89aNzE2NiZaeP/zVvYBso0/9KIHNY+L+Cit+MjeVP6ish
	 mF/qjOzJnDhEZhBA6arOLkE5dskT7++G3dnEdZ2e9njn3rsZYjOxTIR/TzAURuMocR
	 OELb87AH3u3J40jPnY9h8gadCZoIBbZtZXWlRYLaZQI8uhJeUEnvbZxbmm6MXaQX65
	 ICCQMb+v+cUfdA7I3sWZ4GajfAuMivWJqwyBlltyGRBh9hq/8BuY0N05R9zPEtUcgz
	 FYXlQyzEGTzSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96A4CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771585368.20974.2236532610051455886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 194b4699d9f507334ca9355ce1a3538f522b3263783ee637a4612006d42adc13
Date: Sat, 02 May 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777715853
