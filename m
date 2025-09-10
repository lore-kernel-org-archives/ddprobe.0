Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAAC337699
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757520594; cv=none; b=cxl4/O/eZQ6zueKtrCERgChDzhWl1uDPnExkIBtPPlx1tq3CvaFPac0uPnEIQpaInylA2kFDQOMwyRm2zVgQgstl7xrlTU6G1YZWw0l7uWSL1hoTJGRa/0y4Bv3ObIHvX52FtQrjq+26ztlcsQLmOTYz5pyCKGD+7rLcCP91lHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757520594; c=relaxed/simple;
	bh=hWAlWHR8EzKZvcxAPtTRKXl2+QKDGqsh7GE9hlBlUjc=;
	h=To:Subject:From:Message-Id:Date; b=Kd6++nboCfjXg4Wl3yYhDBmHaPY5FgT0aHMSFkCvcUtdvId7M4pIj0iWQycv5CGyomsGh+Il8iwfBXF/J+tC4svgULEEISfo4rRZTicaAw5i0x4L9x8NyJe8V6KY9paIN+IF5um4KJvNrc/lPrTwpGbQ481CbWzzDLezwx4lIYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFB/eD83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFB/eD83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E18EC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757520593;
	bh=hWAlWHR8EzKZvcxAPtTRKXl2+QKDGqsh7GE9hlBlUjc=;
	h=To:Subject:From:Date:From;
	b=WFB/eD83W6CcXo9doOmEcAzEyrrlJkB+N4bFJ3SZZKS614VFr/9Nc8mydMJE8vA6y
	 00LYNmJtOVqUIm2FUm4vo4FUuoLkdR2dme3EntDKKr3EJ5Ug/OY4K2AqF4iDlyxOYV
	 fpSDexX8Xg+QxrQLB0exMY3i2sTEmHVuX3dTp9S/dXV3R+qxOiE6BO1WNyg7Ppzyev
	 UAd0ohJVa90uMNUElNiJVApnJk/63DYbEyLpIrY6ysvGpat/3wxjMcNI07M8PyHRJT
	 KFtXvDYfX1zv/ZK9YzI7W9ND3vusc1+Jaog1saDBsgH6I0dOBlmxF+jdWYy1Wjq/ua
	 foxdri+SG1RKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90591CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752059358.17635.1796244938443732915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61460c555828293540893993bbaef737cda0d73ace7672f340cf38b69861357
Date: Wed, 10 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757520593
