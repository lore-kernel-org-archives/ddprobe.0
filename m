Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BACE63B9
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763175594; cv=none; b=TxCU4uwrAqUQV3+CVkSOClioubtKJmhSdY2aoCU7HC4XOvt6tTT4NO0vUaAPzLrJVtxGJk9EE3twmDeAUNeopBdwtyco6P18Nk49NQ45RQmJFVxq/bicN4DsYvuy2kuzmzn2eagEZFGC+PRgQ/VBrnOlkVVmfZamsPjsweLsFU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763175594; c=relaxed/simple;
	bh=ETXfevZQ1fB0+uw6K18Ij8tE7L/CfTJU8Vy09Fh3cDQ=;
	h=To:Subject:From:Message-Id:Date; b=LT8bOUDFJC2hj9BDkrpvsZQEwll0zKz2RX0JAmFTuQwupikraxeHlHzciUir0xx/m4wJYYmZwxFpcPUzfHaZrQnfUAO0dgVgimDIr/Xn3NzWMqJtR3+sjFED2iQya24hrnzg2uJoB5xSn7uxOufyg+kYRXbh+6d8gQhI20GoNMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKYEgv1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKYEgv1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1C3C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763175593;
	bh=ETXfevZQ1fB0+uw6K18Ij8tE7L/CfTJU8Vy09Fh3cDQ=;
	h=To:Subject:From:Date:From;
	b=cKYEgv1yLhsVng21uVmgMZS4aUVprq/u7lursP5b7fxsO2CcK0AuJl2ydNFHYlQln
	 5PqmsRByv+20kgmoceNiqPSrGZAWutzJfbKhsKxgitZnVN0alqwQAlpd9vo52C0ev1
	 lSI21Z9G6BbJCEtzeMfDXOhCpxrsJvM5IabL6p33mVd+shG6geu3XMsGORrH1z9IZ1
	 c8BhSdsTvTjgCnkpCVOwLH2YXPMFHGJ6Ir9/yIhqtLQIKJQikHTV1QFUZhnC6U9Pfy
	 7j3GYIMkqIY5ZbTop7D9j7jEoOayStBlomw7XIHyn6L7p6ENQZcM+YNiHFQDURsKKb
	 Tuvu/YtLQ6uww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F5CE8D7A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317559358.28758.868645945040873283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 430dcc9c669eb88697575d2468cd42163b5af7869608b6d47d29529d9497149b
Date: Sat, 15 Nov 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763175593
