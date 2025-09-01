Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2572D593D
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756749594; cv=none; b=Rle68VVrw0cYZsnOvWv5KZ1LuCb8VZNoRdsFQpWuTUTYBYnza9aoLifVxd3zfoADHxIRg6DjyqVULLN3xXQEtp70bDblErsNw85+PpmR3C5DEAe9AQ8Mwrqg9GBOT55HKb7+hCvn6C4bh0g8lH3O4Zej1+/FgJPNXP6qddsMjeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756749594; c=relaxed/simple;
	bh=Lo4OEXXKWMHklmgxmiwwSTNGSUGj+LiNQpZLjQAk9gY=;
	h=To:Subject:From:Message-Id:Date; b=KE7CusRoNdKzGSg1V0a/MEymjFNMC9TCtZPmI1tD/0LXOs+YSeGYloB/bapr7PEq/qgF2KOLM7iMS7Pnae0RgLfHhT/4XglrDI1vfWhz2vvKhMh8oe0C8HKyiGUxGXrjoIrDwSPd3XN65/KvdjNNJlMvUIzXPy375RAfqCikzLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KC9A7vg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KC9A7vg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12ECC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756749593;
	bh=Lo4OEXXKWMHklmgxmiwwSTNGSUGj+LiNQpZLjQAk9gY=;
	h=To:Subject:From:Date:From;
	b=KC9A7vg3zW9iWBfsZMGEZxavYx71hSn8u1rPDQGtsXxOkLeAv9zg2/ilPBKz+oADz
	 bxnOX2O++CDoTsJJvxOnEOY568TycHQmCD8S/Agp/vPNCmNFWvjjfMeYePNcxw2USo
	 mAETVKCgr7mu2VZ4JS+CtY8h9lj0mHtyWMXPyicEGpibJTCG+G8sYTfsfqyeCy3pG0
	 +BVPbqun0rhbk4nm9pm3ki7zoFNzeJg+ypIb+DbSvPKu+la+IfGNfJJA8Y8yvUp/NW
	 1o3FvG1CB17x4hcuwMQVKzou1qruO0oFb5vhrYMAZWvMvE3J34xIBnldNn0aUIoYI/
	 kwFHqSsW9MJgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F64CCA1000
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674959357.13105.3289946522052992867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d5db201e1cf033706c1e59019d8dc13ae328983c46cace562416cc055805bc8
Date: Mon, 01 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756749593
