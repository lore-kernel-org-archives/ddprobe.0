Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640503603DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787328034; cv=none; b=aKJwkTRfjMZdVY/wRsrIA+FAp5ZbzsQmgS4SqE3WHSC4ilBR+wg3WW4TDgEeenTqc5k2Qp8hNcVF8jOCN8G7L+OCY6qzO0rItRoSNoD74VK39zYJljRmCpC8yvGOMi9owIDCTG3M3C9hD0sd2cNyebsfNbnTnTrlhuWEDcbljB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787328034; c=relaxed/simple;
	bh=q/qyl5Bi4LjS1aJrBVbm5OcuhxqCeJTpSNC0IUmCKjI=;
	h=To:Subject:From:Message-Id:Date; b=ok20weBQgmZVGlkf7/AspE9x3hpLMe3LuwFtHa9yuOVZjVGd1v63ztkdY4X/cPpCjOp/StVDBlUX7e/GXRFGISzp62/OgSSLZaQXqKeFk9U39DNDOtuNofwnzFZWJ6PQWZuyfOjg5kulk4uJ+4f9/g2O1S/+bBseY57bsDoPREU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdiwGT6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdiwGT6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D188AC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787328033;
	bh=q/qyl5Bi4LjS1aJrBVbm5OcuhxqCeJTpSNC0IUmCKjI=;
	h=To:Subject:From:Date:From;
	b=KdiwGT6xnrx+HLCU3QTmWtmDEgv2yBrhRGYpS3l6cn1Ul5h0hEEFbsYrndqK9xNRW
	 hJ1NKDA1NUggvdK4W7T0ZLUi4lU+NjUnghTbibNveAem9zyLjKkhMF3992ti+NiK6t
	 bAAsZK9Wrj68gSLxcIE4++xuWihU1yqUhiL1DlHJ3YOwbD+ZRAy6ss3dZnT0mOOlig
	 v2VS9ReoNH7g0amm0nxOEl6ep6tJ2HgP++xLSMJ6iS2IYB1igyHB5ZnMOeBwgc3RrL
	 PwTFxebVW0/Zb/6g7fKIdhcBxvsfgR2SQNtuYIWBENZgAnTXvV+CDYajCC1YmHVGbh
	 Lk9NVfAfChkzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE74C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732803369.4329.16742909846060656941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e927bf192dcd54e50ae87ed2fb7a68370e03798529598421697f6a92c27110
Date: Fri, 21 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787328033
