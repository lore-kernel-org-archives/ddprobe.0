Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEBBC4D9EC
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712441297; cv=none; b=kUlbMU1pffd+MHFRPK0/A8mR+c07yIeOm1N28S0qJ24o+YXWjygqELHCd3dj8DvbSDmCi2eZrfsPaXMj8gmLPnXS1Isku4koRzCbwbwJt3dBTjUFk/R+qoyHXflEUxJI/00AIfcP2mc9vBNjJqeqybisvTniafk6ps97uqXtiBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712441297; c=relaxed/simple;
	bh=kfO0TUK+H03bbJ7dFJ6Da42vtQ9NoQdnBoVrxhSGGz0=;
	h=To:Subject:From:Message-Id:Date; b=e9cN/E5qdrkXDp6gqDBuQ7gL14fI6ECXkt6iNZRxk6eyJOwtu0MiImYOh2yJMr2roG3NCB6xY9m/JYugA+tTfofN96Orvtb68HdDUVMWtBVFeXFZdX98Vslipru7SeXhlwjtlSgZKu5DRw3PyB37b0yZDukPNsbeOwANM2WiGzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbzmcpC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbzmcpC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72CBEC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712441296;
	bh=kfO0TUK+H03bbJ7dFJ6Da42vtQ9NoQdnBoVrxhSGGz0=;
	h=To:Subject:From:Date:From;
	b=EbzmcpC0Plo3aAINf5Vpc2WAv/RX0rJSY4XjUK1+x+/LKfGNICAZ5Wii1Roqkxk/H
	 X8alqUpvqM2IsCXUfPMEbj/z3XCW8P936zT/lavaj/bfSRQnsQZCgCfF9QFJlo+BvP
	 gbksE4oiw4/44H9bhBezGsulyc4es2fiU6xD99hI/Q+zmWkVBpH+XJzmsklGzNQI1l
	 JW2o+KHA5Hkzr1ZsZLmTGgoBaCLlWr+3VoeXD3a8XvFDtlkRDtbvgPd9e3tf/77kzE
	 OniV4PJir1VKhXYhddpg54GDT5b0umolHXizHhhykTJAjUXGJ5+x4iehTb2sh9lFCb
	 lxJMwQOXNAi9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 603FFC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171244129636.3658.5300646479302803792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a33e6bb0f1351e45ae1d609f6c463dee45c783b205d5f2972ab18e783505e78
Date: Sat, 06 Apr 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712441296
