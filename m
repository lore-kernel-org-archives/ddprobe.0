Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9B71B6D1A
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765037574; cv=none; b=lsn3z1Ynqw2/z+/jFqzKeJkWNEfE5bpHNNYcLwAkE8sk4um17Ui0y0Od9XIjFIqqdldcGPd4Zpbc/wdzBwrjuIMT8QfB3DJthNcIVVZUDrBRsDAk5Jb+fKbwwFNsxVGthovAiQfEMULuAd+P56IAGo1AvsIgqhOCvgVjmjHOYRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765037574; c=relaxed/simple;
	bh=P1ZKhxW4gcfVttBII2AzlKKysnrkxZOoYy1101JPHOc=;
	h=To:Subject:From:Message-Id:Date; b=YIoTvSLXk68jnJXVbHI4VeFDdQj0Phkwz+H3KXMrzuA1aiRO128KIVdUe7L9XEs9T6hD+Z/JIpWsKFQpMj5ycXscw/VHz6k1GJAABrSWwQd5jMq4/fohmCihFjB6uQwSw9BTQJSidyFoj8vKAPwbuGDhBTgWBMXX+4vhvjKO+KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8pJSf1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8pJSf1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02CFC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765037573;
	bh=P1ZKhxW4gcfVttBII2AzlKKysnrkxZOoYy1101JPHOc=;
	h=To:Subject:From:Date:From;
	b=L8pJSf1TfDsjkw0GMgb2jf9eX+ur8z/fy/PKbhdGoZtiLuBwq3J557ditR+m8VWLI
	 ymYevFXxAeQc/3FAlq3p/rE3abOF4F5uAjijpVLPImJS4J7HEyby5luqAglDyrcL0M
	 umlQ3vz4q3g57VAfyBJXOBTG0KPiyyt5DFE8Im3fn6zim+eg4wKr+09sf8innecTN5
	 AJKj14rT21wcxdtCgX9VFIMzmNVVCih+IOC93pkgfwQBLBrMGnN90pq5et3HGmQg9e
	 /fBjWtfAT8v0qYbmoHKY4Tjd1tPCuFY+0O3oP0c7q5lQT0GFn08cu2bcOA5XQQ4exk
	 7PPkzLi5IdUFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91723D3B7D0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503757358.27791.13026912492463791290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d1d923713c390c699abe746e685a2beba43ae6903cb085ad560c41449d51ac
Date: Sat, 06 Dec 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765037573
