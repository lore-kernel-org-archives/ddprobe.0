Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B64D282F2A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791897034; cv=none; b=cEtaDB/yZyi0dAFNgf5ekFjWH7xkSJvPUz8T+rqLqSGQjD7G84hkL5J++YprWWXqDVc0TlEZK6kJQZYAZejvRc4U3QyC5U8e81E1E4EvyGiCoqbA64MwRShbmNAQv+lZlRBpsaXb4dglhSy9GqyDRmSdv+gaSU9FrVEIQzM9DSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791897034; c=relaxed/simple;
	bh=z7UXBmULKPYR7H3y3cb4PvfQqdsVMB3MvWnKwYSiatY=;
	h=To:Subject:From:Message-Id:Date; b=CL9me0mJ8ENq1gofsdd7/f9tu+LvNrFDr/Q1p/l2MTQ6lXdBImMhmwhWWaIwqKpFNjPTJJumGycooI8vbJeatUVI9I2h8jqP/DhlV6XcIvFt6dBPrLyZOhtFewYOqgzM6Yzad4WgtTMkC5PbCHXPWm3AaU/bpBkJudlrleFPokM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URzqodUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URzqodUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D317AC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791897033;
	bh=z7UXBmULKPYR7H3y3cb4PvfQqdsVMB3MvWnKwYSiatY=;
	h=To:Subject:From:Date:From;
	b=URzqodUw7kRPLKEI5rxyQbuhZkksMM92rsE9z+tNknIF716MFzxSmxVKuAm1J2W5+
	 5MWZ8ItzMm1bMTcTtpHESNurkoUPXeGdh1kt7cFB4PtI+tqj9cxIoC9TgEYAsrZzxt
	 9u/+qYKtSL5lXiXsbXLFrn8f2czox1pex7WstcyNsqTgLvncCXcH4Qpx2+Te5tpPSM
	 Hytn+E0QLHSJD2yOn0oe3kwmBqJmyuAj8HESguzgeZfdi267Hq6Q3DpaWe/3JUC9lO
	 MwgZUoL43wilbqKIJrlyL+IZ1cAjSSgW41AVHuUh9YW3I9zJWss/cujJp0l82/ocQl
	 yCMkw1SHEbfWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE513CA9ED2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179189703370.21708.14989009961505641458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17fe1a4b8413b662e7345c0b9b04f87e978b9d78bd0249ea389844057e1250d
Date: Tue, 13 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791897033
