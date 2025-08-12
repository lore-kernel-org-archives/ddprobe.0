Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BE51E9B19
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755003594; cv=none; b=GhwtK+yIhRv4q/+iVcPhuZPjnTN7/3LKmbGx7d9xav6CZjZOerukt381z5auJIWuVxwdBFRq/8Mogsb6j//PJ6nq39ef5N72sM7+0RGUgqC0rv7b3dK38CWEi4OSSuKQCUHXYZjefFZQLsXQqmPwqHPAWj/tBi1NfIHYLycRTiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755003594; c=relaxed/simple;
	bh=mSrGQobFFrwZbSxJEVtgW/piY1axBfqmrWPNDdHkYfw=;
	h=To:Subject:From:Message-Id:Date; b=Qc72XQ9aDHqL66mH9VNNgiBV6fMqI0CzZDNf3/UQmcJofSf+iUNcd0+UPNBLhHqluL9pkKTUW5tI5Pspe4QHI0hklRvHJS4Vuj6vUk3BOzpmWsvdoaNch07enqtcUKIK853IatfAYCaqNFI4wnIRCy1ySr78tfOhY9Wek6HMAIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jiiIctXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiiIctXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF4CC4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755003593;
	bh=mSrGQobFFrwZbSxJEVtgW/piY1axBfqmrWPNDdHkYfw=;
	h=To:Subject:From:Date:From;
	b=jiiIctXFr04/v7bELq99QNyjWQpLG8JCMWRUoYVZG3qw3PrwZKZBtkZTwwtzj2O4b
	 uhI1FM0oRNIfDL1Xm570hqped7o4L0m2XlGaxRj+V2+U1UOHHhb1ACYbX/2SV5wG1H
	 8ypvNG1RCVj54gOc9qGZDuce0jP0cnRTMt96L3is3KWpdN8BlxtIVj1WfzmBXDyisS
	 W4/Gvusr7YsF8oXYtS11wz+/XgOlRaxQ8prMxDjMXJSM+2zKUDtPhkmEbXEDQ8MSVo
	 1k9GOxw/13y6cQb/hbrJsH/qQl8NMD/CE0RkifLqZGnl33j2VH3Ln8a+Y9XmqLp8O1
	 jLdMOT0D/8QOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC09BC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500359358.24227.2038067268929584336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3d86b686e1d99a2622fe85dd144c58bb3fe3190e19624b5ce877c02c7a3448
Date: Tue, 12 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755003593
