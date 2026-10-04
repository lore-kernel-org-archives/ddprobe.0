Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8FD3B6356
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791087634; cv=none; b=IE5zSsGpuLVNa/pwU44uBSWKdqLzzvECxtOoxHybBR35LrspwXR4bb25QTnW7I4z7SnDG90tx27M7kHshIduNjMd7fm6FUmUbOdzbYShw8nNiG7dUKgZQitEg1uwCqIIBxIUKi7BPIauVtKURN1/CyEifsP6hycVW2D0QjFPBt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791087634; c=relaxed/simple;
	bh=tbrjniMBGrKkwMpvUW0vmpTP9WWLVucCiYGtWYe0zNY=;
	h=To:Subject:From:Message-Id:Date; b=GkSGYPiHTFRu/VlxG/sUvnyUk7x+zAMfwLPb268rqLG6mltPx3n08CxCp9rUUFVxY62KbZX/M3lT1JR2zGk7wD39VLkdedvCu/Qv04HlkxverDDD4JwAiBPTVh/wWQj6nQcloadeHoNeHNfaFFzAPNIqXdV7acS1BgrXn/rIB5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QL2FYUbj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QL2FYUbj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F84C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791087633;
	bh=tbrjniMBGrKkwMpvUW0vmpTP9WWLVucCiYGtWYe0zNY=;
	h=To:Subject:From:Date:From;
	b=QL2FYUbjp8vFwgYc2fj4JovwmIEpzhpzw8JLZ2e7rY6MOBK4HikJ2Dp7Xn3M88qGz
	 1UEW6UXsF6OxvmHwY6dPr9Q3oO9GrQrzLqLwYCNS9pxMCYtfUWMNb1vAmLny5l1jUx
	 vrTwzIMcfZZhzH0h8tq/cSvKKAmGQKzQjTvXcRGFhLCf8neB0TnlLWiGCxZujwDQuo
	 IOJ35tno49GuZ18tVe6GdX3jHgaLMeydf6EslXNYHQ3VUnVpcetRy5C9GyA316pVOM
	 cFmeoCZfZrr8qqtLkZUtWw6XthzEllJH/1cER/JGZXXVIHDmQ8D/SrcO891bHEiIKZ
	 RXo0L5ZwmoHxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00B1CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108763372.8561.10088734906285759438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bdcaaaca8293a8b5ffa6cc5fc59a1ba0437508d6b1bb95412dfe6d5ae0ff1b0
Date: Sun, 04 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791087633
