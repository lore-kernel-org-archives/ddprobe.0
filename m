Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405F41EFF81
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748102994; cv=none; b=Oix4BeCtUQ0wY+DZqwmeAR8FZ771UQ4PkacJFQfobujcvHZsRLqipmlHFirUgk1vUOYMAK2L0AGBhH0ZYCvG/QCIK+E5CVLCAbMNkeEcMxUhzwfwYQsOW9Tlx/scrJiT0d4cZ6KIWB/tFl6SIusBIwcAwBA38/dqUIuIs4FhEcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748102994; c=relaxed/simple;
	bh=RMaqVpuFbxlOmorNkmFm4J4m5L8ps0hXRANn+l5zGKw=;
	h=To:Subject:From:Message-Id:Date; b=HPT1ZPe/LMJOAjqUI/6YO6tMe3w1Bao1d75L+ekB9yAu5xN2B8QZIyIiqc+51HOHpXJkuF9Xa7CkZLTvNKHLfkuiXp3mgP1EKQZgykdh2RQKo4UUbyxq/EZbd6Qf2QMj/1WgkBN3GW/5PMqfa/4l3lyyTX4kgXAz/6U85m1stns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcMjy5pL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcMjy5pL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B71C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748102993;
	bh=RMaqVpuFbxlOmorNkmFm4J4m5L8ps0hXRANn+l5zGKw=;
	h=To:Subject:From:Date:From;
	b=TcMjy5pLrBgCMz7IcahiHhNBEUzo/zeReGec4pxdUeGOd4sa6ubcACjpMHw7hDASc
	 f8+ZJv9R0xN0tdbkVl0enlhJUSSTkcNuWxUZH/gexcCA5LGmZn1Ot03ofs1S3nKbwo
	 5HPTYJBbLEkBSQhcC/UPL6n3ZBfPqfjvh5VYO07A0wNhKTTGUpWsBLkZIxHBpFLeWs
	 CI/xvRyCtIR5EGTky6aqLQkix3De/P8zJfp4LFkPabaHtHMP9gm4vzeXZGMukgQ1Ul
	 xOUv0pwUDXxhApBI/x2BPj1QixMvJzXV76iWJCyQqwIEfBSyoDWWnePMwAp9d5fBtp
	 lxuIxEdm38mYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9692AC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810299358.15695.15430978538822138087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de0e3afba074136e1ea05357aee253c91f627e9c40e4d3c20d055ef12158def
Date: Sat, 24 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748102993
