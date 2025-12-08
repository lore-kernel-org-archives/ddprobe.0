Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C91281376
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765218174; cv=none; b=K4rNU+yacdHC52oy9Z+oEnrxjDL3C/J27nubSm8jPF2YVb/TNW/OFdimR5JBpK1ghNEsTMR9lM/fTpLX9+mo28rqZgp/+HOqO1g+2DES4elra+peUVRq0uYPJgl4r05tIINSw3+atRlScmrXctO0WvWHweaViglbZeIeGJYorxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765218174; c=relaxed/simple;
	bh=Ko1+WBbW8A+0CeIL5xwwG1pBI1mX5KzxOfpPO+hl7wA=;
	h=To:Subject:From:Message-Id:Date; b=NazZeybalE7yxHwEBIo5mzCoddHREbchYyQckYCVz4ORq0u6cI+64Olw49k09om2Eqn0XjZnnFvIip5sOikqH5p8zhvZVZCQYXUcX+jk68cUt8psw35PcUqGj8m8o00Z+EFA6Jej5rRPr0ioKhDTj04pIKj/gg2Ck2bSRhNYXE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oj9VSjEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oj9VSjEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8201C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765218173;
	bh=Ko1+WBbW8A+0CeIL5xwwG1pBI1mX5KzxOfpPO+hl7wA=;
	h=To:Subject:From:Date:From;
	b=oj9VSjEz9FrHKZk0V3pF1zEtAxCKoiUjpvCAYkRQYieKRscEfRz1feWrcHuzaDj7V
	 rp/jU0SPtdH1I275my9Od6C58cCh/XjVpxCoVcT3DmGLJgEJo8qsMS011bP5wHBiv0
	 hX4vknHELy645HyV2wOZllGkPOHOA+zbICNrvhL6FbLgR7l6FCxRTRzd0bIgDomzjN
	 S3xXmMha3IIW+Hk5FDWAWKHl2GjwOrWSJqJaoX0hpGc49d5S3n1QqRmHrQh+d4qZXi
	 lpeLNZC2am7h4oZy6JffzrfWbMllJi9kF6arP0ypfNMybKu3JVOmIM85MIMSxlwFUJ
	 MoIoZ+6EFoKrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CBFD3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521817359.17531.12090076721543143221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9400651c1988bc864b4f6b2f7b44514c4da313a48d25426d7c8aa7ea179ff7f1
Date: Mon, 08 Dec 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765218173
