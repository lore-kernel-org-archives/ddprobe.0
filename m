Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCCC5218B5
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791915034; cv=none; b=daPpq+eANy+qEHXm37d8QTBHyrYZ9EqZFY+EOqK+a7t8VSKqONDXW40moAGbrSJ1+HPa1QC51rbdRd6SL99NdTWU4XGllAWzaYkPagKvveqY6COpt+U06OLYQsPp7+oHYttziwCZdc9L6NkKTSZqFn61lB09rzgMwFVdv4RjQIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791915034; c=relaxed/simple;
	bh=qgQWmM3m7w8WdMjg4uyvzuvGghSj4hIsVSwPKwu69eI=;
	h=To:Subject:From:Message-Id:Date; b=DX8fiA3+V+ArkQk9DhxSKwNzmZQQdK68q4B/rLadJWyrmzlGBcxkeampWvawrl71+ZgYQqyoENaNZM0AcpT0Vc7RIRppbHcxSrv9rowwEXcOBdk7rPZ9adFjIjrEJdgyT6toxr100Yj4S0KqnchjdyhuTXyGzHbotEKWZWOooGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I55vUooN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I55vUooN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA857C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791915034;
	bh=qgQWmM3m7w8WdMjg4uyvzuvGghSj4hIsVSwPKwu69eI=;
	h=To:Subject:From:Date:From;
	b=I55vUooNhnX2WEnkn7ql+5ttc4QylSzlbgB81Mh3u3goyFT3kIlzqAtpSexzZJ+Mq
	 OBh2X8dKTvClf2aYHrzFoD/0z5fza7BMS9I7dlSx707j195UCQOLYlORD+GWEdvgU0
	 AHHPeGlIFhLX7VxDse8wytxf7AjPM8WiprPy5bp9W+yC9quFTOIlASLPlwQGikSepS
	 lljknCi+SzuoEhJdv7pQxfZ9hfDPDK98UBISYsocRWpBbhx1qq0gsLgQgE9VyLVTp6
	 +PTsP5KB8tys2udLFWRI+HEnw9H+VxVkwXMfkSKKv+7jTRnx5iVINZEtR8oDweVWw2
	 9/DVl/GBlXOwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE392CC6B1A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191503370.3404.8507873032997102868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a9abbb96ea8ecec1a77008cb96cffedb3d24072f4e29686019055ed4f1de9c
Date: Tue, 13 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791915033
