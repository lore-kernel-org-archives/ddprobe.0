Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5C71946B8
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738107954; cv=none; b=bbWHOfQA+aMPcB2my9E+8bVTuugMAp5ERffSsrCYZLEEVzjo8tq0avkG7WEk7c4rRs2xHl7idZ5VQgcRqgzZS2YXRXRSaNr1SLjzySE74VFDxcSGo5OqSF8mXRvkb6LJMei70LQbX/F8oHYfaGyj/m4GtsQRF4m4YOllWQs7P7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738107954; c=relaxed/simple;
	bh=y3Vl/u+6wG8snqO9Cp1pxfGBooA1svm7qvxONxuOV18=;
	h=To:Subject:From:Message-Id:Date; b=MYQXm2C62mCznnNgt7v80x9iE4rgHLfQg/+eYd7BOGMsLfY4a4TT4M/x/ZswaLwQbnkbS80//gYhztcaMWBTTixHvz06sD2v7gOUvdG5FCbBAz9ifiabSWdH9ABAri11Sv+mR9MQVYqWCJ9ll2T80QPmqomgnlQrMgY1XL9KviM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btVWqwqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btVWqwqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9288C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738107953;
	bh=y3Vl/u+6wG8snqO9Cp1pxfGBooA1svm7qvxONxuOV18=;
	h=To:Subject:From:Date:From;
	b=btVWqwqKEljuY40t1KPLKQh9bkWTUOpm8HOd8IPMS83EmyPT/K4iI6V0CZ/H4K5QO
	 oMPv6iPuUk6hsX8cmKJ13mmDfROQoztvhlu09Ic1RLqMylOlt0anexWnrvWjIaHYGD
	 QOZmvdnXMJtv9MAA8STvAikjVrBYMDTCH/8G+FrKKVnrc5CFEA18c4B72aMBt76IhZ
	 p6s+337N6KF0ILwRwCsrGsFf9vZhGyASxFA/IzmDkSjACVLsB38Xg3x59bzK5wnien
	 RkBXX9uG+kUb71YrpzTajh8hhJU/HJm0coUvdJuBhwgDrdJQthEdMCxffiHGeL4CYB
	 0ijaqJznCaFew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BB6C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173810795359.28203.11731754742150537424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 488c09980e7b1235d9fe35004521cc9ba38a5b4166dba3a221b5b76e65b74495
Date: Tue, 28 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738107953
