Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B94B2046BA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773497094; cv=none; b=PVeqatyrXVwY25PtNCzfX5WtwL1aDAO8n2Ad+GGIYgez8YkMJPe6IroJLmnN1SEYwcYZAvdeK2IyCQePEuo9Xu029TE7RtrdL7VjqamO/BZD2m2RWa7chN4uxr+oaf1xHQ5y8CH3cLeqZmqOv5rS0EqDM91eWngWFjCXoOnVmWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773497094; c=relaxed/simple;
	bh=BSQ1qt3ubgAJVQQ1wqAneZaQ9wo7OKQHTfhFCdOgkK8=;
	h=To:Subject:From:Message-Id:Date; b=UHN+2PwCY9hfbmJq1EbpmB9nc2YdtDvFbigVxhJ+QdBjCFykoljN1BMeGQI9kM1z/xHLBjeinIMBywewLgqvFyNS/hfZb5Iz3UYLpQDBC2eoGH42yHB7hYrkzjcAVLXFMG8y1d9q8AWkJz7BWwetV0HprgQqnBktAyVH7AYyiMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8zZeTDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8zZeTDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE33C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773497093;
	bh=BSQ1qt3ubgAJVQQ1wqAneZaQ9wo7OKQHTfhFCdOgkK8=;
	h=To:Subject:From:Date:From;
	b=b8zZeTDiH5CZVOV8waIcINdAOom0IDV6JTl3gBJpz2QxSe2MaVAXWRXPAIyduGSB7
	 GWIzt5mxa7dIuvs7Jvrm2+w+y3zahph1ettQ6VkRwCLxyUpS8BdKRcjDWDdeMq0hqm
	 Ap+hnLTvZ62kgM9Q6fpzcCvKwl/qyV4gegJUCasDdyY/MpRc7MOK2xE8EqjMkjq/gU
	 5xIz6wXescWxdluKjql+qk1oaMRhuTONyjD4DbuWcxmBnaM1xrkBHwWx31F5X397Nm
	 Iog/6w+paSZEaUgkzhGqOqrxxcCu2oxV7vUQRZh7uKSheF1kHFgzbxY9vsKP7N500E
	 4SEmlbe67cvrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D8310706DB
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349709359.7273.694751894512089691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea067727210d0b533317ee367d754678360fd5ee61388320495be19a309f4fba
Date: Sat, 14 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773497093
