Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C242BE026
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753100394; cv=none; b=AECSx381ZnBcKnL6nQ72NBPiBhMq1P/CVlGPszvtq0zJ6DPpDgeTuKeUmxkJMatxRZS8zQTEc3VDnSvmbDrBKFG3HKsGltGxtacgp0hUuEYJQROLc/J/tHgC4IwuE59xD+T0NLj9QcpkLSxDjF3PYHg1uG77okIUiwly+YziuSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753100394; c=relaxed/simple;
	bh=y443W7tTXZ0Iv02xuqFd5ZEqULE/eTPwusX+bdz/dYE=;
	h=To:Subject:From:Message-Id:Date; b=g7l97UrpGhydlkqBXzQgmOPKJ88HSRaBvORbC7jMCBy76cBnrU9+8aGIpU/wp00ZtA4cysqNWIn3k9aRAJqQvVy8bwRWaBQPwLdXin+2UQaV+tfk41asBuZu4auDnYNY/uTkTFkCx5uPwAsYHo/3nOtzP7BoknfS2GueY/SIAyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGmNrzqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGmNrzqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C97FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753100393;
	bh=y443W7tTXZ0Iv02xuqFd5ZEqULE/eTPwusX+bdz/dYE=;
	h=To:Subject:From:Date:From;
	b=MGmNrzqXbDZal3fVvOUfDjDnYepq0YnDUa+7P+66H2FcZIIHRKviVIGcSKNCvmRQZ
	 W03o97nPx6MvUJr7nxXYDMMW6/uoajJXXH8e2i1FbpAdavwi9nLaYucduLRWRRFHn+
	 LDxiPrM+P2lB0piUxnJZpS6qhqJlHnfgsDBjeVhm8mYcctgHu8PqN8L4NZ6kSZlKoE
	 59GZL0oRl4fr/AVupDObapRIXgdyTzXc0wK8ZMZeOsbsGHScpmvoE7tyGPdYYcLZZ+
	 IONX9HzPSvHeeHJdEZct9gBlo6XIx8C5wOXR/ezjnKFHTRCEl4y/C8LyFzJA0uz2OD
	 pp/CCITne+lOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5BBC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310039357.19769.6037554093901982867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f19fa0254dc0f235d47225cd875958359215ca467d9242de6a0e14713ee913
Date: Mon, 21 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753100393
