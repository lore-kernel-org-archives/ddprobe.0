Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38916327A1C
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757948994; cv=none; b=lMI0Tj2qvzj7tUIpqwrf32deVotxJ/J0oYYHmOGsal3wjQN7+NsQhr3G5JCP28/AdJ3jvpEHArcRAXZnfzeCYikATUftkxT6/MOCcAQJYiZ9jpJ2uxn48AwRNmm966qeBz9W22l7J6UmpL0bFu8H0PjSLCR8eoqd8B6qzmIPfMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757948994; c=relaxed/simple;
	bh=nU3lOuuTquKC7uOzDhjrKIsvI6cWrqLXTPmzuPX+ChM=;
	h=To:Subject:From:Message-Id:Date; b=fg3J6cvzP9fOOqLyOA8x9ofPqqUQKFEScl4BnW7Iiifp+pbn+SXW8quJu/br4SRHI8IrYaIdBEGbmZbf7duQdHj1CwIXjg/upykgiJaOZJA6xc4zafiuKCTxFs/f4Fse8hDeqK1jvTriIdEtxJXMtSSYJg+PwTVczAGyCZaYuI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ho6fyolk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ho6fyolk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A054FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757948993;
	bh=nU3lOuuTquKC7uOzDhjrKIsvI6cWrqLXTPmzuPX+ChM=;
	h=To:Subject:From:Date:From;
	b=ho6fyolkyx9H9R8g7tVRWfoPOyNH/JoQxykpn0SyYDGv6cXt0PsVrh3AvWUL4shmv
	 K8igbJc0X0PhXIY//rgIYZP1niBlK4nwsg8WAn/bl3DhETgbCT+CfuVRE1l4dIstAH
	 1jYoZ0Xj3JkBtQtfmvn8RGB2f9DaHmi9p3PktvA6pilwOmjhr5FZqM9KBqEUwZKUod
	 +jkdTVVVneKifGtVNqP6/HDI5UepLEeehcRsCXTCEG8f7xWXqiS2uvWA9loHselqxW
	 QzfwhJSt/2WewlGWIvqWYk2UDOyZwCuYKklDHTRZu9YOsrBSJGXE1EvdvfPdi/h54w
	 0u6xH4AALBCLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC4ACAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794899357.18221.3784709698790529402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d0a903cdb3a030a565b82c4becb25f4a03f1603baa16c37759e5b32a4162609
Date: Mon, 15 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757948993
