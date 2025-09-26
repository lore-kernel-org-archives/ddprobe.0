Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398F934BA35
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758851994; cv=none; b=dBEF4j7zABveqmdErTFW9sg5rNAM/1NrtaxtIsZ63lR4zaPJfI38/9rMGHGs0AGma0dHyACxnaZlOCMw04MiGNRUGyIk9Sos8pDIREcYxvI1u0MjrATFbP2K53yFr6EVhbujUY0ufxDhvq6I6veY6PpvegWo8xasZ5aHyMOcqD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758851994; c=relaxed/simple;
	bh=o0BJgH3XXIVG4YHgN3pEwc/ShQm6KOA0po9WADtyklw=;
	h=To:Subject:From:Message-Id:Date; b=qwemXM0+RNwMzwFAPS/GO9yXMIOjalbPGq0CI8TVcYoPmxkDvMyVkk0KeNV42dbOAQU4n9vVnlWxUTi208oBSGWBaSqQOBAvq5gUgI/GtFu3B+nAIYwdOUZprYBsyRiu/LE5bdk5dRfl0PtZ6jmajINNiukVQMHg8MqvrUvUNtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUBgaVn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUBgaVn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BFFC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758851993;
	bh=o0BJgH3XXIVG4YHgN3pEwc/ShQm6KOA0po9WADtyklw=;
	h=To:Subject:From:Date:From;
	b=jUBgaVn3Q2uheZWxvs4OBpfEXVzFcMiGW3/XgDypl49hxxoC6DJHbeSiVV2rON0F2
	 Bdrl+5vXWOEbuj2CzT741xEZGh3KRAEFV6Eij6yXqv365uw0iFaXvjSiCURM1zzQcU
	 lgvG9WUW/fObviP/LbYeKNDG1HUveLZIHpyyMlNhdBTRTImcDZcdL5gDOujSkK8EsL
	 T8pGpMVdUaWsIyW/35cLgyQShzDT55hXxy2pZewHMOntqO8r2RX+QQyUWc6FNgqm07
	 D1IsNvUsOQaQ8Y+d2/9BwVuL7mLr7K2mY6hhWMnoiIepl0FlQ7PTqP7y84GPl0mY0n
	 D1RGaCeMlOioA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C00CAC5B0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885199359.16554.9911073603646551968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2816e2d578cab25f158c890040c3bda65f6ca53649987533bd6fc0be08b55dde
Date: Fri, 26 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758851993
