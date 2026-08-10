Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCD542DA2A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786386634; cv=none; b=pMd4TKhmxyuUS8A0kKZpkbLZwP/OrcgiPtxPDxUbhIlmWHMQORmHGaaB7Sl03FYWJx9ZOrMeDwhXqF1maH1Nv3OUtVoCi940SvFVWXXl/GO7QyQLdFiRI5pjhV6YM7IA2FdrGVnQx9bAWDfuztotTJDaOWbTAcADiYkndJKzNtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786386634; c=relaxed/simple;
	bh=zzffTAo55YeoPSN0Ch0IQpiDhmqc+Xrose2wfGba2d8=;
	h=To:Subject:From:Message-Id:Date; b=KAwdYs0rAXCY3s1DM0b9yB4il3ZVYqmpdTs15MH+2CTrrgwJ+sxb+LmZq6x/wF41JBRda+WG2LYREGkPSPr1TkKs3FUsT4if/Kz2vpUD5tpmVGSUbR64HDYLBdWd4Yt0f5g/mYWzCu6F9UH21SwYWLLeHM9BH8E84QwG1PwKlIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8ge89jv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8ge89jv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4A9C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786386633;
	bh=zzffTAo55YeoPSN0Ch0IQpiDhmqc+Xrose2wfGba2d8=;
	h=To:Subject:From:Date:From;
	b=j8ge89jvBMdBVnVBy1u13F8tV9DuJ+qA1z9NZFYNuKlOLfArWjh89xUeqfVgTdzTz
	 CP78j/gJfKWHXJsr/OYbf30GOEzJK+cU3dTTaLuIZ0kuatMmJTdxuwxzI06clc4aAB
	 8KApmG10vtbT8Vq4lJrIwgczqXs9a5ktNdEl+SoTtY9ordzvRM1qNPQ6/KamBpAcFN
	 csCAUZ/VBvqfLpzT8AjNztOTYTQIuATX1cUQkRgEMEX1otQS7Xmo9HkOBB0OsluYAw
	 J0NEmdODn/soD7JbNKUBvM2nfIP2YQEpID5qIi1c5kSaB5m5BzBFmcZqiSPRJyn+3N
	 LPyPFX9Xi72lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5274C5B567
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638663372.9991.13109747763532522348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9fe153b8fb01bac0032041d68d1bf1d3d5e3071943436237477f47d1433a10b
Date: Mon, 10 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786386633
