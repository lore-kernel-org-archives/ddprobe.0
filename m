Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4639022A4DA
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752277794; cv=none; b=tSWgUAof+4Tf9I/3lZBgANckJZniKLcEFIMtIUpDi2C34YmrWMJEjzFJuIzgm5qGYLxEYyUhlWSPSqDXf2L0sym1uY/x1o1veIIg+tFm20279rAnfNVY7obdQqHd+X/7SuFYKgwuw8FinuPcR8hEjtvTdifOt1+Nz6leWNhI2GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752277794; c=relaxed/simple;
	bh=ztPYjDVWi5ksoWJLvKXL1HCYA30yut07cLZpvDpY9B8=;
	h=To:Subject:From:Message-Id:Date; b=LGZTV7nD8wH1siKOabtanL9KmXOjEcNYEmJrjFLPLKFZkLNT0g0GLFZguqWq/y61j/Lf5i5cBHPM5xvF0UK0lB1gwpGXjIeadpJTc7Q2cqxg0zNNXt4dAMJS7NiCbnDGQjlxtAqQgFtKzpiW/WPI5TslobQ21RvJmd37vzbx8W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1ktSoXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1ktSoXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEE2C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752277793;
	bh=ztPYjDVWi5ksoWJLvKXL1HCYA30yut07cLZpvDpY9B8=;
	h=To:Subject:From:Date:From;
	b=X1ktSoXlAaX5KBqSMzMD7fImSyfpJM9HaZl+OY2jv4Vmt9NQVHyLhh89XuSskh82Q
	 n31mzr2Xcz0WEpXbnfLhkGjZkZSJMckEnN32LzJQKc9o44B7TErUrcKB1Hm+bOd8ti
	 Q1ocLdVVGoh0LYnMsNK+2zvi6MMDM3KUkBj4LH0ZkOvJQ0jazbiNek42aRw6mrO7UA
	 7Xeog7iYFlPVEd4GFe9IHX3HUxNMUbyTo5Vkl27d/Gy87B4pi4Kh4J0YWG2Tbe6QBe
	 QMjx1TkiFug/nat+R6WClABnElxRpCQC5uLZlJD5Wsuba7OudDG91FzUwuXm7IaPSS
	 o8V5D/ee3w9qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98225C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227779360.15918.17291287821583710886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4b0eb8ed895830975815b1fd54f7bbb927d00157f339cfb87ab9c793680fef
Date: Fri, 11 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752277793
