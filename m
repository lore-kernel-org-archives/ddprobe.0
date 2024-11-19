Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1161CDFA4
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732023354; cv=none; b=Q3kleWcUTJqVC0ovL19CUwMcsSkXkBNUhqbNwkzlIgJxi+hEVtY0eg01nqiXwzF22fGfItxWgFKUO8vXR/O4H7Oa4KhcoqlZ7gy66kZR1C560QoVbGAdFuX1GJCMf24j1EGqtLglveh0S47NsWu2oJJ2wLfYKx4qHktZjzRadOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732023354; c=relaxed/simple;
	bh=cLpdB1sAAmN5REk7ApNHcV6SJVbYXUkCL8fiJqS5TTQ=;
	h=To:Subject:From:Message-Id:Date; b=Lkz8tTnGgAAFJWzXh0lxnaVpZ9hu2of2X/Q+GRSGtVfUbHL4FaAnOLnKjizVJZWEHer16pyvVTXCvr/cr8D4Q8UxQS817rc3Pld46kwGCui+Gghn2nTuXNnL3Na80fmN1ryGG7XO7SFoFhen17qYjC8OCzL1GRwqHb8UrJIwSe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlpGySje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlpGySje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F1DC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732023353;
	bh=cLpdB1sAAmN5REk7ApNHcV6SJVbYXUkCL8fiJqS5TTQ=;
	h=To:Subject:From:Date:From;
	b=BlpGySjej3H03AfQMJgD0FUHbdk3TAZLp0jLWleaONvBX0bSMAHTmkiR1gmchFs8R
	 ATuq3Bs10lK3gnylz4WlgCHPSYPkFLS8PxakTzMSxXwa1lMASuCPj4fueg4FI2aB7N
	 yWcc5Ai5EXif15y5pG59l1LkXz5izXTw0qHK423DeC008lo6T3BM4JGOKZdNfbthmc
	 d8v3cGjV9IIKy/uDUTT3zRz6iW7ADlLr/YEnqo5uig/6WV2zBXTzMRDuo8Q4nDM6Hu
	 TcnXEVHQiGJz4mjyLp/reECc9QiKZutNIT2rAP4oooLxoXPurv6+yEdD04YJHfCl8D
	 m4MzDinWO+acw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E8ED4415E
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173202335359.28848.6050249031135195641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21bee1054abbd81ff7cbd6a4d0505e411e00e293dbe92a0fe193b0fa04699bdb
Date: Tue, 19 Nov 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732023353
