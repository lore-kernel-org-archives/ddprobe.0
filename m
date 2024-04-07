Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B2744174C
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712521096; cv=none; b=ZvAoqsDOzrJOkKSM1bvcn3tszH9DGhEee86bP9yOiqC//AheMUFj/rureJ1L1fC8IlbyWsKZas5DTCaky6rUlPJEEvV9e7ITmKjFyDnRLzIsizzosUDnQVLHqBtuiL3GRJBDrjCEwXb0+aLdQdE349Vdr1FkEAexdhyBzBqtrdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712521096; c=relaxed/simple;
	bh=uLTuGqMfxwHGAdF3jAuiOEjVcCPux31pImf0cSI78VM=;
	h=To:Subject:From:Message-Id:Date; b=iV7az63/HiDVum3uodA3ollgQV4pihPjpU6h4l3JotF0vq2XPRnuxTcYiH4S+q4Oe6LwDXj1fgfej5wevc2zT113BO6+zYCPgChB6vm/yoRH5UYD/u4y2NA3Q48y3NO+twtBodVacHvBgnFCfC388+fHCnZwE1+pSGZ1DFnxXLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iy7DvNq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iy7DvNq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82112C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712521096;
	bh=uLTuGqMfxwHGAdF3jAuiOEjVcCPux31pImf0cSI78VM=;
	h=To:Subject:From:Date:From;
	b=Iy7DvNq6wbYpR58Pzzw6Nhvut0Qf2cTB+7AcL9NoyndPxJ2jMLef3bnlSaQdf1P5G
	 bPAAvZRBoNwP7uaotWn5psmhcOC5GSl47WG6GOGWocJ2qPV8g36E/LREmmVfexGzq2
	 JmugDZEsaNHO6DO6Wk0vrq/jWL+Qpshme6aFVijovVtsVZyet7hzSlhlAfkzlC/8/k
	 02pGlWDE+7fCFFKcZzfXr8efH7O8Q5cfujWRaSdshEPCSAAQtrWCocqDpuBFSmP7SD
	 68jhDRz2LzAIO4qqqA/cTYyr5TH9/rjdu7PE+zMlNr750W/WkSGtaVkW1CPbFWJn4Z
	 XJ7OLfpr9xDvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71747CD1292
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171252109645.5759.100114221973770645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e424fca4ccaee0175885e3901c101ac41d381ca0af98b40b1e7d8e0d357f25
Date: Sun, 07 Apr 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712521096
