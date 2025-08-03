Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429AA23AD
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754240394; cv=none; b=dVQHX8pm46eKRD1RxKJlEMHyeXjCJFe9bCuYqBvdZnlpHMvmlJIqOi0icHhTqbH/69nOID6EFX3ztYtRzqucKzfAisLuKYOoQEANo+DXIpgFIyCv0NznKXnxsOpnnbQ2WX75Ag+/celgHpGB7MStaK/bh/IGU8LZMjsCDDXo9rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754240394; c=relaxed/simple;
	bh=otDiouqOPlZtUpBFgKG3uOxi4FUsI1Ny5wvl7ztctws=;
	h=To:Subject:From:Message-Id:Date; b=I0P4YCwpvo5FzkoGRb/9SC2tl8AnuW+Gt8dWWDtkGXSKqYhWys+GubeWniH5Hup9tk5ts+ly2JBcbur11aGUZWYsMCtyXkLqKBYV1klyDYduVkDpP4cblVm4gFm76U+OhqdPcS3Qn72Rx3BRn0xk0oc4cuz7Ka2QECIdfVKpIMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8C60w4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8C60w4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9540C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754240393;
	bh=otDiouqOPlZtUpBFgKG3uOxi4FUsI1Ny5wvl7ztctws=;
	h=To:Subject:From:Date:From;
	b=o8C60w4ZfBVbj/tXlYZ0nqk3QYyrP9d3m8dAioS/zbcEZGJST/6r/Fm5utiLiz06r
	 wdBX6SswFCF24ITkg5lvCyLKbif7dJpLg0Wco5hzYx23LsNwiAm/FmHlFmgnE5klbC
	 tpAKlFDZxr6bMpXfVS7a/pgIjGyX/i85//MGfIWl3t69RKD37+owkiZPFHyCxolb1D
	 48mgO6ExZt9LFEjSlr4lH43KNuWX9zfd7s7hMVV2LGKGsZGN2EP5CGK+a2Bjju+yjH
	 T340f3H6UNZDiBB3VwQhPJYanDJtFMXlNZSCpX79Nvd2YVjgZj8IuLHj2XYAD/mZMh
	 tS16+WXGiT4sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948E8C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424039357.14986.749122878867786859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1a1683589d418676f8833e723d071e4a6d384ff347d2f24b01f19c5f0d9181
Date: Sun, 03 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754240393
