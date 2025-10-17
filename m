Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A4B2641FB
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760695194; cv=none; b=ToqMhDagrUGIgp0APU6t6WUYfSwXflSwpNhXkyVgRLajyqu0axeAbFxz+drug8uxJmTKHAuKEc3uhoiKMmoJFGEcc8M2YVANSLlOTd6VjIbwOvfdZF5Gx4O0L7T6gDfWzkPBzaXSFNW0OJ5sb3PJsfCdGWhaGrjtkKqn+df090c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760695194; c=relaxed/simple;
	bh=xC8liKjie2wpQngAKwW5wwtT5RzQJ+6EZSFPIKT9c3I=;
	h=To:Subject:From:Message-Id:Date; b=T8gL+uTHozY8Id4O8b/CdXxBxT/Odxf2+cJHaJC3S7qBJ0K4wpyUH3GRkAqDNn55CKHxzTA4GJv/JtlM8qtDaTvyp1us2ePRS6I+fmGmw95Wm6HMSv01+yvemeVUEXhhQdNv7vkGbZb/g9jR+1zOYaTkPhSppnACONXgAzW5nZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqsP7G0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqsP7G0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07F8C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760695193;
	bh=xC8liKjie2wpQngAKwW5wwtT5RzQJ+6EZSFPIKT9c3I=;
	h=To:Subject:From:Date:From;
	b=CqsP7G0noitXpiEe5CELpW/ojBuXhXt08twmoCQJZi2DNGvEYhGfoImOzk2xf5tHh
	 I7HyuovTYOh9GWkfeKkLJhDVvN99y7D6UQuTGVzAd0AysveWbZnOJ/cmDUQvJ0WRG3
	 +GtM4AG00ChzAqVYeX5fH00HpTjkv1JvyC+RN/xQYMcSv6w9wqThKNPIZvkQxpXWNV
	 Y/wHW6TZq+tW/qdRvVeDx2vlLQmAlI5M2s+tbVjiAEP9CES2+899y0Tp/yk6bdk+9b
	 Nhc3LWjUeKrtmrTDdXLPgz5B193nPcJ0qOqeoRHU7S2/plicVYEEX+qQRjJYMMK1zn
	 QJTo1zCvLp5rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F3CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069519357.20325.205606301877097933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d69fe708cecbe9d9ae7bef0816cd5eaedcad063cdc3f635e456bc7418eb09f5
Date: Fri, 17 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760695193
