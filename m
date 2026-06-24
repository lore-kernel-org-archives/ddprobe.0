Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3718F2E8897
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782314854; cv=none; b=of09gqOQ8RZA8PeU10A6A2fCZy/4KSP7rnUQHxkZG/OSqCoGtDR9sGfN0DOT91oTcyalDbdlCMBN+3YnKF1vnoHryBbAqeVrvLn4xiIOuYRfAQJ8g5wGJGkGk39OrwCza/oDagk3FYZuTiGyMld9KdXPAge93lzV7OoDeyJFn5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782314854; c=relaxed/simple;
	bh=YWsbcfIjiPZsIRHmZLRcwg68YuvmXiQO/sOXUqp4/GU=;
	h=To:Subject:From:Message-Id:Date; b=RQTEnxg2RTIxq0vo0oTcvLrLwNs44P3kGRU2ZTQiQIKAUwuSS7TP+dxITVIxvlFy0BlYXjzvA0JVHgwoE6H6b9KzRAy49d9s+Tpi7y3xLkwqLtrdlpFPMaG1LHJPvn8/sJ/m8BCS/eHvA4KcJ2pvJMaZRDn/Wx/JyJJy2ewTTAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TR0gwRQ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TR0gwRQ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61E7C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782314853;
	bh=YWsbcfIjiPZsIRHmZLRcwg68YuvmXiQO/sOXUqp4/GU=;
	h=To:Subject:From:Date:From;
	b=TR0gwRQ/QkOTXSMMt1j1ilbk1Tkh742q/2cysc5j6PC379zX2HaoEJwicnPdAMqoG
	 Knyfqo1QV48VJ/3Y//l6RXE0zk3HxBwjUoVZnq8WWzXfqRrcJi/luJGKBFQqDaoryg
	 uZrIvh2w0aDB1FeiKYgz8DEMsqG0XJY2MALuZ+N8dvSwow8fZYIhzU/IHYf3RKnTSQ
	 Hwh0a+6z4UGtI9ilb1/xWFyRBcQlDhfvaGRyRcO91E7zCztAyaRkRLAvlz0bh9h+J6
	 oAtCDoJ0TmtyuAph5Ld91iRlRCyyX5ws11Cg9Fb4/GEUYm25e+TLqtr22tjLORFVQ6
	 JgzyUn/v83qyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCA7CDE001
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231485369.7365.17862032869840656431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc452d4b434b1b90085041c0ad4ce6617ffcbb4bca741db100533a21adfc6a0f
Date: Wed, 24 Jun 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782314853
