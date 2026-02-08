Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10B722A7E4
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770515634; cv=none; b=h3LEqm+u008t3ahVmqKzlOLlTQ35WN+k7C/2sby6ktbGJHPXu1XB44hu8qW/HpDX03/2DkglDp0dwacJyF0geazCuybT0bpsjEa5xb4YbOcGtpqiO7XhPgg/+qHXf8pYBI1lYBI5Q0/SXJMqYuuc09i3mzMIcUZf5Fr5TmKam3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770515634; c=relaxed/simple;
	bh=fXy1ksGbsFIs+VuK97Ar/8GwN3eRmg8dFcQHWwmEV3I=;
	h=To:Subject:From:Message-Id:Date; b=Mx+PhCZ2HkE3gyUCUFNH1v02kfasICI+FjU5+cVX5Mwm+P++uxFdsYeLPG1jmXmLeO3g0a8/SSnyKFyI9pywbs8qNyhtG1gx6D41abn7wIdRmbIcVCHk68u9dPbmb9vRvU9IQOBjYo7j6WBR+oPOoAPa9mhldO+aZ7cb6RdWE+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKER7SO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKER7SO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3862C116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770515633;
	bh=fXy1ksGbsFIs+VuK97Ar/8GwN3eRmg8dFcQHWwmEV3I=;
	h=To:Subject:From:Date:From;
	b=uKER7SO+UU2x3KGZvOpjEVIrZ7xomKpDwES+s3hlSisVdLN4rxdjuDgI6qt1H0NcS
	 C8QfzOKe/+bqzrIqMJVat6PNsVwZp/CVjgeDStFvn9hvG4+F0BewqUpqIUNuePWZY4
	 V7gG3gzOBBcXjp9rSsYlakP6gm5fM3lUgdoU/XpfPHZliCPdKxdRLGQMKXrXmAyl+2
	 NvEDmgNJCAsHu5IO+r9FgaKUD7MIQt7PauMHerrEvpAYyIkcriHyNn0SJeTuKb79PN
	 WXxDyv6RchCwM0hWvZAXAWQmjMOdW79i9nIeyOqLt85Sl8zKf70yxjWNy34+g+13ia
	 K8a1pADnZByJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B898EF06E1
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051563361.10016.5548316952881876317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1943b3c7de2542a7513ad2582da1bf1ade7bfadc10b6e3f6371cff785b606a7
Date: Sun, 08 Feb 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770515633
