Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D27335C193
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785813034; cv=none; b=HIJoTJH3IxLoeFmwRTI0VYCLXqr6q9IOS7XZQO4n/APur2pSrbN88QjwjEDCLhCRJ/EJRfnR2UkzmtFeCcEHlsZ64PTn5/giaRFA3dnGmZQBtxB2lrBMJiZ+xxh7rEKwkqnqTxdQ/vdbtLb+hsHodWZLR5CUsHDhOx+w3ERnL40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785813034; c=relaxed/simple;
	bh=sQATY0FuY6XexvllTruySPWx/M6oMsuv2b7ziLio+E0=;
	h=To:Subject:From:Message-Id:Date; b=X185oD3iHw83EqygtSOQC7VE07NGgXVxVlAe4SBSOQdUlu3I4TjBaVSHHhhvqeC7pdUuPuvxPuJtVatS/ajiBsIGlQKEZyXy7oXrRPQV2pv0RP1TqJA0vZHcamMnIC3JYGhqUdfV1UPLLHP80/60BAuTemgSrO7df5L2mCUzaHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkemc0TZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkemc0TZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC45C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785813033;
	bh=sQATY0FuY6XexvllTruySPWx/M6oMsuv2b7ziLio+E0=;
	h=To:Subject:From:Date:From;
	b=fkemc0TZiY1SrDlLgL/NfFLAE0bRuRbuh4zGD9QsOu31BJZw3pr1HBWafhkLorHsT
	 pqPnsGvLI8DSrlBlA3whN6FYI15bWN6Pj7vt2YKOSRzsho8pMQm6lv9ky3vUvze0mX
	 CnY7v1ovEKyWq0iuMIKBcmKKPV/+MXaj8+ArlwPap5XBZzBmAMieMLqRzn5GQAOzmi
	 +LTSGN6rO/Z9NDJaDCrizmTYgOvjyl9X2EYJJ6jZr/eVaamKq4NysApYvzgOsVIV1U
	 zra/ucZXezpOqtsJanI9qv2o8ssrJGCE/LFh0Ews55R1csPzFOFkImuEYhIhtVjmtb
	 gKre9oWA8pFbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAC3C55182
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581303369.31778.6282158363225560630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365a4b3d84b4323f10bf54eb66d720e3d98de886ce3a45625b9d783ce5c8677c
Date: Tue, 04 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785813033
