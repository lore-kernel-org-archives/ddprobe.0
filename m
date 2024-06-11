Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86AE4171640
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 07:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718091503; cv=none; b=FwDTSGPGmYeKO1Ig9IJZnUW1l8cYyueijAgl5e5tTcknOVj36Zt1ChPVZmh2pf77N+gNC7BgPKrDmhNCjBQWQ7CLhH0DbFiXI1iRihjb4kjcs4IWg1GL5ytkIKIWN4CLMadftnl9YlmGKSi6Jhyukn2zsHQz5QZYbTKWOJrZmtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718091503; c=relaxed/simple;
	bh=kgbUkGeLzOW7A0O22g95iXKwjf0uZ96PWHPmaymje54=;
	h=To:Subject:From:Message-Id:Date; b=pCjOfFjIQ44Vb2kszIZv4aEBxjdkD9RjldWStAS/gOa1R3SVCFIFUZDOkajU1IyflHSVSROJ096Vw0hWtQY8UP9/nUMRa4MkMnqc2NWwxHADPTdU8w7WkQygVLFDGaN3OXr1SJKcpsIL3y5WrHESktdYhubagu7iGJZi2sTmrGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSbb6L0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSbb6L0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2BC2C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 07:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718091503;
	bh=kgbUkGeLzOW7A0O22g95iXKwjf0uZ96PWHPmaymje54=;
	h=To:Subject:From:Date:From;
	b=XSbb6L0bT6+fyqfysqxfNRlF8iRAoq9q2Y9auxYupiWugVY2WVikaZIuxPk8KykFl
	 6V5TxFgsAYy3NjMmg7NOGHFXXZKJEB47idctDYlsOHcsX/oU8BN+v3/vg26r+b64Rt
	 YjvMS1VCnKCSie+BVZLANGcMWjpnPg1eVqss8gYJC3b/AauiZVuIfoFFF78YmQZllX
	 KvW1xCxl1C+QfhLT1VWABigDTSUj9h1ugA4ehIzDpSco2Nb5ETHe5zDGq63cn9QGxR
	 +A+7HN+9OA1kurGQ7poFSe1sYbe8cKhhGKUnnoml/GmwENkklCcbZT6vWDS9PJEozk
	 5PrHjXvkaIexA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB22DC25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 07:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171809150285.9071.18206720948263928521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94d6cf7dd038e860c45249318b979a3c478cbea06dccec7820eac69705ba351
Date: Tue, 11 Jun 2024 07:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718091502
