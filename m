Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B99333C1B7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779624754; cv=none; b=AN12SEdmaoF7T679EC4ycG8MA9igA1GF5ihEmJNOCLdNIQLkkPL8D2NoiFCO0CNhzrfsCIt2l3TEKoa/6kmxvQklNOa/LQjs4YBvYdFhPyc+cAsyeMRrviAHdRNR9RgWcd1mJAEI2Zv3IXesoO8uZxVlPxyGdzvHW/D7zS5dj6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779624754; c=relaxed/simple;
	bh=Nz6h20UG3n3VphJrBlU9JEtmVKNV3rVamLwoJkwU+ek=;
	h=To:Subject:From:Message-Id:Date; b=odY/7RaGVgNEUsONcJipHIcsKDotIUDRQ3H61C+WL0CbZ83q3yAx0vLXe0b1Vf9pugt+jeKNmkVAlATULadOZEPa+L8XcMwzEc09ejj/MFLbpxYVF42+LD7lEGvTv40QvVpXXu1XZGxbc+shTy7pa3cqaYFHrIAG7gsdDi+iyAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NikxWJjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NikxWJjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65FFC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779624753;
	bh=Nz6h20UG3n3VphJrBlU9JEtmVKNV3rVamLwoJkwU+ek=;
	h=To:Subject:From:Date:From;
	b=NikxWJjR4kJ8kECWDiPl4kOPcpIx6Iux31+7tJ0m/1BJtAbtUOrW9LID7FjBR1AQM
	 oPEEFmpkDcrB/a9f7RRgcn811hA5kTb8oYVuhgG3Aq4hWX/jNde2EICtGOTKsVXm/Q
	 19+Vtw4UAXWckJqL1hz5DrJqIH+zrHikiguHf1OQ960JfJfzFlbolXYKd6Dwc0W1LA
	 Zg4vkkKQFtgJnHZUIY5MxlrpnkcWWAdyBFKuSYATiChga4HztVLULQDIXq66ZlLalm
	 9zl6KHJO9tpVPoDXGDOGy5XiX8x85z85stS+5QWPF7LJmUqb7tyeU23CunTX1U1qOJ
	 V4qGipfZRe6NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC86CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962475368.13612.4108308490275655352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc98a2a52969df6f2357818fa360058be8df0f21f94991070ab57d12f2a3cfb
Date: Sun, 24 May 2026 12:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779624753
