Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0889C22D781
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768578234; cv=none; b=GsPhb9sh60MIXo3Kpifc1j++nkn0xbFMBDwm9la3wEyrI0AW73OAfBjTn/GOTfJyLv5gMV/3VErDkOZvdUlk54v0OGnBoNgQt4hfN01xe/5Go3dCVNsTB2OfFgf6QceVvpx318kqt2Xkx1eQRV6O8mKeumucyur4ILiDxMdnNwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768578234; c=relaxed/simple;
	bh=ECxpIChloQz1J3w1Zo7KDQFxP5rpqpktMvQnVrCZazQ=;
	h=To:Subject:From:Message-Id:Date; b=ihaqQevKjeknoYyyN8vGAcatYiU+Zl1yPi7isXr/KXDe+2wrIQseyZcbJszxjif7Q6ZDqdOM7T7Vk15BwIdrbnazJxMpG9+0AjWF8VR+KKN8kiyVyYmoD7q34SThRGyZTXSfWPtJDlkKphgaum0Tp6npuSGp6SzT+HvJ5gWXREE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgXF7jfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgXF7jfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD0FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768578233;
	bh=ECxpIChloQz1J3w1Zo7KDQFxP5rpqpktMvQnVrCZazQ=;
	h=To:Subject:From:Date:From;
	b=GgXF7jfosaXYAbO8eN0+35TsfcvoQ25H7tufHQQWOUgxcy9OvAcziCC8N+HsXhPVZ
	 LSJzH3Z9YN+l2zcEq2KkYURZ3qZLewLZgXAigUJsBpO8tBbptHQUQQcxNNmRmHemeB
	 2F048tI2E7oM0IR3wqAVS1u/HlOY2cMkDJRflvK3uTZ75+naCq7zGfoSETfpIvMCcH
	 7fZ9uNvy4375+0lybdYChbT8PN4nYK65d6uFdospxoW0nQn8fZsnsxEOlFfRQYdHvi
	 2gnl3YvcQE/JjzEvs/e8JJlwEpu/J6fwLfG+2zLqYY5EZAQ6QcvVXtc6+MfWCmqjki
	 /cm/ZGcz9kn4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F925C982D3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857823358.13423.4701803797232808820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c0ebcc2e84a475618d71b2736ee2746c1882c027ff4afcd8cd27d98ce6b9d7f
Date: Fri, 16 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768578233
