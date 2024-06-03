Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDE919F
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 03:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717386323; cv=none; b=kUll21aelk/V8LHF+bEOPJxfHy2/PhQrUX5iYpZVhtoubFV4rVQBiuh/hPjLbaFWci2OmqYUyqctyFCiO8QlAmPvlWV2S8iNSF+lppN0N74L6u+D874feH6DSwHDU7a2VC45bvqD/Apz8R1R/0oohRSe58v62D9hBoL7PHpyj6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717386323; c=relaxed/simple;
	bh=EhNGDLphSCiGhI+XwOOBdcc1LjzPIl/DdXwZkLSdtNY=;
	h=To:Subject:From:Message-Id:Date; b=bdQNY6cpkxIxS/OhQNxNbc0VozsjymyzTf3M5iK8Bhxg+QSA6MHaMQr6pS5RWA1CVCj4rFH42VtmaifwHF/LS7tIj3EJR5xDeKMKCEu/D9khH84r2Hzo0EHUlG5QshatJhN8yT8HifU6BacAGZLLOVHrYR8BFOdlcuR5R64Ljp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muWBiMha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muWBiMha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E92C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 03:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717386322;
	bh=EhNGDLphSCiGhI+XwOOBdcc1LjzPIl/DdXwZkLSdtNY=;
	h=To:Subject:From:Date:From;
	b=muWBiMhaVuKlC/jpX5qnVomMinYOExzhxbQI3LeHDjokm/pP2cc3eLoX53B/7hxjs
	 rnmOcdAP5FSQJ0FPP9ss2Obn7jJF7vJm3I6tDPtTFKMTFj9FJpA+9VWvGsDhXm8Qil
	 2P0wflYYTLbb6ee5h8pKFZYzcffX1tFjJbMUB0DQcMD63sucgWWDlX0NTbcM3Wgx7w
	 cuTlm0MeT5tMHjdvZyUmPmR3855wrSmGzIEuRXE6t90oLUQGlqoiRt2ZBz+KgdF/kr
	 e3ph8Mh4KOq2HRQIoE96UtbR/cOG3NYQ++4yUL5xUXa9q8wzs+IsLhcda/8bbKpy4W
	 COFFCq/G6MpOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB772C25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 03:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171738632276.2132.15292239070033027945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b90cf9e952d6646d5ea0257bfdbac7353011df4b2c1b857d6e0246977496165
Date: Mon, 03 Jun 2024 03:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717386322
