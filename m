Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256E174068
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732197354; cv=none; b=qL3kyMbxKn7Q32GjVCbQ6PS1yqhsq8dotztpLXrP2B09teNi9EdDhE0T98I70W1d9MI5XmmI8qT6LumNBzlj0ra0Jxd7ziEKpBP6GpfogU3lAYXuV1JC9+OunX/HsuZMqCS/IjI7kWvl/LGTCCJ9LtJENiysVqcX8Sxjz3RWLgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732197354; c=relaxed/simple;
	bh=QYHm988XhJle/a7qMWlaLiw84cpY0vjQ+2TojG+NLU4=;
	h=To:Subject:From:Message-Id:Date; b=DWGkugB1O6QB7jJOz+TSS0clZ+dtJ4WsmU1GManJIHO6aKRvx2+FoN2b4p1v4zK5hOdGhKrDhYlU9AfDPehPECS3ZsCBu3JnONvZakdYDbjCJmxRHD4GlMbtwZTSfNyabmrMrBhNcW+uYeZYVRhZLEE3QqPrTeRdchdspQxROdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkRo5rgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkRo5rgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CD5C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732197353;
	bh=QYHm988XhJle/a7qMWlaLiw84cpY0vjQ+2TojG+NLU4=;
	h=To:Subject:From:Date:From;
	b=IkRo5rgX3Bn42iU++N2jbhfWg5iC8piuyC8d9sMD61AvBVFzBCTquVSs03n1GY1gh
	 ZqGDaHvXcPX408uIfErJs1+cr2n0+OZB9fOU0XTXgHl3iOj+kSUDoIVA7IrIEOb2E7
	 /XQRM6LEdonQxi0iJhT/OVkbVlrv51BQVLuyIMewcKFGjCUXsGzn/EWGkD9PpuoSHz
	 OZzSADvtpW82WDxoSJoQ8RY6GpgRGJiYbkNA7+3aDGO5U+Z0V7h+UYE1Dq9KnHp8YO
	 Ksz+GaGigu+VdwV/M09C22EaCk6FSAAFAz6+y32Ay6Y52W7pajPa1FNLbyjWIWOhbk
	 p+W95YiFfv1ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FD0D6ED3B
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173219735358.19311.15626740227769201981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40272d9d237e4dcf232887d8b8dc88e5a60fcbd7f6ca202b18f1558ae971c7e2
Date: Thu, 21 Nov 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732197353
