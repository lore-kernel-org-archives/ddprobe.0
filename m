Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D80B282F1D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782410254; cv=none; b=WVESWxrDxGeSwb4cI6Jr5fQxSLhS2GgFjI4MYsQEoH72J9gCLTJkx6wD72fkrYX2Q2ffr7DZ08WB6esWay6ojPHxbWZMTn2qgrUdmb0uWGErUJad4GxjCt5SPj9LJ9tNptHXlnDIjX6EgMW4K6UcEaHfI++xAUd3BncNJyOAFDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782410254; c=relaxed/simple;
	bh=y4bi6Cz6AlAahTmVYlcomUO7no/MGre29O1xvfu2ta4=;
	h=To:Subject:From:Message-Id:Date; b=F6Xb/HzEXmeNfmycm59CiACtRQ+pLA5Z24zMoA9bKHXopZtsEkxKMk+sQEpf9XMBfpLgJKdw+bsYNULY6YaPrJVMwfTU01L1U/TnPvo34r1IygpLYQScD/wZz/4/hzO1cYbHI4j4e/VGCyAw29ADqS90gXh/ZkVZPCPRG855/yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJJGcFY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJJGcFY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7ACEC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782410253;
	bh=y4bi6Cz6AlAahTmVYlcomUO7no/MGre29O1xvfu2ta4=;
	h=To:Subject:From:Date:From;
	b=dJJGcFY+jeSMHAB+Z1Y+pJBK4T8rbyP+k6d0jzFS4zcCgzFoYHEPGkUsbRL5Y9aRC
	 +LBxK/NaTPy4pB7HvkmY9yrgLfwSZ+TC2nsaIoriQqd9FA7lx+X0hUR9wfcGI4VatP
	 nBQRLlJTLPmTrIU58WGVhJzMY3vIT/yVGTBeH00tMnHv7jvE2Gxn1TH+EmjqutaQJB
	 BLBZ5kS8b8+oLSrgkw4QjV6ghUYz49Q3dOA9KQ8kfJx1rT/RD3kjnO5k+5huamqUW8
	 1kF6ED1QoksoCz3OflEZTWndcF6lAtMAM/HzpgWDDeI5AKP89K0FF5ObPZbY9XtuPN
	 6b/aTvnwfHRhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BABBDCDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241025375.31603.9726701601182128523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1568db3314b3b3ea1241ea22117495b035c7c7682d554ebac7b10e47529108a5
Date: Thu, 25 Jun 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782410253
