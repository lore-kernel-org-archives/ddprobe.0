Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7E24A05
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 02:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717380923; cv=none; b=nQ6Kmp9oQWqQ2vM/23w5sBcSkPLQa2/cUdwn/LsUMEG6bloKU1xkQUEllWTrSPN+88tIY3D6q7yLTWrPtkwLN1Eoz8yoTaWRSEITJ2aU4AsqW7q+sUjZNZWAgocE7d4nONTSKy1MT64BsptGybH/IM6V0HnXgNI9OlOjhb1Brrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717380923; c=relaxed/simple;
	bh=C3uumzyWW+phGTSiFhhowBcHtnWYwEek6Ud4uGE6hcI=;
	h=To:Subject:From:Message-Id:Date; b=sjiGaOQOW7DEleP9JDtw9lscv7TYL3O/X9jTXfZanotQmqCLKKoUmodQW4hAMtcrWYXpYmNeN1kfmojIneOIejqRmAHnRQpcVdkkYKpwkl55nMJi6tAyCNCBETyaqsNvINR5FWzZcXQMcNTDnyXyZH0lGoE1b/wIrbkvomEzIJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcsYDQfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcsYDQfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4184C2BBFC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 02:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717380922;
	bh=C3uumzyWW+phGTSiFhhowBcHtnWYwEek6Ud4uGE6hcI=;
	h=To:Subject:From:Date:From;
	b=mcsYDQfADAWZQu77vgtneCvk5zYRK9XARuoEO4w7aQKbLfr+Z1Fpiu/iKUyKT7FHo
	 rC0TPO1mHr9bsryoTt15BK4oY6QRFEEDQZFqT/3zcHh7ZmN/nujfI+a+4ySDpua6Nw
	 2ocMg5qq89dszrt/BG3iuXmTKey7v7hr0p1/s3HjLx5n8MHb8Rf1ZIG29vXVQs7JZQ
	 vepP0JQ7wD1/dZTEIhNmNLHyLI02kUliFJbrlj5h2Z8UZ6ACrb56gAaEU2GM8yV8uJ
	 wsY64HdiWVam25RmaMKecXcQvYaF6y383PNK7B6k+VmT0gBwnR1tu+tGTGR98zz6/6
	 L/4rrCv4VA2WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CE4C25B74
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 02:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171738092275.24877.8754336299412460028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c1b6bcc7ab1733bf1e749672ad5d8b6edd4381eac5fe6f5e09d7230a9c4311
Date: Mon, 03 Jun 2024 02:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717380922
