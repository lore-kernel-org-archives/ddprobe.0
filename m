Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224C5261393
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750280994; cv=none; b=Wp2xi4SM5VwFm9Xj7RlcVZIU0g2NbUqFQ/Z8afAq/ZasVl3g00GKRMDnhmiKWpQ9Chbyo5UrynwWtLV1cFf3OGzc/sdfjLQ7071y+jSccMb/3jh3mVvY6vKgQ6K/WZXJ0nzyCwVHkKZAv71t82OcSrwQfgJT7+bxlZfT2ivfsuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750280994; c=relaxed/simple;
	bh=h80X1fptbx1qebBcNrXmzafQsVkqWdwP44ZiuC5JDgI=;
	h=To:Subject:From:Message-Id:Date; b=LWXAG+kMi6uUriA2pljU/lBvt9v1+wNgz7dAIgMY1Ketwvu5Hrq0/+yBd2ynZtA1LyU3XxKJitSEYdbUgsuVazNjmElke0lytya8XHQwEDwUHvrrrkmeLVrI1e2bRz618gItboBMszAQGvbiOVXfFQ/Oi6tHJ/9Mt4D15bUUl8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QL3SJYyy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QL3SJYyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46BDC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750280993;
	bh=h80X1fptbx1qebBcNrXmzafQsVkqWdwP44ZiuC5JDgI=;
	h=To:Subject:From:Date:From;
	b=QL3SJYyy6aYdTAdI1A62nKLfjTM/iQA4a2JRRa7kjIIbiuZaZYIdVKMcJIoqVAw9O
	 9adMQWdpZPQvuBwN4xJRYBM/iogvlgohB30dGrkmCztpYuJTs8xjuGT6zpp7tr99uY
	 ttXh877mx1WDJReW/DzmofWgm554O2xKLOGkPNOfc9QEZLIFmuLUAiA8VdmiIyv/dY
	 nv5GMvKMWIq6SHeOq/ZH5j5b7Y7OlWO+aj0JZSfsVKFhzg+zsrQQIeKUMDkStNHPMy
	 yc3SUm5vLXbjhQQ+g6FiU+w7fqhUvqvmLsYS9N9pzp6WUudR7QkQcxo35W0clBoKqA
	 wBLOzDaiGJztA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91215C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028099358.15681.11513122491249551160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 985094af21a8db05e60bea7be0f4350ad3fe3b3edc8d77026bc43c852124bf80
Date: Wed, 18 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750280993
