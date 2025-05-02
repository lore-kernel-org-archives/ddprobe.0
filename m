Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21519EC4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746144594; cv=none; b=aKRx/ef/9loOMAlBzumFoiAuKHKD00ClnT5+wLblQ1KWjFusdGzu40kiH2wphL6HV/LPRwKkjZc4LlaGEYrLdc8dOlUeA5kw1v8mcGqIQL6ErV11Chkn7qgo/IJLyjnyM9auyEJdSn2MaDUvEKnRq68qyW6QH8WYSlMs1DLwQi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746144594; c=relaxed/simple;
	bh=AkLMYxeWilYxnOIXjjzgbSd9/fKr2p14b8GTkuQ99jk=;
	h=To:Subject:From:Message-Id:Date; b=Mv/wj80+eTzVZMqBVZpBvQVFOMrYOyYs8cmM/MhwCifSZPR1mfZNoA/E62b0OQ8/mAFBlo48emqFAjfQmZHYYxgLRP1HuCAc63TqRcAKS9YgA+QSirDUSI59ampHm1hmsZankt9nWEWE8hOZ/YfcECB9rNpjQJzP1LWZ/LRNfLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwP0zXww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwP0zXww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDE9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746144593;
	bh=AkLMYxeWilYxnOIXjjzgbSd9/fKr2p14b8GTkuQ99jk=;
	h=To:Subject:From:Date:From;
	b=OwP0zXwwNLtB5pfdhFB2gTJ2ddwbnX6ZNLyQo6fIE8tqyPuno/97r/Y83CS+HuUwj
	 ZhPybOP0gWhWHZzk5rHAhR5aucuzbrpah2E0WDEsdX/C24HLYO0Po79KeqVrefPJ0i
	 qwbxyyEUkL6P7c/KxPBPd88Gn/D7HIEqI4OAMH/Acyf3TU7PluObRPomooUKc4rGdR
	 zlYm8m1rm4N3QqNWRirJ5f+HO3mSo4aXd8NHZHBv5N4oRmy1YfCHkINsaiOzswE2FF
	 NvLdG8viU53jsXAeNOVbFa3iYTFHDxvYVYsUAbwYQUIiMCmb1pJiQl4HlqqYLz87W3
	 nuMsvRAxTHYpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA77C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614459357.11598.2273737459960943136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9595adf5ce81ab6150ae5a35100ca353adb880b731208f2a920b64b90f6096bb
Date: Fri, 02 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746144593
