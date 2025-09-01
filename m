Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B83F223DF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756765194; cv=none; b=psn3VBfgJi3IXane9uFLIA24c7lzgf+TpCJsa4lK92avdg1nNerxTon5E5WvGy11Jux+rMNES05AKWOoeI91mwpgeeT+Y3siSVH03GZYSL8ZTtqnItQ8nuZ+jUpuqMXrFydJQkBp1e1faK2dSjAYfVgb021HVhgGywOjkEdLW0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756765194; c=relaxed/simple;
	bh=I4eYzBEpOmzvo4/7+5HUIOh0sIzx+BUc2urExj/WcBc=;
	h=To:Subject:From:Message-Id:Date; b=nful/dHh4sAE6gsNuOXLBWXSLoaA3c69abpOLZ2TaG+BkqwWXOIQJUA8ixGZhCxNVebAzm2UCYA4FxIKPXdMZ24eR+VgL+NZhFJbH2Xw8c88kfXvP5VlYlBZuXfgd58RWQq8AsqWGui4E54iELVj8i+xt1yRoJmc5LS5R0y6UFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHjl4Hrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHjl4Hrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72CBC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756765193;
	bh=I4eYzBEpOmzvo4/7+5HUIOh0sIzx+BUc2urExj/WcBc=;
	h=To:Subject:From:Date:From;
	b=DHjl4Hrz0RHsIOQbyvHMlvHhz3yOau/hhRMCB1ar+LoWKWk+PbzIZJXT3qtAjEGSh
	 TkQQM2M349xQ5QKZ4ycceCxDdGuTLOBFspwHsf5YqkCB23irTKAvfR3tbiU7Rqh8J1
	 G+6f2bwkkoZ4UbWjQ8RlJZ4PfsW90thshuBWU3e1dNN/4eY3TxYiWvGzeeug4x4pay
	 /Ceh43JOZJDSZabJj8bJHCTOcur1pJI7vyMhrK7QXfMZrfxBZrnjDQEX0SdzO8XpRs
	 XH4tUWUJdXzzqMn+YiViatgEfGoyw6iA8srhMfO+gnFqfAadOfo8uYYjdGEAlX6sUu
	 W4HqlpC5S/O+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92185CA1007
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676519357.8200.3484507392405495383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f945adc98be2aeabd5234a077785a6cbf47edce333f144800328f64d6c408ec0
Date: Mon, 01 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756765193
