Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1962739DBFB
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773179694; cv=none; b=D6rIe1JfZ2rmILqZbKKBZPk+Xl9Ezz2clyHVT+TwjhGWVCnGHID0ei+MWoRxtw0GmB4Xu4NGF+anHzV9vg2qkA47ZvC4B4bJXg9c29QWSb90ObPYT5dOrvSVfioA4ebCpOxvQIv9zf2YAcPBEKqEvXPSUigVrrGe4P4AIEX707A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773179694; c=relaxed/simple;
	bh=xf48kPEpZ3w1LxbwtPakjrZulsarqseRhs/yJkT2SrY=;
	h=To:Subject:From:Message-Id:Date; b=tBPzT4UtC9uaaDJflW8HDysu0PxXZrhBbDSkkApDdMVFV8OkImQwdUHwxvxf5trfjspuFCM7EXGh0Gf6HP0VBMcwTbhjcy2GpiLcy6tNSdgSmTUhL18GNyS9CIQKAnNrMV6mt+Ai0+++Gw5myDauEkEb2AuGdEQjxnfNypd/WPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZ/4xUrt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZ/4xUrt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF150C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773179693;
	bh=xf48kPEpZ3w1LxbwtPakjrZulsarqseRhs/yJkT2SrY=;
	h=To:Subject:From:Date:From;
	b=ZZ/4xUrtQH4hN1jLUocdnkz5TwutWGEJe48xNS2wJHL17lGA0sfmcpsvOyj0cEmRZ
	 OOHgBFbDjCIx7+j6/sveZj2R0i26kEhrhp5BB1dfwDOCjGjM1IUyUHkK0j51/DAeei
	 g3UwIhPiP+aHe5KKd8PZkDbeAiazJQzWHkSCI4He+PPLRa3xD/Qw7LIkU9nYIiNCae
	 IVg93sJmOKpi/Z8yWINwpQdeI3wg2H3iWdmqXut3t7wH2BHGpmLssa5J4K1vcHGD5f
	 prds0UP+KlW76xdrTtpAx8xesJbneoYrVIXADe6LUVJNZu/qNN5jp2FK4uzAT/joAh
	 LNmq1UEf73lVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C87FEB107E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317969359.15982.4150247649722084922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27614b01dc1cc8a86b9959cf9f695d7ea1e87a646ef30575e967378392c69ff4
Date: Tue, 10 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773179693
