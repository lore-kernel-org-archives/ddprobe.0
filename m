Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446F7322C88
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791228634; cv=none; b=c2lQ7b7jPcc/DGsw5kjfyyMKimYu/lhhCX8nvWK6n6bfconvyTsIH0pNWymClYtHzSw0CO5/9Y+PK4l8eW17cEh2v4jRmTjdfqnq0IovRPEh2+mVhww+BI+/Don1QtugSkeHa3huHxEsaQz2NoYfxq7Vfx1CZnuTnA5Z2GXiYVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791228634; c=relaxed/simple;
	bh=INWkwB1pzsoxSriBBaNwNRzIWtfvY1v/DYEag2f4+co=;
	h=To:Subject:From:Message-Id:Date; b=i1E8IRqdrDNciIsWw/N52LpI6K3QZBJVRxZhxOpmn+aNHcEnu3GIBzfbF/uXX5w60GBLdNeh7nhmZaYf7ppWkLEZdk71mgn1oxjzJFBUpO00NtjXgSkl4RTyav01LbmNahLMcW2BtOA9hmr8h1RSTPM+l4DNfDBlJ5UYiV5r3SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORcEdiDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORcEdiDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D0DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791228633;
	bh=INWkwB1pzsoxSriBBaNwNRzIWtfvY1v/DYEag2f4+co=;
	h=To:Subject:From:Date:From;
	b=ORcEdiDOXI+vW0SAFVK3GCfYp4YvSS78hqxH9n1kEDVj+zjwNowgqIJGgQJhWNG5r
	 +WrTmVGcRGSCyuZqixxM6axrT6PLrasxLhKiLu02gH+rcx8tixSiEytgbNeP1WC+iA
	 IONPrTXhjKKzaZUALZaUTfvJUxuvmUefvCi2+O25dguLQi0wSaZziEq4n/tHxl6CZU
	 Ih1Jdr1JH0OuS3+5ASrDogtLpCqwbW7e26pjc5HfyLlj36h31S9b2fUU83LDekzMrQ
	 K0iiZ5EMAyh//vsxd3n3398o9tqB32sRFRInu5wpX0+nr46EVTFibxy9Ey703UCcMY
	 mZemYGG97n84w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3F3CA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122863369.16551.13386986597001538774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4906988865766646c9b1fefecfc486b99457dff1a0068e4aafea8c6e5063829
Date: Mon, 05 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791228633
