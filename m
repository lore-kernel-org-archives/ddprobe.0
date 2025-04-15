Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D382417D7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744744794; cv=none; b=p53Aua1MPUFMpwc7YcJmQmEo5DvYLKyCN4Pfmf4qaDWWgTQOZFp08eXN+t7rrYwU/eTvQFzmAIeJXmC8jMKLQxXGSc92iC/5BxeCrMkRwSHV6VurrxufxbVt5EzqzbwKYgT4ZyqRiqn9gBEImwMCZ/DaGFkLRFiu77b2edstrvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744744794; c=relaxed/simple;
	bh=ANiKwzJiy+UWa6rQhA7SmuYdgeWxp+1fVrZDyWzhGpA=;
	h=To:Subject:From:Message-Id:Date; b=nAmal18+eYMrnXKKQn6Vh+ByDPveDxZajo0ABrfgehe4k8gqIhhaQJEUEID5MOLjiyJ1T4g+YHUjPLZWGwLuKQ9hyecjWoU5S4choONghxQQumWZG7gRfvEZfKX+8qf1liniBkZ4FxoQA9ogDNEOD1EzZNlQkt057tMUOlC73Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbEQo3jn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbEQo3jn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B29C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744744793;
	bh=ANiKwzJiy+UWa6rQhA7SmuYdgeWxp+1fVrZDyWzhGpA=;
	h=To:Subject:From:Date:From;
	b=FbEQo3jnebfk4e/5DBo9ohGlQ+LyVBXOILZ+jcJHznfmdi0vCC6+YyjE7/hik6eVJ
	 U+4HEaDAW0R33wYnIaISCOBBRqT/+Bh6MC26sN//KmFtdlPjQU5fJ7IVG+N8SPI6bu
	 SPAUvN8aX6Ry2rpfnSA8y0U6zswR1JkNhcSec07+pbjoGcSLEtWCAwUAqbGR/8jCcu
	 k43cfmhO0Y6biTS9qLaLt4zHlZH3andQSOCH53ECuNwsqpKk6WkXpzbxTaAqgWQ2dP
	 6rbWiNheQnzZ+OEQybdpu6rIdpwL7yJv34ZlJmo4AnTsNnhy//5HAVnRisleaX2FFp
	 6c7MK6+A/VEUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91298C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174474479358.29102.2996141918693691406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4db088a15e5675594f4e2a6daed9aabfb4aefdc4ce054146811a233943913c
Date: Tue, 15 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744744793
