Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB20242D62
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783302514; cv=none; b=rwJEYd6b2Rbv3mxMMjo6Q51UBMNmFDIN68Pll+JllIofvVN8dXewGlrTm73xSrgkpjVrvOK7R0aILUF5FWROUiAgYKZ0+SaBB7CN3Ej8N45JtzQKbnjg8O2oBawjxGHa2JsojnLqV7YgBDMnCp1pv6Wgcw+Bw6hbtSTBLfLvW4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783302514; c=relaxed/simple;
	bh=eUwbUi/DaHLKT7uf7FrtxqkHyYQGlJab8Q5f7Pxx3M0=;
	h=To:Subject:From:Message-Id:Date; b=gzE5ao35O+rQhGBg9dys+qpp0Jrj9J7ABRvbSzgd/IgAk6xyq7do9KCZra1NdUnvFXlgihuE87+CGUywZyS6S5ZLoMrUs7JtKtLny2/tMsnJGDEkDvs3Ek9VuP8aWRzYgikxVOFuQmFQu6o5J/tLXncEPTVmXyMnEA2Ty3dB4X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dd0g6fy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dd0g6fy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2007C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783302513;
	bh=eUwbUi/DaHLKT7uf7FrtxqkHyYQGlJab8Q5f7Pxx3M0=;
	h=To:Subject:From:Date:From;
	b=dd0g6fy6TEmPn7lCoDHceYYAsMdUeBa9WIARxAfC4Tb+1BIvz+Sesaytmn0Z9BFaT
	 oUf9igZof8yCadIUNkmfqfa9yJ1B6pgnafWEA9eMAy0gwdKnjQ1NlOLN4d8i4cwb3x
	 /vlNiw/UQIaSDwOiuaPN7TDoUmnRl8y4lHygLtpnY6F1v2JWtSksXLUy7ron+OUo2P
	 XmOrRoGTpWt5Ublv+3dgm/I7R+Sy6+UYnCymTSFR3lreDZOPDTE+k9kad04kKupZoN
	 2RzNshoUMRwBUKu8dJL2+P/LsF+zGm3FHprerqkKdzNbuAFKVvdPSxj7NWGs+3+7Lx
	 oP6MIcGoyUyYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5DDC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330251369.23283.11588929364830079491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947d9241285721c2712e5d30f06bdb7e7720c31181c0f343f553b1dac46cb156
Date: Mon, 06 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783302513
