Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F2E1EDA09
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756129194; cv=none; b=IDBf3C707D6Kw2BmbFTyefe/Wv10/fmCkd8BSS5ltgHpmn5XgwHf78kibWFUBXMGhCYF+SAELZ0LKyrsJMZrrMdGeuKkzs/HXB0sztPcdBBWx4gKXuzvrOA3kBDoWE5S6qXBkJhKPzCEtzmnkfJZV1N74gGuuAny+7jdjB1Bw2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756129194; c=relaxed/simple;
	bh=ybBUK37ozhMny2/i/HQ76dMe7PNc8wAyWVgWYfy7UEU=;
	h=To:Subject:From:Message-Id:Date; b=CW+TMQInZN4xtk+JAsGSwGlDtckYuZmlDNAcBK8qdBuPD40+1qDYVF1MO83qHGNV+dN5v20iGWBBtXm+gQNY9wHxnQd39a4UzsIi7ufsZYGlK/M5reAlfBWbXnR7TY4zi4KoXp3FEzOlQgHRJbaZw5Sc+6NqoeCxeNQmyWpTQaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFLSWN89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFLSWN89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1448C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756129193;
	bh=ybBUK37ozhMny2/i/HQ76dMe7PNc8wAyWVgWYfy7UEU=;
	h=To:Subject:From:Date:From;
	b=hFLSWN897N6jbz2vXvj1546kg2y8mbx2X+OAQJQn2t6GH/dYLYqbcaz4sWDGwlncY
	 32Dlr0wlgN2qNZd81OsR7krgcyWEsMi0DHYYuLq2ELHUVjB8tcovsEzA8ryLYDQIGq
	 x2mgn0BNQOWCPApw5AUdBqmM0y7+C44+jg6pycG6AVhzfr5qZygxFc2AJm4kxHJEB0
	 cVPXk0UCwo8YPJevepC1DmLkUhxkb7GWnHuPfDc2KAr7GDVxiae/C6XKrtibCfPXYP
	 zEFKyX9noNX73xQx/rUN01V5xKUyOOZ736N5Wx14BCAdpQ/DWWRepTOsXsYe8Udx5+
	 2zz3gDq7wyU5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA4CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612919358.19352.7554833162024260944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424e95bbaaf251d8b755ef8a9c64c23e8a855f27b03c38ff3fa4f578d9f7b511
Date: Mon, 25 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756129193
