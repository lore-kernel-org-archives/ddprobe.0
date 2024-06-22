Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E50F4C634
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 17:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719078143; cv=none; b=p3ki8nWEb+UXsEznqm6G9CfTdnjfDJ8HBqD7mar6qQxxHmwi6yfeva5OCB4lfcbLvsOnHJzV3lLCtTw+eO4i+YlZYTxz2AV5dg9r734nkPv6zuvJE9dcQzhgfo/0+C0utOjPawmTLC0SuPcat8sXipBfl3Up+xxEr1cYz9Xk/zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719078143; c=relaxed/simple;
	bh=9xER0J5/etI9c5qYPwCsWo1/Fw0KgHXy03QJM40jNMc=;
	h=To:Subject:From:Message-Id:Date; b=WrqaYVqtdXwWm0tjdMSzAG7CppDpIUmcX77hGSxKVkVBqA48ssswV8ed8+T1L1gEm76aY5+6BbDk6F9Mw2wCNYOrlX453J8Iod3Aa9bR3EhUx5Xr2MJW+IF5nm8UoWvKVyaebh3ioiQoXs1uRuCciI7vbiSXfHxvL2ouBAH1h9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mg45jC9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mg45jC9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D701AC4AF09
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 17:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719078142;
	bh=9xER0J5/etI9c5qYPwCsWo1/Fw0KgHXy03QJM40jNMc=;
	h=To:Subject:From:Date:From;
	b=mg45jC9qYl6bmkq0qEMH+9+0yStXg4z5BJUdB5X2vrv7IZsYqbMTE9XXi64TD88vk
	 dNONlwLq+39KDbUl4RRq7Fi5+4MV9O61m74OhxtcXbwSqAQoXEHNtjfap51Gs9Es8+
	 +39aqEa0xuA0KgCLacdshqR18U/gNlxbOfe6XdD06gxZqzwSHSpP537Dckpm7NPVrd
	 RVglvgk0GGqxGsax0mXhTwyEaObRk19+R2a1EekF7BSu8Alr8z/az7loXVrYl58hIX
	 +JVDF8fddqWupy9SeseGhz1fEuOrycB9OYNA/OBcO0QXHvSmXtHZFSGmlaNsjpAIvY
	 tRQVofpB1K9EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E85C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 17:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907814278.8618.17506106793464391535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5a3e185ed79cba05dd85c813c13861e92593430c27e9a2f96c9f07854e3668
Date: Sat, 22 Jun 2024 17:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719078142
