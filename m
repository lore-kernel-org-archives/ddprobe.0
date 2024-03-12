Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFD2A382
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710277097; cv=none; b=GiFIsCZJTNPOGpIr/5UaOP/PhLBGXdXQqFaD+nvloX16CSBKEWIulLqQGyobxQw63fa8GYOEqunpLUzHHy1/6IFJ53WHeALorN3YdfsQL+sfHNR/hE5Hd+VRZlEodTChS20BG8ML1eB/A6fOOcVVlfBflBifL8Pea7j2Eq0gZKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710277097; c=relaxed/simple;
	bh=tH6L5oF1UZw9Aj3zSJUToovGMf5oDKuRU2aXzxREUhs=;
	h=To:Subject:From:Message-Id:Date; b=Ma7tIHlHBhKxk3AHxjWEJx+z6TKrawRsPsyZj5K2OYIe8umFqbQLd33jVRwuMbejNRkn+a4HcagYnLb8fIuZYCSIoAPvuGhstwGySC8iXCaspVg8NX/u/qYUd90elofGvqU698Ws/eJVSAakogcUjvWA5cneLE7HJgEbeEVTZ9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOVpcnl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOVpcnl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87BCEC433F1
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710277096;
	bh=tH6L5oF1UZw9Aj3zSJUToovGMf5oDKuRU2aXzxREUhs=;
	h=To:Subject:From:Date:From;
	b=jOVpcnl1QIzLdz5s5bVUvmLcMQgzU4jh0UUoW/PEuZ7qrMx1cabThWMqJklPl8k9J
	 LkzIS+Fm7RjrFD7S41r9ibH5YviQzfflmwIqq46cYQDCWN+D/lPJaQWddB0AHHRSXm
	 /+O4/JyuaXK/UlCrG/Kl3zZMLuAxkNh9YEQVNYnSWgyanhhLhmYXhcjjnybH3f8bnb
	 Gpu8qWtk2b66KMK14ZEFrJIA1aeeYREVv6zvqczAPx3WFIjncfTOLepcuUbVl1nGug
	 5N2+Crem5LMpk4LYtK+wl4z8gE/QHzJDpboQeJ82B8jXt8WEGpz08aw3s0VrO6XGuY
	 mohunHz4Y6KTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 689A8C54E58
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171027709639.379.16698663771177378466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d61e8991e54fbfaae6960c150eb5bb283a216d66eb6734e306cfcdca35fcb33
Date: Tue, 12 Mar 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710277096
