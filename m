Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0F82820AB
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746549594; cv=none; b=K4aJZkCQrbGqqa+bitfhTVTQC9jQYT3bVxJXz5z4uQNGGRuQ4m9AW2Puq2sWYlrAaiK41MFy+CtifFIS1xCuSZlmldso8/xHu6kx6aMQISoaOiymg8GXmpg83Qjb+H0yUpUKhKkzbhk87njMlPjH38J3E2Jnrq/fL/hzfLvZaWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746549594; c=relaxed/simple;
	bh=lWGJSeoLb1bW4LcTjA5Db3R1m+8lwdvV+Ohcb5qnqFA=;
	h=To:Subject:From:Message-Id:Date; b=DXAgrgvK99bbVZ5GN1eA+CmSFe72vjxXHPHKKs6VGfYQ61K/LoN8/n4R3kRTsiMhZE81cYeuAyg/xjsOHdVIOrJyNMDqn1dh8tHKlqBJ8EiAWfbVpbYvLtte9Ra3e9fyyzR0BJlyieT2nkIZvA3yjAqJT5BRwmqKj3lM4kSTePs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuL1+2lP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuL1+2lP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EC4C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746549593;
	bh=lWGJSeoLb1bW4LcTjA5Db3R1m+8lwdvV+Ohcb5qnqFA=;
	h=To:Subject:From:Date:From;
	b=iuL1+2lPnIYousYOa5oBdVYjDnE6s6WRCsVT+KA+XSEBG5QUWO6R6dvmfEChob5b+
	 5igA/XpesJQuex1WsbzamsqlkDeNgEv0XkeuFX2u7SzjVXR8dV9hSBMwpDdJqHVQHW
	 BuAQeKGzJiqAGxpUWgmjcEXAxYS34JLFuTzAEEqqnfZVDJncNz+BSYKOc+5Xl61wDi
	 ez/kidFs6H2ud1DNQRjLe8n6plbDzG792NnuQa5LajNaL0tIW/dJNmqd2+AuRhHaeJ
	 zCCxes0OO7+zmqKkb4qCJZE84nPzaCnZrQnD0ArEmBLLk8MGfQDH99kyzFPZG44lm+
	 w63SXTpXR9TYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1F4C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654959362.26729.17224344827022986154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52dab94ccaaaa09e319b66a5bd71c73315bf791968e36e2db96582b462b13272
Date: Tue, 06 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746549593
