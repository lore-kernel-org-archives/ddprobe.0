Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E7B29CB48
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762886994; cv=none; b=JpxRsYyilhT5FRDPyRzJTKmNjvY2qyQvbrfVbnFq2mNcMXTnqFDITIjZTk3Ge/9vLt5SSZ6UIbt+DPWl8gXAWy5pqZrp8leygjwaK1hhpisSLOAAiOOu71cT9FRJ5KxqC5aVrEg7r/J7OoG9x6sDMYN/RJIx4TMkQvgfMyw5YXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762886994; c=relaxed/simple;
	bh=EmeAfCLTHkgwMpacOyzd1tYnLYm7dU9mrNf8vGMqvlY=;
	h=To:Subject:From:Message-Id:Date; b=QzW6yv7sKbhosW6Dc6flQ4jvGgekzFFwaUR8QcyFAGqATo/tEKnYYgwhe68nw4VjBJa7CuIWiR/eCa64IkFZBAYfYR+vXU7DgTULbxdz8jLCkCdP3eB4P9C7Bybh9cjptoZyc+CMBpxCQmDbiEHx+NWvxrZFe901HhSlDkMuFLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBADWTXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBADWTXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FB1C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762886993;
	bh=EmeAfCLTHkgwMpacOyzd1tYnLYm7dU9mrNf8vGMqvlY=;
	h=To:Subject:From:Date:From;
	b=jBADWTXmniqYg0DQKJ/kETTBb9MR5kg0dJTydMdv6kewE+Ee/z8t2G7WleJEMcuuZ
	 7Dx8YmDcrs6FuPNkoQt55C3rlpFbTmxWMltHJzoITg81Ub0vfzf7cI0hfAcb3kE0KF
	 e/Kk0A9EMUglCAwHKJowk9U33wOHDvonoD5l1KO+Zko06JpHBkDtMaV0LDK2MUW431
	 7NgHJkmQ66XlDXbEgeDW03yRxWsn1DBW2pvg2SUppl4zTBSQk6A5ylv5qJ+kN78ctU
	 5Pgb81u/pWAbQ3cJ1fY8CqWQIZeTw84m/4tRlPBzOVuPcz9PQNoyn/PcMkymKW7XLj
	 6MyfzTOBwyJIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FABCCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288699357.14373.8498568579417059785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dcc27ddd6b42d0590b5bff16166c5adf17a36e370db105bae70fd5132046916
Date: Tue, 11 Nov 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762886993
