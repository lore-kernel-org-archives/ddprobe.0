Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3EC3B27E1
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779911554; cv=none; b=hoR3YE1X2k+hZFTQs8PuEX9ZpxB65nUA6Borzj5XdJOBtU2yYThXtIhCMFZEny+GGHsWHWAssf0Egp4MjFj4rl34GPNAjKReVhL26ZujxSWRlKL0jMdfFss/AwsYZI+tA51SyuRK8UqDNi8uWZLqKtoj35p8fP9EO8RdkKIjoXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779911554; c=relaxed/simple;
	bh=HRADK1KkWbVtUiRlg6k+Q0+GDbEHQHSSowLCnrnJPOQ=;
	h=To:Subject:From:Message-Id:Date; b=Lclax9J0Feq7JcJQMIo9vMKhozmCdjU8/wFcTq+QJkZQeaHDWi7bXOOa5DdLRKwhle8n4MLck3OCKUqndAFMry6BPqG/9TPLJF+yhUq58916vljCxuOoy+OVxJuQHXDybtvgV/zdCK2Idc1j9JM7ALR7YSZP/uV9u8wZdKDe324=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkeCjKbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkeCjKbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4694C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779911553;
	bh=HRADK1KkWbVtUiRlg6k+Q0+GDbEHQHSSowLCnrnJPOQ=;
	h=To:Subject:From:Date:From;
	b=XkeCjKbRBYabvmRA5N3zhTgAWyqH0m2ThWD1Dut8RFuNm8ZfwKaWOVCCZ5TeTgiWm
	 000cB3F5bJM/BZEMo4vnyj3grrguK03mKkcAsp54vnyPPVOEDRu7OtUarpYr4XvfJL
	 l6PP6pSYpC8jhusHOU84ClYY8OlGlljCa4fmAajHDkS6R/XGSeqKXxUKfyBF4aD7M8
	 R6g9gBZoeleWoJAncczx7c2SMUrLFlR7Osd8kH4badquJ/FkqoVQmyxmZMQJOMQtyE
	 av2P5Z38kkpSN8RxDxbClM/y7dm1LtuGLCnfWpU99hFQkxygQD9b9Q9d9vzDX+VKNd
	 ndG4tUL+2gV0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC65BCD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991155369.10572.6701469018874605301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718dab9b92cc2495e78074c0e73b47796fbe3bef53c9f1a12b76f7078d5364b9
Date: Wed, 27 May 2026 19:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779911553
