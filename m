Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C4A195FE8
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765087374; cv=none; b=kUO+8Upytenh1KAgncrRkJ02vCKfRqONxljecCVS01Gu496y4r1DpFk0CMgYAQL0tRUms8A8cRq9l5LWRbXQ+55pNlvgAbaNDk6aA2Ct2hRRpzLyOidFrafOKFXl14+ZOuc7XnK0845me9koEGs/MWVHgP5Kqe7reLDMI7N61JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765087374; c=relaxed/simple;
	bh=MHa7mkZHiP9uQOrfZy/+L8zk/FTUegzqhezKuEi8G/I=;
	h=To:Subject:From:Message-Id:Date; b=dazm8T9BiVuVYYq8IpAQCa0aXgQfXfiZGu+LBG+bVBRYzVqfMKzLP4mz5mMtihnoMXTow0JPwyKPkOWjWxXf7UIOJFexZ4nPhHLG5jthe0F6nGwLQsIARUnlb2Oq8xqI6dCogs1IyU4AgbnTfeKuHiTZKUaivDc+mrxAQDmvgwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poMSBv8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poMSBv8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89DEC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765087373;
	bh=MHa7mkZHiP9uQOrfZy/+L8zk/FTUegzqhezKuEi8G/I=;
	h=To:Subject:From:Date:From;
	b=poMSBv8U7z9Po2or6lcUOtTX4SZLOZ4CbtOr3xPNAjx/yP6VytvxoyrJayVCBM59U
	 hVrl0kZ3m4EEIHzgtFYRaxFXVEtMUT9p+vu/DZM3QCjsVPpx6AXVKkTldn/WvyD1zm
	 IsFodRwhZIBx+amtcZ/9waCBpwvF3oP0BaJnJ07+LB/JY3u/boiq3IyWSHjvRBogNn
	 TGB0DB6z1mxwXTsjKiI8SXGI7eVkS8U3N9djv6EV/j2L7c2UzN7+LQGQ2f5kuBLyfY
	 cyuKvovultXrpxOBqBi0FB9nEWQ+g5lOxV1wpceNkLRGohal7BkrZZNrM8uAqKwyqZ
	 XuZvWatQeZcxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93197D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508737358.15825.15840855371250793685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24a2327101f4d8bc98ade85ae20e1fbb73d18b0d6dffeb2a15d785d4d6d0fef5
Date: Sun, 07 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765087373
