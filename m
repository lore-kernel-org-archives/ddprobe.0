Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDD21DA0E9
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733471754; cv=none; b=H51sIlS2ZAxriO60yslN3wvF3ri1lW13fQgYuWLN27C6cE4vbWzO5S7+JqaA5bFvooPtxPDQVA8XywfREHHSZgkKqvOh29PNqX7pdpEzWHDXen57N/ImgFNPI4BHWKTd2U+relDkezhrAunJYt/iQYbrgl6rU0Ul+n08BXQGL0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733471754; c=relaxed/simple;
	bh=zMtaEUFk/MiCc9zQb6SLuNsRElJrzrTVNIlohnK4MCc=;
	h=To:Subject:From:Message-Id:Date; b=iHFe8E1mjPSgj8LcZ/ypMXPT4hOXOzqtmmq9/AaR4yYtDaebGN+Qm60bc6UIMI9rk1enIsZF2bnWDRzIWh9AGKGXJVjFhJC/csawTejAlnlnOgEDIijsB7d8bK4UlGllRcYP8+jjo66nHCKh19Xc4a9HmKqM4oSipe/gC2g30PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJ/1fhs9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJ/1fhs9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A45C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733471753;
	bh=zMtaEUFk/MiCc9zQb6SLuNsRElJrzrTVNIlohnK4MCc=;
	h=To:Subject:From:Date:From;
	b=LJ/1fhs9H7wQYYxlFUEw9+Fm0s+CUW89vg1kixhwm79Jtk84GTbiveXIl3Ba7bice
	 4sxrKbbSeejAfhlpvOsHt4X8n/BvCQ/uzF54fD5r48yX1+/V1TsF2aexvUtRDLfQ8p
	 djZ02RphOrGRcmjBmG1dOQyx3CxgauknaQA8sYPPgs38uexa2V0QGiJPQX3qKD3bQE
	 zOTTVRZ4/X5AV9TU2t61j3xY8v9YFznXgWXDonFZqkXyFaFEHpMdLnoQ/aEYrH7opt
	 gaeY9/3td2j5qre0D2Xj8+LFXe+OmPDONEHpxPO1pUdWQvpGPT2tTOEAG3ceC2KO0g
	 Gl5nWNhSbqKNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C42E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173347175360.14494.12551976654524484132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b8bdbb4f917113b91e7474140f596a2620db67514fac9f3d6747b88d5d5527
Date: Fri, 06 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733471753
