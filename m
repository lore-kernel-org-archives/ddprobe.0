Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BB313AA31
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716810863; cv=none; b=GM9hHmr7yIs+UASzQ4oTFRvgTmTCwjP0r4pL0hlUEQWjqmwCwTYbI+ahzARKwEZFOiO/7LZES2YBAAZFIsQ9P0R93Dw3dUdQ2vBayNppvWmaDJixem5a0NSDQA3XoQYwb3TEVfFCLDt+L9fgJg66AQJTuj5Ilcy57Vm7IGX8Wz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716810863; c=relaxed/simple;
	bh=P/ctL92eLcamgaZ2wTUwkU/s2X7PoIQge0rJ9LxS0Q8=;
	h=To:Subject:From:Message-Id:Date; b=Zqnt/vYeC6ogbZvjo795GWE5Ui93b2g+Vc2st4CELrCy5N5QtMC5sFmf4BwkK58ze7mhFbh8V6OCxFjUP3w2cmjs0zNGV0gXrhAKl/Dj90vsd41DsV54YEj04aXcvmgqH8M9QLh5PnbmrUOQWvNLCbxoAFMQBrDQQGsJOq54H2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVEK77PE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVEK77PE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCFBC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716810862;
	bh=P/ctL92eLcamgaZ2wTUwkU/s2X7PoIQge0rJ9LxS0Q8=;
	h=To:Subject:From:Date:From;
	b=hVEK77PEneHdNW06Ugb55dlvDib7Uge12BQIKBC7kQQf/afbhGV3azDgWzg4GxMYo
	 vacEzTsETfC3WGL31NpMpk1V5NItIeBnaSidN3wqd1bgln2KPG+AhOIBW3VGS8ZIqF
	 JT1y6Wde6oPX+NrrBE1TqXBt0RMz1FP05kDjvlMOeQ1UdaN8WOZYl7noqgOkzJuFxc
	 guyp6uzUYhUBufyONZNSZqEVFVrj/EPahvCfSuw5sVnXCuc7oVoCp8UOnG7WTRTbMv
	 AD+fnCoBiVBlRu+kxki7DxwoJdrO75ylylj3nnb6+yilSEBS1b3AT1kIdvPLTVdoSN
	 A3VF1KhFM05Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB71FC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171681086275.13249.2282813321788614997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec02478c2670473631d404bf06d85c226030d01ce554134be97cfa7af072f63
Date: Mon, 27 May 2024 11:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716810862
