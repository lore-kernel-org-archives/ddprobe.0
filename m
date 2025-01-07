Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316A4137C2A
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736293554; cv=none; b=XA85r0dX7DkkUAWxTzWsuSOdAlZBtDo8KitgJVWpEhEVil/FHynM+utFcYkMC+SOI3XbTq6aDNybvM/2faoP+wqeQq5UaJp5Dv9avmXUYhKFLbl6qQMbtd9ZaC7gehH6mHuGe01bJxT3MaEweNf1jyaMAJHjFuzWALRYkuh1gZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736293554; c=relaxed/simple;
	bh=tD8lpRY0sfCiRcr7iSFP6XPc5mKdxBpL6adoJJIUBlc=;
	h=To:Subject:From:Message-Id:Date; b=qs2hKsCCLdB+uvWoPZM6XENldZdOSbeZ6OaDpTL8uR1XptSyJcDrm8PdeOTtS9w5Hf72A69n9QlovbUqaSnuBMwkvaSqrFZpVXVVNyBPE2AfWob3Assx5QPDICtgSUM8nVM0CLV19TM7iXd+VTc1on5eaKmXXjusnd6oUJeqzok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQ3PwvLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQ3PwvLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE27AC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736293553;
	bh=tD8lpRY0sfCiRcr7iSFP6XPc5mKdxBpL6adoJJIUBlc=;
	h=To:Subject:From:Date:From;
	b=GQ3PwvLu3nCXDU1gjH0Mi3oow9BYqFyC04ep+XAc9s7bTwqfUWmXSiL1WV59xDlQY
	 qeD1QGY0fdlLZ7CJNamAp7AxszL+0ilujVohl22uRMVuX+Iyp4rjHbsPM6ZdUUXysz
	 y+ONBs2ByIs8ozMXzHvu2IgZcyH8xTclt6Y0hm8ABzaY3S8evBgDEbmZbQ5PbQWuHv
	 MGYO8aMBCThxO7WiCEUUkDn61bAg7nUcDgSKfuOYSN+YmZ91l7mP1QkE/bKmkL2Y1Y
	 +2a7Ro49+4AwUMDtMC56/Y3Z3THvYZNkWGrMejn/ATI8PxRWPmD3gkeDspIlayGX2u
	 XnBYZMKkxjaGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8D6E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173629355359.13442.10099587607616329915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726067e5981d517a6772e092f231d6f7b68f822af589b8c65e915c03dae5f2e2
Date: Tue, 07 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736293553
