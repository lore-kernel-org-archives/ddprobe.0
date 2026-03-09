Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3785305064
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773036894; cv=none; b=AcEe+ZM4Cc88ScxRql5eqCcbPX6DLsirW1ruFHOdgO4jvSnB/86O95PaCVQeGmxHpeCkCs6rRlnILSY/mBs1PKo7OQVUQGMPqDuNssvEDFo4ybPP1bV3WJd0ISVxp9M3++HE7L1yayKETnPqnfq8JIiqN3HXhbd1aOAebkhYSJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773036894; c=relaxed/simple;
	bh=A8S57P9gr+DhHEfrYRLeQChqQMel2XG1h0HosQIme64=;
	h=To:Subject:From:Message-Id:Date; b=k8jhsY4UXpgDGSC0VYk7F3rkNP5qQzp29RdTIjxZwOt0Eh1o2OJUmqi8pnbN67KKXpCkY06YhU/wpXyzJULrJsC+jEvVI/ddk5KbczASsEVdZadRj5i2EcszX6XmQP734I5R/4ImKhW5piTfnH2ANk1Fml3hSHQlAdYRgjoHV0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saoJrxuc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saoJrxuc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A004BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773036893;
	bh=A8S57P9gr+DhHEfrYRLeQChqQMel2XG1h0HosQIme64=;
	h=To:Subject:From:Date:From;
	b=saoJrxucFncuvfMU8Xi+llo4AUuwQmZ+OXd2A+kqqJnnVIsyZPbSU3I8au52aUOvC
	 0JSthAuYWvyBq4WJl/JAYN2LpuyV1PphxiHYSgt+NYAn46S/V9nPMOVVHyCI3ghF8u
	 4xfyAEzMX/tTHqAghz2P5YfPtwq1n3xeGV14YlK3XMwA/5OIYhSSGuDVfXInxa5Ibt
	 5Y+aACWxOfBVCNFUF2hVHIY/wOBDEKXeEnyjGBcslp+I+8Lpy1idCRQP51fSd4+7cb
	 BQGLFdh2G+SIrc+lknDsnk2ecTIBJ2uIjr0FujGLaNQvSAc12EomMX99TVbdfb9LZb
	 PSa2Y9jTlzu8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F04AEF36E1
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303689357.1259.3032274515887503600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc4e122a0824ab68f1d95248bea2e5a7e2c35f7a2939ca92d018036ed95fb09
Date: Mon, 09 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773036893
