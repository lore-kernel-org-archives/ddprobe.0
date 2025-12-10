Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1D530E0D8
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765365174; cv=none; b=eNIvyBnl8q8K1uLV1RqcmYiPCgGDJzcynG0Hp84FozikeKCbWDVqMmd83uwUPpwSA8bNvDMUocUdBms6XWlpNSsDJ9BrUEHS9ufdn26hFW+1hh66xyduEUXH6CwUmbLYQUAZnd5XkjLxNEvkIca/iaSY6LlFkOy/SlJFkbSXUGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765365174; c=relaxed/simple;
	bh=xo2IHUGvMdTEJ6Yq4TihkN+uXmMXhKu9YjJGvH9smjI=;
	h=To:Subject:From:Message-Id:Date; b=be3EbjgoksisarUjfNJV418ty1xCVxJpITi8NGPj6/PVe9CiVery8v/Cqo74flb/tD74dXeQkVtXgA1AxzhPEt73n0usQbNtp2mkScEVvnN2tOI3/3Emg7L5KK5fsw8Gr0vNPmMZQ3ji11wdnXLhvWVWiKvTAbo7wzg6JMXyCMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXfTbFDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXfTbFDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A368CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765365173;
	bh=xo2IHUGvMdTEJ6Yq4TihkN+uXmMXhKu9YjJGvH9smjI=;
	h=To:Subject:From:Date:From;
	b=tXfTbFDzhO3qMBLALgs1IWjsTx5nzX3uKenZu0bXtuKLsc3USEcTM1bB0fxmGIvtZ
	 03WXPN+JFtqacQgnIhObl0/b1Vbcv5qTPGRkiCVU2YkXvxYTlU1gkbPRGFpFRu/pjk
	 mbQuf7gFnv/Q/Zhxuvr2IIqfYQwqBy6dk4aAqLmEcKaVh5mwIyG8ab0pc92HMJvbSg
	 uIkp21q3+10+2yMdmkVEiAJS0Ckb8oQQi01EEhJwgbghF+1CWpJP8VeIorPvvM2c6Q
	 Ej3AywbHHtiSQXJ3YaBMxqJA47ZIuw/GCaOllE1GokTMtiWoZHlinugPk/LlJY4yPk
	 c0GoRkfLd6ZbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105FD3C52A
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536517358.15266.17371162917828645761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e4ed8aca62850c56428dd4ebb791d9fc20bf387f079f6e478b120bbb71661ec
Date: Wed, 10 Dec 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765365173
