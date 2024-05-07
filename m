Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1BD139F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 01:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715046743; cv=none; b=TvXxNY1VW9okULKdU/frUNI9eWLwKFRcyHX+JFT95nTBK2WkkJDiHXs2u8ftunsPrWdewzDLKd0CfKk/G0Fbc0ZpkHo1AeqIIAgju7tla2vzPU8Aihr6mxNsDbz5acncK80yuYC1J+Jabrba9ThArVB5N+2yescxqAH7yRXySpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715046743; c=relaxed/simple;
	bh=ayCyzxiB79swpxQrsG1aO5JRjaW3iVbpToraLq6Q/pY=;
	h=To:Subject:From:Message-Id:Date; b=BjIoKihl4hm0Ro8XmsuA+VN0Awne72lQZBHcrQeRJpuBQ3qVFmLMz6QJSWB97SpKxPeooTTqrmvBdHx58JF07PNOhbEC/dje1CT9H2W3HJDKZ0MDX6XLS8GIwMWdL09IY6GmlBy0hRrxZ6DUBrs6ue+e5HEsRGM/OUUD2SjJo2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtQvlCIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtQvlCIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABB5C116B1
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 01:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715046742;
	bh=ayCyzxiB79swpxQrsG1aO5JRjaW3iVbpToraLq6Q/pY=;
	h=To:Subject:From:Date:From;
	b=AtQvlCItEIbfeAU97/gyrjKz3SUtXm9k47txudKY493rdCNrdgSJsTwSZW/Tkb1Wz
	 B7L3WH7O2FvlGz0kSssxKMyY4BWqFxadSPibpnMIaXeF2lcM4RTVnPQZAlYZVmArPD
	 GV2ePmdFb2azrUzz4apM9TOoTx4F5kGRQeGCkD1nlwG0fLhKx36t9jYKvshyOQlRpe
	 DQ5OeGyoEGUoF9fdP2vh83YR8eVR7+6jwqJXIC6U+o2nTiODLhVwPXSpfKf13bhCQu
	 Mq7L94Wa+nFA6WcC2LP5xiWrIC5irti1/YYlZF57UOe8CRg6Ll/GB98utLRPEw24D3
	 KKERCD58oF1Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA7CC25B10
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 01:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171504674275.25483.7856540307647216662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe42f70f060592260c6af2c99557e28231c64565890fd85f817b58ebcdfccc8
Date: Tue, 07 May 2024 01:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715046742
