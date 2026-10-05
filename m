Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DBA418A5E
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791191434; cv=none; b=NXCfLvjzYjfJsanK0fzcKzcbXP6trIdNa794AwBfkK3HsGt+cJJ+YvdHyhxdjevjUACxtWZyYQk6LVwijndgBZ205W239YdoTHWK8T/m09QXz+uxSdhYxIWnlqZu0ztVU/VgU1KS5L4k9wil7DM9hcHwwoSvNZMudIDa40/gwT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791191434; c=relaxed/simple;
	bh=47/fTdt1bvUFUCoP/L2enS9jUCIcxpxxMbglLeNZ6GY=;
	h=To:Subject:From:Message-Id:Date; b=d3LaBA3dDJhr2uJYYJiodwGi8vxYu7j3bsWguUBwCROXw+JetE19SGwhwlk5aPkOIajrxkV/JCj8JmdwA7l3+Iapqsy7C0RY4Gfk5sGEIK9hYcQRyLQR+FG+m6yjFrm5ktgemRs8lUI1OLIeRelide3UNuG1j1c9RdaPud28YFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyrYaooU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyrYaooU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5C5C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791191433;
	bh=47/fTdt1bvUFUCoP/L2enS9jUCIcxpxxMbglLeNZ6GY=;
	h=To:Subject:From:Date:From;
	b=OyrYaooU+nr9TLFXBGt3dp52MqvJ7cNtAROs57njNtmBCsQ0FfBZlJMv8LmkzL1Ob
	 koyrxBEmxA4jeB1TTYN8UGSuZodwi+rIrPgF/F6dBG4LwCGUWLmKm1/5h3gqoesccb
	 JRhJIGUjCiVgeHu0vQfjTviBqKXA85SmyliOUi58eV+8tpvSOE6IV8e1isnxToFVfA
	 u6oA1Mb/56+a6EisOv7Wd7jbOw6e7EdqI9nWPwklVxw5+7yZ/FoCuWWlAi0zIc+KLX
	 2Q0uqpB124ugmKctMpRv+JTR3MvudZZ0kbaLKvjpdOX63HgV/1KjU+058LE2NpRJlE
	 DVZrR3N3j3kBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAB5CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119143369.12381.13102901569748699013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5083468ae4d3f9f64248004b30d83295226cdb69220d8124319285e7841b09
Date: Mon, 05 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791191433
