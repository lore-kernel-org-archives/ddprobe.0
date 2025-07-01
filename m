Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8C919AD89
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751390994; cv=none; b=PXZ9Zb9w/SJFsX52bHht21Z0YfnWqkhdqq9Ds68PbaZ4Fi9yZy0DSHUnMdXmJh3Y+L+WIbWJDm7QWe2V2gnKa5wxKshowq1vtK2koq5NxPXMTM1Tzpiu1k2rEV8HzGOSuOKtQxK7VWYPxawaMA6E25e27sHceIgbpyiozVEnNQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751390994; c=relaxed/simple;
	bh=3L7njpyuntOs+ZC0gyxX17v0wwEiLe4ayuBjA5T5224=;
	h=To:Subject:From:Message-Id:Date; b=mTMQQfqOILMgeAg4yeph3+SzDEO8E8xkN/nm4wPsZxFjrwz30aToFs4z4/sgks9bF7v1Kl4aXmKeAJbR39dgP2GP4Q5QnV6MmYhtRXo80V72NGcjkT9d9OeZeZhObo0/usmG9YCx58bD7EAw7fYHK+9EcAZcAIoB8Qa4Ju9iRaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMPChLjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMPChLjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA194C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751390993;
	bh=3L7njpyuntOs+ZC0gyxX17v0wwEiLe4ayuBjA5T5224=;
	h=To:Subject:From:Date:From;
	b=vMPChLjRblSKPisNBT8bYKyfQ7D7Oj9HxyszGSvnWe9K6QvP1djwU1Zv+1AxqRrz4
	 1eel9Edwvv9mJt70H8tsCXxyecivzrVoMGh2Cbr2G1qAsHGIjQ6N+vp6GmWOdywsw8
	 Li4IMQYY5K+aYAgvjvmvqBUDsqnsZJ//3ViD0Rw6N0S7iS5gnOKx5a7rdlbDjbBfN/
	 oMaTsP+jywdWWQd13ezaCNDzIW1Uv0bPjMLf+OJOua7geliNYKeX1kPikZEZ6YZatM
	 aWIjAqSg0m9wBz0RQgxJs2caYmrxsrk2Ni6Qg8WlPY1WUPawTIO6v78aPGLgsOZAVL
	 gZ98BjXhPdZ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F69C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139099358.32309.6139034839397067684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dfaf29acfb9cf4cc8dfd827c480e1ad0cd28fbda982419e835e1f0ed0c4966a
Date: Tue, 01 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751390993
