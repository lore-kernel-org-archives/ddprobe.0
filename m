Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15ACB3264FD
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782356254; cv=none; b=Bj2QarBHkBAXKUTP/XbR1YEsO7Ecmu65UcZiXMIqiNU67kP//sxvPdt8aCX2KlW2SXDbPSKZPVNbwz74PWZcM4jVaabLHCCm18YBgST8ODyrYvzt1A6ZKCQpgx01Bm3sgQe71lOAT7Ne79Q8Eg0fieyxSz6lLST19+NY5U5A+YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782356254; c=relaxed/simple;
	bh=cTBgDBaY08c9C4gf3PvklrbiXYbW1zZph0nMaDRj52M=;
	h=To:Subject:From:Message-Id:Date; b=d/lI8ZN1+ahGUeEUFmiO3LJkNwOvNPSU0UdT2Ys6aqr4R57ml4hV9n2zGPiXAN/LbM4/ugTBbU/Bb6tMFlnLrTJrJw+VB4DJpG4HPAvkvHwH6kE92Zk/+YG2J8cOHhFwnNHZDXsS6eAIaJg9DlnrKJD50DDf8rHbKVWhvTThMjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6qk4MWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6qk4MWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD80CC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782356253;
	bh=cTBgDBaY08c9C4gf3PvklrbiXYbW1zZph0nMaDRj52M=;
	h=To:Subject:From:Date:From;
	b=C6qk4MWmH4BWbkCGByi8xqWcxEoQDEupwpU88qR9t0PqQbTbH68OLSTfVAfWx8Zv7
	 Wr9rAkjz+5KbjLT0FKWxkRv03yJUATO8mD0fqfI8Rc+3vjPY2iZSWUa1IZppfkju/s
	 ZpNqWKB5Om7k4zuStEfKkrShBDqkl4tL208M1xvOcYWrm8fHGmVcUw/D4VoaP3FWPP
	 UvJQWhTJR9YEpJBGPq7i7qsGWNtXjuwRMWkEnxX4s5eGlLNtmFFtjQ1aX/hyb8pRuj
	 07TCFUNAU3E27QjLuzBwqYGZ7rLJ639ZSLNuz28q6FQ/r/K/EzHtjlfog7jww4XVfY
	 P4tZjVes8XXEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE837CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235625370.27725.15345497930865667138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b33129d941517ac8761de151e68b21e0dbee33db1e03ca7a8cbeb4f010f733
Date: Thu, 25 Jun 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782356253
