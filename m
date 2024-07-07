Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8633979CD
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720335383; cv=none; b=PHp64j4Wx6DvG0RKxaFcqPm9PJl/cJYeg4v98OJFQhgPhbAzc62/Os2CnlB4gDKCdN31JKnWfNu6AWE1AFlolhPxGkMVpYz4frXh6v9ynEdHSHTSqTWmTHHUVM4/LoEobARHPh4z5/lA6njO45OTC//z4gfLwKIPoNTuyXzPHis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720335383; c=relaxed/simple;
	bh=yptvkF6ZSU4/Pp1EKLM5lLAb4bgeLHVrMRsV2JUZIxY=;
	h=To:Subject:From:Message-Id:Date; b=SUj0GHQYWOZgZVWZ/hUoGBlNJ9QlVCOQjLc4vtWsl47SbTQCXv54Kq2PB8YjbyFVl1LzCPXgG+U27dRn7MzXNZUg0xXMwsPtJ7Fht4rKF6roy35f3to6JG833wBBrL4T8hDiD9gCCiJkdJ6ddmewdHTPUr9ddUNDiQbADEOpUJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSmMxzff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSmMxzff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE81DC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720335382;
	bh=yptvkF6ZSU4/Pp1EKLM5lLAb4bgeLHVrMRsV2JUZIxY=;
	h=To:Subject:From:Date:From;
	b=SSmMxzffzAw5AeM6IJBkUS3sb+cxkM9ufkunmZryXvNwlWntsCgYMGkVVY8/Algpe
	 NncT5Ug41jGqWSIj16Dw3giK7gv9Ekp/e2a74oi9iKO6qaLib20sMBUFqZExSlWgiE
	 CGI4qmVeBW+1RaGXCPK+Lpq9cyRzLjA9a2qCPH1CMh+kKM37cH8IaMDJp+lxVvcMTT
	 M25CvDkQ8NKQJRTtL7wjyl3m7fXoK7eZ/t9QNMQkURbn4ZYPefytyxAdCWtS57tLBU
	 Hu0W83K0K/HAeUgmqEZJm1M9a+30jM9zGAD0yfoop3qGxmpbwiPMqUufj9Fd+d1evy
	 WLRDVWD2w3Yqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B67C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033538279.3290.5883384418369573855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36fd9489aca489fed17efd2249819c82dc29c384ee8f8559d22de9361d6c830c
Date: Sun, 07 Jul 2024 06:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720335382
