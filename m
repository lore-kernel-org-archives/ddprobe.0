Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DD073477
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743569994; cv=none; b=TViv7Wl7IPxOKW059+zOSkgccuHwaR30iqLMhZouYURVVYuDlCC7zwst787WRPAUXG0tMmwRL1nGrmXOCqVyI6VNHa3AVzfbinVuyIrTLiuOoK2GV7jGQfmB2ZZAHgOvWBRi2guaoP5xbcdu8wH2IT8s9SYQx45cQl1N3UdLHeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743569994; c=relaxed/simple;
	bh=qSoXVpPhkL3+RgC7YE2nh26EfNCW9A/PF1K5VC29TTI=;
	h=To:Subject:From:Message-Id:Date; b=QToSP32Rxl0OkDaDPLk+O2CF50TvKdg4c8npW/lviPIpJKkO4GII2AP1IOYVGtEjUAhGc6VR+N89Al3w5/0do5gzsXx0QavKsUkeHsgxzKy9d9R77Lfai/1WhRQyNEoIaoFtPxzLeReVE97n0EeH0wj5iqC0RU2iJhIJn0l7PhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cltKwtgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cltKwtgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8192C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743569993;
	bh=qSoXVpPhkL3+RgC7YE2nh26EfNCW9A/PF1K5VC29TTI=;
	h=To:Subject:From:Date:From;
	b=cltKwtgdS8K/VZiaOSjXRkNdRf9grDkHuxv05DudxIRuye7S17naoPmWcTr+wXSl8
	 uMjP3IDUJzDVeZ47M81bkLsv/BwOH9tNAHZgzPCk2GNA1p6a7VJVaTQQowmwlyBdAk
	 M3r+CfVa2wg9wgF8GZzcRIUlTvQj4csZjxsyfQTE/p+Zb0T95ySDIMf8soofA2XL8k
	 Bu8gXS9MS1ReAl0WBYpxSqAgYQIdzjNgsUyDaSyyXbZYGP4L3ySwwCzW15jE6oLqV6
	 fXJJd5uSvOIURALbDj6QN31R7NjFGicEPQVsZSx/NegONoZNv1QBY5wCnowFfQNQ5o
	 rUxfdGy23I2sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1096C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174356999365.15871.4460452609170552915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34271d77546c202ff84208dccf12fb4047da5e8ec9bbd5bdfb160a527e65c680
Date: Wed, 02 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743569993
