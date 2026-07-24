Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595424908DC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784935834; cv=none; b=QjoEon0m4rKsrL6niAJa/FEITQDUoCo4hBmRavKdfWyHWB0G1el41r9/qhUZahUPEwYqLduqBygielt9J4qzq4fGTf473ITNrWlVxGaAQ83ZrUdaZ5ApWuziEqPVKVPeznFdSkogA8pTEIX+gZXcUtS6IZ2Dw45VqvQlkqezABQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784935834; c=relaxed/simple;
	bh=42U58wIRylNt8IJ1z4XDVfhROfDXfDJnoCB2BdWBN6Q=;
	h=To:Subject:From:Message-Id:Date; b=iXEmAqRb8CuNfD7jQsytY520fZxRx3eXQS3W/d43wMxC8527GqPMK6xQ9lPOJ6mHx4o8CoE8VIWpN04q3JoeyuXZzZ+HL2M8Qgm07PQdcrW0sD7VXmRTNoSRhtUV0i56wxRqVm9YEDjLFEJ7lQsyAWbzsw3EwYs9vjGf5CBe9LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEmeMDWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEmeMDWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D49C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784935833;
	bh=42U58wIRylNt8IJ1z4XDVfhROfDXfDJnoCB2BdWBN6Q=;
	h=To:Subject:From:Date:From;
	b=ZEmeMDWC9+BTgsyIR0d0RSSp+gITKT7fE+3GPKhrh3ehaV2btgCUzu2EZVSC2LHP+
	 hrfiPXFTYOAv3dCLhuMevK0BKU7S/rqLRoxi6pnOQPs1ibbi5zudivocKzXhPf1ZHs
	 UQDAWQEhYkESpfkc05dXCG2HvlN1f7oo7BT7MdDePJveTBdLWaDpixaLfx0raM54IL
	 mlnsLwq45dpkaLIBKbTdFH3mHC2iy/2H2ZGIIPMATmrozpBkRxw+wlzVnr+i6kK9KA
	 NOskVsRdjUKald3DVkww/PyfUa/kJ5FS1cqSYJGvfPfo5igWwzD1BunrVfUJfdqmWn
	 UMdgGV1dFZH/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF6DC531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493583368.3710.7955810084817619129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fbea5aca543f2c78ca37455d9ca9bd43def034569890512ca5d87086f2ab901
Date: Fri, 24 Jul 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784935833
