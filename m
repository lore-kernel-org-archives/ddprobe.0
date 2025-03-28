Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3484E2192FC
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743157794; cv=none; b=owY1G78UrPREG5GfvXoT5DUrYU/XKQdszqdGsnIybVoDgha8ic7zndPekOzAJsqRt60rrMngVriLdoUzI97lRs20MJiiagQqkfK7gtupJZ0JKeUTL9rNzCfkpBhxdrlSJBySD72EucnoLuL+pf0vC/ggyR/ea6qgjTQO6oq0TMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743157794; c=relaxed/simple;
	bh=wyxDuE6xKGuox1/l1nGhIJs1ywNQhZu0JWcU4KrlgNY=;
	h=To:Subject:From:Message-Id:Date; b=RzZOGUeJHHjpS+L9URYpWKEaC2ds60yZqZ9DcjEvIgwP3i4ABsfDDuB+idbnxaRxsu9+JdnUrvoKlKW1sAuKUQxRo9EUwKVkEtkZg4osHQKZPH7pvs2guRGTqWeDHe7xUxva1B1wrBTllNNnc2QuSHINlMnV2mGBNFCx3xGlIM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7BdKD9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7BdKD9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAD3C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743157793;
	bh=wyxDuE6xKGuox1/l1nGhIJs1ywNQhZu0JWcU4KrlgNY=;
	h=To:Subject:From:Date:From;
	b=S7BdKD9DaNXTjWbZktLQxV5Mac5dlj8AAQRdKrV3RseBa0YUxKTzx7EQ8oq3UoGIV
	 p4tf//7uaxnWzIWMt9IE47mchMaISD5C10askDuL3ggqF+sGFDbTATBx0mEEEJ7H5G
	 pRnPZ9vxmkO2+ThX+EroSXB7oY6IcYoYwgZvBqzn3hiFE/ZaJ1K4wB4qwCGxiKh91X
	 1gz1DMqvf2Jqsl7I5IeMup6gIqb7EF5DtfaXQVgmG1wCnMPVhdrb5KaaprGY45I2m8
	 4840saY6ex4nc2NZ26YMztNtKxz1UrB1yYBGtTa7IDCv5RUIlKwDC5suHvSGWrura+
	 QdAnQYQQeMA+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996CDC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315779361.15296.16120256159479420497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13661b1638e0528aa5dd70adf2b9a2cb1bb8f3151145edbaccf786c0012b139
Date: Fri, 28 Mar 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743157793
