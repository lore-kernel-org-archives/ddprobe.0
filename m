Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052D82309BE
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755520194; cv=none; b=gP/YauS86CWfKuES6CqFe3VRym+Fh1hDlX//fiPSrjRPYKTP+AtqvGTKI5ps+xy/E9cslPaSY2IBd/q0gtrCf1kKvWYE14lzeUKpooXSuhFtkBsxChGZOQvIp0HOoV/oUJYwOWp/rW9qhZoACQZgzhfgwY1b/jkTTUAuiAB9ZTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755520194; c=relaxed/simple;
	bh=tscQ5qfY0Luzdzp/B0kxlQYl2CRlcyZ6eb/48WVD9hI=;
	h=To:Subject:From:Message-Id:Date; b=DwXjTeS5bbrpotoZQJYHVd5nf+BFFsAoklJ3w5n7zidzelx3e29/oKKu14yfploMzkCHayrrmAjPkkC/aWc+yyQ97DCQLrdy4w1BLT6u2UXzorD1o+XsOJz+BhFoZhiBjpihI78b99X6P8B/oNNQEo7XcvGhbdPaitWYbwphJ9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDLKiV7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDLKiV7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0587C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755520193;
	bh=tscQ5qfY0Luzdzp/B0kxlQYl2CRlcyZ6eb/48WVD9hI=;
	h=To:Subject:From:Date:From;
	b=NDLKiV7ol9DvF07QwJ+pR8kjvscsGDvXUv4m1Uj6ZK8S/PftkmXKh01l/ibH4n2yA
	 Oow7m//X1UUQ0A+I+VAMey1MDwWM9A/U3DACkUFG9O9AQappo8SGL22Dwwlvizjyr+
	 7Mc9kq2JOb73BCyvWl0P9+OsqK3TNAoeIGLV62Ego0eL9D/HEMyy5udG2g3KmwlQV1
	 HAMS8D0PhO8ksD8oruCwgNqHlKc1i6IdtpwJ/0I+cgqi3WCaPziMFuZbP3f/GHBkth
	 AqrZTj5sYfSKccx+iILZPAYuNEvMzdUzPG2vIA0Or/2W/D6A342fzd+61uJAeI/2Xe
	 /xEVVzosXnA/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F9CA0EC0
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552019357.8977.10601058845076017528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a7f165b16a48a4038e32b16297043ffde786c808f3b9fa86f4718c09304b3a
Date: Mon, 18 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755520193
