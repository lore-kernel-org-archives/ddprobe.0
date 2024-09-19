Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B12D55C3E
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726786554; cv=none; b=Xprk+1kzoBBtKua2NzLgq4HLd3eZvx9niDRUhlBz7PE4Ov46RN4otbPfnPoEHdknaAdoKgwEvZgL3EtGdeNNNw8c4QH6SaprhLroOuyt6l2CwCS+S/n4TMIN0m3SGoTJDDFLr2qkZ0RYA2ILs2y99WXXQ877RAEtrpQzVz+LEz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726786554; c=relaxed/simple;
	bh=cqcdCyJ2OFvtfJIphF2OgI0aUHMPob6YNeoY5UC9erE=;
	h=To:Subject:From:Message-Id:Date; b=pzrtuiJ85nLyVbFOfwx9Gov8aTvKd8WY6SYPqDaPPMqvEgoRavwH7miEYaO/7AVBfsHWLlZdpAa2hWPaAATNIrudNm3sHD9/I2p0ZvtPXDd0AttNvimiIsvHG70B6n2CP6qY11e5wUNrJUUQMvxghefKe/f3zm8K2BKOM+ipCQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScfXO4+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScfXO4+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7E3C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726786553;
	bh=cqcdCyJ2OFvtfJIphF2OgI0aUHMPob6YNeoY5UC9erE=;
	h=To:Subject:From:Date:From;
	b=ScfXO4+DApKwyPq3mvS6KL9DF20FxRA8DRxcMHx/cRFNaSltlp5+BT2gJRTRTCK/Y
	 N18BqADZmQj40Qqo7WJSoyi8PKo2rRYz7HTHGrl4Gudo9wbfBGamo2qmhay7atAgR6
	 euK4fpP9+KOa3Mf4HfdJEs1LKhHejf7RnqNxvPitaCU8Uu8TIPTLZuyMftFXbPyd8w
	 l9cx7QC4XQ/aEKtWHwMHKeu7CmVzU48F8W1lkyMPH9E6Qjd9jO8gAltopcT/cJWf7o
	 GzkZP3KmI4AzR7hx5E0PWPmTBmLfk76x/kfWp6zPI1xPRl0SwjpnfRK7dNvkGgxdsU
	 quudg5AqJeWZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99661CF3975
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172678655361.26326.4873800494720781549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5100e4e703aee4edba35be532b8880c5868d03c10e24ec100bc9aeda487e69f3
Date: Thu, 19 Sep 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726786553
