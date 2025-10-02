Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4BE2AD20
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759364394; cv=none; b=CJDmVmrLYQ5UwKOvvkbUZB4uH5T5/M13Gi0mbyEvUIjVJQ/SPI07bDPSUzinJLxaAg2hQqW6fks+GxYWzAN9wrHhNK+2SiOgpjJe6kQtyOIQP78QATgFyfpFlInzU9lWuxjZEwWfnPhU0lLG0E3KB7Qpv+VDLWn5N7bLEBiUAaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759364394; c=relaxed/simple;
	bh=+8p8odOoQM78KsGmpOhcoQOZ1kvgO6RxwRYRy8L79DQ=;
	h=To:Subject:From:Message-Id:Date; b=K3rg7kT8AH92CQ8h7GXUblTg8wRhkZ4QCbLhU6z99cNCPALK6ll4iMRG8a69o3ALbXzGEzAiIoXaiZt0F0eshjpRA2KXQphoCkbe1GcGEYLyH/5PueZO9+d0cfxA5S6909wcD5zDB4K4BZtXkLpMw4VN/+dN6rJWI84WM92diR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBcRlGRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBcRlGRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEACDC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759364393;
	bh=+8p8odOoQM78KsGmpOhcoQOZ1kvgO6RxwRYRy8L79DQ=;
	h=To:Subject:From:Date:From;
	b=HBcRlGRpH6y4mHnLIK4sLxX6Vxgn0KBWumfVQ7LptQ6zafVKoZRKQONzbBs/GZQxT
	 c065qXoKC99AY+O6HSSja6NJbdrVpkOPoY/smQHGyKt3CuoOxQqXZiqifSZnw4NsEd
	 e7Pvai1yaJ1jSBgiSdrtMfzflbjJnrNbQIIaUp+dZaIQ70cj32Bmf1YPf205c11jd8
	 B59mM+Jv5dVSoPnEfU3Lzwiq/+YVGdwtyWlnkbtJm0A49tXMMZ7iIzy0mxlSjqbshf
	 IYv677w2vp/WsM8ehGkslzVV0Nmiam8/XffA92cgS+9L8cZbXDW1p6ofT+eHUjLT8N
	 TPdwqoGhSWoAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC623CAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936439357.681.9854926310030632941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc51d064250031e287dd0d6757e59e6053f5ccda02732c747fb1962cd91fbfd6
Date: Thu, 02 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759364393
