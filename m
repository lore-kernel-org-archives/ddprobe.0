Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BE8B67A
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771807494; cv=none; b=VE9wvHL6Lk9w38yXK9WqybITrDOhFQZj5tyqjea5YXvWt8RrvC9/DVWCYbXyXLFCb8n00J03nJTaXWmUtquWDoWs1jMXjfCnE9z90n7JFl2mbmwOJFqIsoz53GiMC7U60HkcTeG2q9lOEViN8JtQPP3DIqPccaVuhpygStCjLGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771807494; c=relaxed/simple;
	bh=/IJyUWSjXiTq9RvOIAmRP3C6utrb9OpqwOypqxTfRfQ=;
	h=To:Subject:From:Message-Id:Date; b=TJ0Gy0ZBv6Abojp+Y5yRxhnUoQEcFvhe1UROAwDBNc5ax8BDHJgjgXK8YNEI1m8ALxNz/NrMhvveoEYNrjdc0iNkOuKcAquaYJEYtMJdg35087vtZNMcl9aNKvV2FxQ1sG3lLYKMkMqOJqKgSq20AaVnRQJAaxbTo7VjUU+vkv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SA0AQxqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SA0AQxqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB75FC116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771807493;
	bh=/IJyUWSjXiTq9RvOIAmRP3C6utrb9OpqwOypqxTfRfQ=;
	h=To:Subject:From:Date:From;
	b=SA0AQxqOcDwckhiVO+Fbo1AO932h97wJn6eKxMP5QkBUfNKgKRWhXJ9l0cHIhOFRP
	 4lAB/qoMkM+1yhXz6wkerrUWedO+yG533MaHonQBGwyOhje0V/zmwr4YSMwJoSBVcY
	 Q6vHnLHdODVEA3hH9ihknSHRjFsLXyykR2nkcoGeM0aqlu1t4So1qDyHbnOx5fvmq3
	 6P1NMwDO1zOO0PBto5VOX3f+Qos/WLoYaURENir041BXJ0dUE1yBg5MQ6vD2V4nT6L
	 ee253O1GhXaw9GcXMDiFNCMqgOp8giUFvzopuLWHlXXNhtuc5xnuWQKYAAFZaEi8pU
	 SO03ysyEJMdoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976FDE7C6F6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180749358.27722.14685018502638933946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f9d3b966ce4cacf5b2e6773e78d62f5f6444dff050e868d760566bdce941149
Date: Mon, 23 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771807493
