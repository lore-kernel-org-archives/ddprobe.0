Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379E92D97BE
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767551634; cv=none; b=QJ3GK9Zye8MYSve3vdiH0OwIwb7+kl03a4r0fnKjBfomrv+BeRo2oHZr+GCepqrJmY3t4kD0wi+KE+tqlk1QaoPkoTb2J6ZoDjJ1zGi+M4D8HLP5xnWer+wrCwIzpSkcN/qRnMbo+XZo0C7mcJ/n0wQOnfRzIMz3TBuLQeMqtsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767551634; c=relaxed/simple;
	bh=/rqJnXkkpoEbThEdFMQ/kR+r8Oq1+NOzlftoZ5P5Pss=;
	h=To:Subject:From:Message-Id:Date; b=kZO8nDwWk3IdC/PHu8dT0Dw2f/limCOWWPyC8nQQQjWoXAF3lBvCnPhA04WNph9cXigBCoN456wBUgXdVbWfwgOGjkBz/zWE+Dyg5EfZLeoJ2XFZ/AJ8LNOGq4eBesGKoDNNkYGmwyot8FAxkzKB02PnFJI6VTLvu/5lnycoWxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwPuySps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwPuySps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02B6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767551633;
	bh=/rqJnXkkpoEbThEdFMQ/kR+r8Oq1+NOzlftoZ5P5Pss=;
	h=To:Subject:From:Date:From;
	b=lwPuySpsB7do8h0QktAeyL3oK6xLvnEffDScvtwKdFzuEW71uOAIvfyzsmH9+hsI9
	 hgwdEd2YMiSftLVNukgnf4Ti3WUX+5QW7Ow9qXjDNyRuR2SA45RTjmHcOxzef2wsPw
	 qj5xv4tNmrVz+ZunapBgVZx7TJCidwrocAmQotiR/E1JtWDcW8yRr9djn0g2iSwJIM
	 19XO8OD/sLRPuXxBbQn1/9VrMppe6Mn3xdywDS/Bd8mP05o5WXl7tP7j+LNJkiwAD6
	 9CDNuDHSGWYwMMC6i+zhAPgIiu2nA1HPvDG1GcIRRpchlr0jS55yRvIPTPHAUhu/b6
	 i2QPRFgcaAoTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D05C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755163357.9714.11893402876657146616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230488893b444570f5c013516b11e3f57d04ce78d8e074f8e22069967f085cfd
Date: Sun, 04 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767551633
