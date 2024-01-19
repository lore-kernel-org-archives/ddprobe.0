Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC39DDAB
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705661897; cv=none; b=EyAeoeDuwokRwgdFb6KAlLuAyB5FZIRr9OaHhIJyYQKmGO98+J749FzwhH0ejs1qyP9WEpVDXPVAMgvwJnvkm9J9WKlAgc/qu6h1+qR1PsCLi+QWKg6eu2Et+kQT9P7HOLr3M4hqUlcsV7WxRJTtoyyI5sKa7No2mMLxXF0wsZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705661897; c=relaxed/simple;
	bh=JzuDCgshKj+9Cf2CGB7Avip6TZHMDfOlyhAqcU0INoc=;
	h=To:Subject:From:Message-Id:Date; b=pX4UjymfABWBOQl6kNCpyOyMok/Xi6Yxw8m5t4TFZkafNZgy22aqjm7YiUd0tnIalnNPC+MBGrO8SBU0eGyYFpwQNZrqfGPg4K6sa9whdElN7mshMQkm/zyczeCwVXlgHFi8R6K4HxJDYclIIKUQivCSVIkSlw/cY8LN+zqpVvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TunzSH6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TunzSH6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5FAC433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705661896;
	bh=JzuDCgshKj+9Cf2CGB7Avip6TZHMDfOlyhAqcU0INoc=;
	h=To:Subject:From:Date:From;
	b=TunzSH6RM2Ao9RdIldV1LPt9gmlyw9VLXAmbPd/j6uTVkWhZqPJg/C/x28Kw8G6r/
	 C07tMggcNXD+F40UqyliQ7EvT0fqLVOZBVWVm3FNYNgmfBh40zUxlzFCwHNQX2VsNH
	 p4ZrwTs8F/Zryy1MIYYOmLubG41oKPBEb2R5VOhhR1nOlbhcdY//fRBZmmgGMLFWA+
	 zHfgBfnxlwT9/fC3lmE7N2w5p/INb+86WONGl3UNEQbcael+JeK7eMkMqpdd9AwVrA
	 7ObjGzCZkB38AE16eees5vadABIRN2grjvFzBW4WDlkFKESjQo2oPDzpW73BtrUqRT
	 jPIxX9LORYwPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60548C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170566189637.1606.13048089259177224675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0784d5eda5ee47076a19debd0d7b0aa78c128513ae1bebef1d6617eb8cc2f2d
Date: Fri, 19 Jan 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705661896
