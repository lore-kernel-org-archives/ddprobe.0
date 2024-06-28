Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A961860
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719534263; cv=none; b=DSx6cmr4/TgESuZehC6mbzhYoCDKGPqbZtCAVTgjjydM06+c+YBCKeBOxr9xlwdLlIBka0sMd3yU1GnF65VgLUt13AFX0WP+LwP/feUcKpwtrLWQ5AjSYKoh6iTEjEu8BAFF25ldRz19xUQibZSzmD62l7GWeyRsgO70RPklhyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719534263; c=relaxed/simple;
	bh=onamnxQ7OToDy/qAQYI5XNTdkf8TyFFbt138a2MkWAs=;
	h=To:Subject:From:Message-Id:Date; b=bRC4vT1hbpDMk+naigTRrRYrTBJdfm2//OdIMcNH8J6xcUOG3htp9yAU3rHSlCaswziRBMlNnpdHrdxvqZlfbM9+2iKDjpjX2z9PpiQhVnUYiJXoymsMO1/y45GjJFcyhcDDBmzlLAlolov5my2nIMJbyT+ATtJJaRpROiDf+Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTp+OGU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTp+OGU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7CEC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719534262;
	bh=onamnxQ7OToDy/qAQYI5XNTdkf8TyFFbt138a2MkWAs=;
	h=To:Subject:From:Date:From;
	b=BTp+OGU6k8qr2KQOQ0k0AvwVlEhutZDUzTp0oeeXtYTGj4MMgzcMLS4B+l4nCetJU
	 465kHqHZjt9uyTJtX/rpkTPvgfzttcwKYZSQAmdJvvmDyIJL+ux49RrQMx1H5DifF/
	 7CaCSkwYyUBc5VYGvz8EmEN1QEAozQBCRBOXQ3x2uWtm52Jt7DxVTQU93rG4Xgiywb
	 BnCQu/XMId0R2+j4ASn6SnUJZWaF1OlvEENI3lQ5QeykRb29dOmsJe0EGVW8a97sdJ
	 iNNFe6eP9YxQmN1506EUTZn//B49djI4AJCv/KrU5HJntGEoivgqlKWuJzWaQkOSV0
	 6k/TVq/Cc4Krg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA334C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953426278.3525.17384880228260522403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5a6648d42a9074e54f1a5ce6ecce7e206b53f575a02052f9e2bec7c15f89c3
Date: Fri, 28 Jun 2024 00:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719534262
