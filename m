Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCD523AB98
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767403434; cv=none; b=RacHNHUUlm6XlVPyazI2AUYItHtraUkdHv9XNIbSSBA305NuneMc88dWgGfFxtNnsaUy++cETHPqLHoXjaUCR3p04LVe8KfZLsMOqlDL2YCEDnaILhCZlPePRpktj/dPc7zeD7NPOjdOkb7wThOYgX23XEWQ/Y72Vm4NGMGplqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767403434; c=relaxed/simple;
	bh=FxSz2VeC+GIVvPSHDHKQ1+l5fijFhhKyjyuVORyDnGA=;
	h=To:Subject:From:Message-Id:Date; b=TXsK2bMosyTgxlCWiugTONhyZMPhylFNluxYjNGLjFOQ6ZIgrfQP4DmNobcVJmzJvJJQVFe6V4eNk0LrtTfugkvFVlJp2c27PlKhsUonHkd6uJMO8j7XxGnGHLx6nNpcPgIpa+yH1H2amapjdnHyYkWBCt60y0qA2+BGu9Si5LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dc+X0PEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dc+X0PEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11E1C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767403433;
	bh=FxSz2VeC+GIVvPSHDHKQ1+l5fijFhhKyjyuVORyDnGA=;
	h=To:Subject:From:Date:From;
	b=Dc+X0PEd+mYRhJXxosJiir+aiHFypHYos4WdU6MQno/uzoY8xYwoDyOjutpjwAlFl
	 LNgO9rpGLE0TVHznMA2xHPM0kyDe6po6+KfdRGFJfkC/EzYKD0l7VVcqZLzMVXZLA9
	 /yg6GFq2FPzrbQjHa2+pktKPeFREi8Qg2lLNsH9ype5Oj/1gR9tGDtypGGIur11tWt
	 j1bOGlnYr6ERhIHvsPTShgXitVn/25h5XhgM67j1OiLnCUZeg/ggDOik9W4xEi3lp5
	 Ag4hWiCWzjJhFFV/LA5jvCLgRnJYvlMtOhGuiJkWENCjdMd4LcnnU2BTC6KxKaA8xl
	 tv5f16iEREOVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D40FFC6166
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740343363.27247.147221232252956650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66a0e4560292c8cdc669c903a077ed0688c7c4045db5672244d7480ec0dd146
Date: Sat, 03 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767403433
