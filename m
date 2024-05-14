Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C9410949
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 07:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715672543; cv=none; b=FVV+/K0y24KS1QRmm/vam3O52ye7HMkqjYmFYjg0UhkEHwuHKxVEBff5RzDBplnaxjr5KktYF2sQOA3ciLHy2bgs3MqEVIMQfFMg3mSESGDwrJA4ZomK7rtG3wtluR0LPcz672OdeInLSAeU8GQ0OzblxUVHNsFqm0HK7gvaEpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715672543; c=relaxed/simple;
	bh=/9sL8SpzQx9Shgea8hD1uAA+MS6gxf+C14PlTvo9RWk=;
	h=To:Subject:From:Message-Id:Date; b=npVWa7aechw907C9jTofFNTFsBwYNQeucC2wIA5NOph2EdLKx4a3cw4Vd251Emlbi6Q4eCauAOeJZAvz8HvqjLaYZ2LpMjO3PLI1xl/ST1RZ9l3TWX3Qh9dhgwokA9tpzsc5KMVWWFrIyupHgGOwuK4XOBqfAISwXQGq077od1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9AKReDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9AKReDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E44C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715672542;
	bh=/9sL8SpzQx9Shgea8hD1uAA+MS6gxf+C14PlTvo9RWk=;
	h=To:Subject:From:Date:From;
	b=W9AKReDa2zw1IcmjI1fNVUs/VZe/qd+EqRZF3qVgcxfpax8SCEmPRPH49aIPlRH2q
	 EpELUEsG1ZkLRGyQt00n7h2+dMqG1JIV6XRlxGMVc9ARanxm9lStKRTTP81VFFDhek
	 7z5nOyB8g5Vj/UfR4aGCzLQWEGb4CvJKYgj9xpjgNdtPwgn7JItTOwVBTvxhJ6mpbs
	 yzXRQMdGelz5RxsGpfM4uNBYZi8PI82pSsoDaWMAmwJBG61flkQ12AG9Bf/30zpeRe
	 1xoPB2wms/UcAUIIEZLDP+eyK7RkIQ0lsPhsg5lqxNowuwzy5zFr+EaKLXmIJ6LAup
	 E9qxm27gopT9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE312C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171567254277.8845.15155301263172488633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea5e618d04a3fc1981310ce1789291a123fa2c6b3d3ddc9900dbb7a345a97be
Date: Tue, 14 May 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715672542
