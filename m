Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418F218A6DB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762072794; cv=none; b=Zzhcfz/h49C1PVhV3o+HVaw5++O36mZvs3YYNyujS/PbmwK6p+MUCocHtwrTru/QsU921xpwAmtjwHQBsZ/GN4+UOZsdrbQ/rzGcIzDH/hn756+XmSASJcs5vuqz15p27iRUOBoqU6kEKZpLS+yTw1D1I1+cOMDjwQVwMjEMIYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762072794; c=relaxed/simple;
	bh=tAsFI+HyK93HruO6jcrw75WbjAmn/YdkSbt2h1vIT80=;
	h=To:Subject:From:Message-Id:Date; b=I/ECiJMD5HcAag7+WQfGm+On4oQY9QO2YzyDubjfZRf56RW0s1vj23Q939HwadomHoIRdc77b237gl3hsrox2j0EqID23jfwj/4kCxBo/2cLI2DAWWDWn6StLDj3V6iN0IbieVikU3gfggjMWgVpGuWbUo4QUnd1B89aVJ0m8Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnMY/qmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnMY/qmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5FD6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762072793;
	bh=tAsFI+HyK93HruO6jcrw75WbjAmn/YdkSbt2h1vIT80=;
	h=To:Subject:From:Date:From;
	b=XnMY/qmHz48bfqTVYYYlKU9C7qFX4QjV5o097pTcEok1iDn3+YBHr3sBxhSHMwBLV
	 9bes/aLfWlQlUnOxi860NKalhBhFq0kb+2nK0kGBwnRzYrGaGTpmB9H8vJfuVThso0
	 nPmPVOi5AW68OvEecKCDGxopooI6sAXeVIe/JucTzCh5ZgMPuHK54e2vWYOdFf3doH
	 Z9tSlEgngZRC3o8/2dh+Z8xp0VMtWyPGgjoAN38VJHyrZrfjr/4Rfb1Hll1bX7ZkZ+
	 BQuNFRV7LXqSR7S2VJe8XDOEr7+cLdUASk+D4i1aOrsB4hPLd/s6AW7TGK+hJVOiqX
	 b0uQgBZGPLK8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF680CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207279366.4947.13243383985126240829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9e1e4ce0061d0533d6c5db4c88919e1abca909731bac4f39544c6ca9d50d47
Date: Sun, 02 Nov 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762072793
